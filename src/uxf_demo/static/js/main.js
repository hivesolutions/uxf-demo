// Hive UX Framework
// Copyright (c) 2008-2016 Hive Solutions Lda.
//
// This file is part of Hive UX Framework.
//
// Hive UX Framework is free software: you can redistribute it and/or modify
// it under the terms of the Apache License as published by the Apache
// Foundation, either version 2.0 of the License, or (at your option) any
// later version.
//
// Hive UX Framework is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// Apache License for more details.
//
// You should have received a copy of the Apache License along with
// Hive UX Framework. If not, see <http://www.apache.org/licenses/>.

// __author__    = João Magalhães <joamag@hive.pt> & Marco Sousa <v-msousa@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2016 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

// the style to be used from the
// begining of the page loading
var INITIAL_STYLE = "omni-style";

(function(jQuery) {
    jQuery.fn.udemopixels = function(options) {
        var PIXEL_SPACING = 2;
        var VIRTUAL_PIXEL = 4;

        var BOARD_WIDTH = 160;
        var BOARD_HEIGHT = 60;
        
        var PIXEL_COLOR = "#cccccc";

        // retrieves the reference to the currently matched object
        // that is going to be used in the function
        var matchedObject = this;
        var canvas = jQuery(".pixels", matchedObject);
        if (canvas == null || canvas.length == 0) {
            return;
        }

        var _canvas = canvas[0];
        var context = _canvas.getContext("2d");
        var sprites = {};

        var init = function() {
            initCanvas();
        };

        var initCanvas = function() {
            window.requestAnimationFrame(drawCanvas);
        };

        var drawCanvas = function() {
            context.fillStyle = PIXEL_COLOR;
            context.clearRect(0, 0, _canvas.width, _canvas.height);

            var y = 0;
            for (var line = 0; line < BOARD_HEIGHT; line++) {
                y += PIXEL_SPACING;
                var x = 0;
                for (var column = 0; column < BOARD_WIDTH; column++) {
                    x += PIXEL_SPACING;
                    context.fillRect(x, y, VIRTUAL_PIXEL, VIRTUAL_PIXEL);
                    x += VIRTUAL_PIXEL;
                }
                y += VIRTUAL_PIXEL;
            }

            context.fillStyle = "#aaaaaa";

            for (var name in sprites) {
                var sprite = sprites[name];
                drawSpriteCanvas(name);
            }

            window.requestAnimationFrame(drawCanvas);
        };

        var drawSpriteCanvas = function(name) {
            /*
             * for each pixel of the sprite put the pixel color in canvas
             */
        };

        var putPixelCanvas = function(x, y, color) {
            var realX = x * (PIXEL_SPACING + VIRTUAL_PIXEL);
            var realY = y * (PIXEL_SPACING + VIRTUAL_PIXEL);
            context.fillStyle = color;
            context.fillRect(realX, realY, VIRTUAL_PIXEL, VIRTUAL_PIXEL);
        };

        var addSprite = function(name, x, y, width, height, data) {
            var sprite = {
                data: data,
                x: x,
                y: y,
                width: width,
                height: height
            };
            sprites[name] = sprite;
            return sprite;
        };

        var removeSprite = function(name) {
            delete sprites[name];
        };

        var moveSprite = function(name, x, y) {
            var sprite = sprites[name];
            sprite.x = x;
            sprite.y = y;
        };

        var sprite = addSprite("test", 100, 100, 100, 100);
        setTimeout(function() {
            moveSprite("test", 0, 0);
        }, 400);
        setTimeout(function() {
            moveSprite("test", 100, 0);
        }, 800);
        setTimeout(function() {
            moveSprite("test", 200, 0);
        }, 1200);
        setTimeout(function() {
            moveSprite("test", 300, 0);
        }, 1600);
        setTimeout(function() {
            moveSprite("test", 400, 100);
        }, 2000);
        setTimeout(function() {
            moveSprite("test", 500, 200);
        }, 2400);

        init();
    };

    jQuery.fn.udemosidemenu = function(options) {
        // retrieves the reference to the currently matched object
        // that is going to be used in the function
        var matchedObject = this;

        // retrieves the various elements that are going to be used
        // in the extension for event registration
        var _body = jQuery("body");
        var sections = jQuery("section", _body);
        var menu = jQuery(".side-menu", matchedObject);
        var menuButton = jQuery(".button-side-menu", matchedObject);
        var overlay = jQuery(".overlay", matchedObject);

        // creates the necessary elements for
        // the stack and the top stack item
        var stack = jQuery("<div class=\"stack\"></div>");
        var stackItem = jQuery("<div class=\"stack-item\"></div>");
        var linksContainer = jQuery("<ul class=\"links-container\"></ul>");
        stackItem.append(linksContainer);
        stack.append(stackItem);

        var _createSectionLink = function(id, name, target) {
            // if neither an id or a target and a
            // name are provided then does nothing
            if (!(id || target) || !name) {
                return;
            }

            // creates the link element with the name as text
            var sectionElement = jQuery("<li></li>");
            var sectionLink = jQuery("<a class=\"link\"></a>");
            sectionElement.append(sectionLink);
            sectionLink.text(name);

            // if no target is set then the section has no subsections
            // so the link should point to its corresponding element
            if (!target) {
                // adds smooth scrolling to the link and
                // takes into account the offset to the top
                sectionLink.attr("href", "#" + id);
                sectionLink.attr("data-duration", "500");
                sectionLink.attr("data-offset", "-42");
                sectionLink.uxlink();
            } else {
                // if there are subsections then the link should
                // point to a stack item that will list them
                sectionLink.addClass("stack-item-link");
                sectionLink.attr("data-target", "#" + target);
            }
            return sectionElement;
        };

        // iterates over the complete set of sections in
        // order to add a link to them in the side menu
        sections.each(function(index, element) {
            // retrieves the current element (section) in iteration
            // and uses it to retrieve its title value and subsections
            var _element = jQuery(this);
            var title = jQuery("> h1", _element);
            var subSections = jQuery(".sub-section", _element);

            // retrieves the identifier of the section from
            // its id attribute, the name as the text of the
            // title and the target id that may be used by
            // a subsection's stack item
            var id = _element.attr("id");
            var name = title.text();
            var hasSubSections = subSections && subSections.length > 0;
            var target = hasSubSections && "stack-item-" + id;

            // validates that both the id and the name of the section
            // are valid an in case they are not valid returns immediately
            // because there's nothing to be done in this iteration
            if (!id || !name) {
                return;
            }

            // creates the link element for the section
            var sectionElement = _createSectionLink(id, name, target);

            // appends the link to the stack item and
            // returns if there are no subsections
            linksContainer.append(sectionElement);
            if (!hasSubSections) {
                return;
            }

            // creates the element for the stack item
            // that will have this section's subsections
            var subStackItem = jQuery("<div class=\"stack-item\"></div>");
            subStackItem.attr("id", target);
            var subLinksContainer = jQuery("<ul class=\"links-container\"></ul>");

            // adds a button to pop the stack item
            var popButton = jQuery("<li class=\"button stack-pop-button\">Previous</li>");
            subLinksContainer.append(popButton);

            // iterates over the subsections to add their
            // respective link to the stack item
            subSections.each(function(index, element) {
                // retrieves the current element (subsection) in iteration
                // and uses it to retrieve its name and id
                var _element = jQuery(this);
                var title = jQuery("> h2", _element);
                var id = _element.attr("id");
                var name = title.text();

                // returns if one of the values is not set
                if (!id || !name) {
                    return;
                }

                // creates the link of the subsections
                // and adds it to the stack item
                var subSectionElement = _createSectionLink(id, name);
                subLinksContainer.append(subSectionElement);
            });

            // appends the subsection stack item to the stack
            subStackItem.append(subLinksContainer);
            stack.append(subStackItem);
        });

        // adds the stack to the side menu
        // and applies the stack plugin to it
        menu.append(stack);
        stack.uxstack();

        // registers for the click event on button
        menuButton.click(function() {
            menu.triggerHandler("show");
        });

        // hides the menu when
        // a menu link is clicked
        var menuLinks = jQuery(".link:not(.stack-item-link)", menu);
        menuLinks.click(function() {
            menu.triggerHandler("hide");
        });

        menu.bind("show", function() {
            // shows the menu with an overlay
            menu.addClass("open");
            _body.addClass("menu-open");

            // registers for the click event on
            // the overlay to close the menu
            overlay.one("click", function() {
                menu.triggerHandler("hide", [500]);
            });

            // registers for the post hide event on
            // overlay to be able to hide the menu
            // whenever the overlay is hidden
            overlay.one("post_hide", function() {
                menu.triggerHandler("hide", [500]);
            });

            // triggers the "initial" show operation/event
            // an ensures that the dark version of the overlay
            // is displayed to have the proper layout
            overlay.triggerHandler("show", [500, "dark"]);
        });

        // binds the hide event
        menu.bind("hide", function() {
            menu.removeClass("open");
            _body.removeClass("menu-open");
            overlay.triggerHandler("hide", [500]);
        });

        // returns the matched object to the caller function so
        // that it may be used in chained actions
        return matchedObject;
    };
})(jQuery);

(function(jQuery) {
    jQuery.fn.udemostacknavigation = function(options) {
        // retrieves the reference to the currently matched object
        // that is going to be used in the function
        var matchedObject = this;

        // retrieves the stack navigation buttons
        var itemButton = jQuery(".stack-item-link", matchedObject);
        var popButton = jQuery(".stack-pop-button", matchedObject);

        // registers for the click event on button
        itemButton.click(function(event) {
            var element = jQuery(this);

            // retrieves the parent stack
            // and pushes the target item
            var stack = element.parents(".stack");
            var stackTarget = element.attr("data-target");
            stackTarget = jQuery(stackTarget);
            stack.triggerHandler("push", [stackTarget]);
        });

        popButton.click(function() {
            var element = jQuery(this);
            var stack = element.parents(".stack");
            stack.triggerHandler("pop");
        });

        // returns the matched object to the caller function so
        // that it may be used in chained actions
        return matchedObject;
    };
})(jQuery);

(function(jQuery) {
    jQuery.fn.udemobutton = function(options) {
        // retrieves the reference to the currently matched object
        // that is going to be used in the function
        var matchedObject = this;

        // retrieves the various elements that are going to be used
        // in the extension for event registration
        var button = jQuery("#button", matchedObject);

        // registers for the click event on button
        button.click(function() {
            alert("Button Clicked");
        });

        // returns the matched object to the caller function so
        // that it may be used in chained actions
        return matchedObject;
    };
})(jQuery);

(function(jQuery) {
    jQuery.fn.udemoslider = function(options) {
        // retrieves the reference to the currently matched object
        // that is going to be used in the function
        var matchedObject = this;

        // retrieves the various elements that are going to be used
        // in the extension for event registration
        var sliderButton = jQuery("#button-slider", matchedObject);

        // registers for the click event for the slider
        // button so that the slidder can be triggered
        sliderButton.click(function() {
            // shows the slider
            var element = jQuery(this);
            var _body = element.parents("body");
            var slider = jQuery("#slider", _body);
            slider.uxslider("show");

            // scrolls to the slider
            var settings = {
                offset: -42
            };
            _body.uxscrollto("#slider", 500, settings);
        });

        // returns the matched object to the caller function so
        // that it may be used in chained actions
        return matchedObject;
    };
})(jQuery);

(function(jQuery) {
    jQuery.fn.udemoprogress = function(options) {
        // retrieves the reference to the currently matched object
        // that is going to be used in the function
        var matchedObject = this;

        // retrieves the various elements that are going to be used
        // in the extension for event registration
        var buttonProgress = jQuery("#button-progress", matchedObject);
        var progressBar = jQuery("#progress-bar-row", matchedObject);

        // registers for the click event on button progress
        buttonProgress.click(function() {
            // sets the initial percentage value
            var percentage = progressBar.attr("data-percentage") || "0";
            percentage = parseInt(percentage);

            var _updatePercentage = function() {
                // increments the percentage value
                percentage += 1;

                // in case the percentage overflows returns
                // immediately as there's nothing else
                // remaining to be done in this function
                if (percentage > 100) {
                    return;
                }

                // sets the new percentage in the progress bar
                progressBar.uxprogressbar("change", {
                    percentage: percentage
                });

                // sets a timeout to update the percentage
                setTimeout(_updatePercentage, 10);
            };

            // calls the initial update percentage
            _updatePercentage();
        });
        // returns the matched object to the caller function so
        // that it may be used in chained actions
        return matchedObject;
    };
})(jQuery);

(function(jQuery) {
    jQuery.fn.udemonotification = function(options) {
        // retrieves the reference to the currently matched object
        // that is going to be used in the function
        var matchedObject = this;

        // retrieves the various elements that are going to be used
        // in the extension for event registration
        var buttonNotification = jQuery("#button-notification", matchedObject);

        // registers for the click event on button notification
        buttonNotification.click(function() {
            jQuery("body").uxnotification({
                title: "Notification Test",
                message: "Don't read this dummy text, it's a waste of your time.",
                timeout: 50000
            });
        });

        // returns the matched object to the caller function so
        // that it may be used in chained actions
        return matchedObject;
    };
})(jQuery);

(function(jQuery) {
    jQuery.fn.udemo = function(options) {
        // retrieves the reference to the currently matched object
        // that is going to be used in the function
        var matchedObject = this;

        /**
         * Changes the current style to the style with the defined name.
         *
         * @param {String}
         *            The name of the style to be used for the current document.
         */
        var changeStyle = function(style) {
            // retrieves the reference to the body element and
            // uses it to retrieve the currently set style
            var _body = jQuery("body");
            var currentStyle = _body.data("style");

            // updates the style classes by removing the current
            // style's class and adding the new one
            currentStyle && _body.removeClass(currentStyle);
            _body.addClass(style);

            // updates the style reference in the body so that it
            // may retrieved latter if that's required
            _body.data("style", style);
        };

        // retrieves the various elements that are going to be used
        // in the extension for event registration
        var contents = matchedObject.filter("body");
        var links = jQuery(".container a:not(.tab-selector, .calendar-arrow)",
            matchedObject);
        var headers = jQuery("h1.line", matchedObject);
        var styleField = jQuery("#drop-field-style", matchedObject);
        var sections = jQuery("section", matchedObject);
        var search = jQuery("#search", matchedObject);
        var searchField = jQuery("> .drop-field", search);
        var searchSource = jQuery(".data-source", search);
        var searchItems = searchSource.data("items");

        // converts the complete set of links present in the container
        // into the appropriate layout and converts them into smooth
        // based links that already respect the offset to the top
        links.addClass("link");
        links.addClass("link-blue");
        links.attr("data-duration", "500");
        links.attr("data-offset", "-42");
        links.uxlink();

        // iterates over the complete set of sections in order to be able
        // to index them under the search items in the data source
        sections.each(function(index, element) {
            // retrieves the current element (section) in iteration
            // and uses it to retrieve its title value
            var _element = jQuery(this);
            var title = jQuery("> h1", _element);

            // retrieves the identifier of the section from the
            // the id attribute of it and the name of it as the
            // text of the title
            var id = _element.attr("id");
            var name = title.text();

            // validates that both the id and the name of the section
            // are valid an in case they are not valid returns immediately
            // because there's nothing to be done in iteration
            if (!id || !name) {
                return;
            }

            // creats the link value be prepending the cardinal value to
            // the idetifier of the section and uses it together with the
            // name of the section to create the item map and adds it to
            // the list of search items in the data source
            var link = "#" + id;
            searchItems.push({
                link: link,
                name: name
            });
        });

        // registers for the value selection changed in the style field
        // so that it's possible to change the style of the current page
        styleField.bind("value_select", function(event, value, valueLogic) {
            // retrieves the current style field that has just been
            // triggered and resets it to the original value (as expected)
            var element = jQuery(this);
            element.uxreset();

            // triggers a new alert window indicating the chaning of the
            // style and changes the style on confirmation
            alert("Changing value to <b>" + value + "</b>", function() {
                changeStyle(valueLogic);
            });
        });

        // registers for the show event in the search overlay panel
        // so that the text field is restored to the original value
        search.bind("shown", function() {
            var element = jQuery(this);
            var textField = jQuery(".text-field", element);
            textField.uxreset();
        });

        // registers for the value selection changed in the search field
        // in search field to be able to close the search field
        searchField.bind("value_select", function() {
            var element = jQuery(this);
            var search = element.parents("#search");
            search.triggerHandler("hide");
        });

        // registers for the click event in the complete set of headers
        // so that it's possible to toggle it's visibility
        headers.click(function() {
            var element = jQuery(this);
            var section = element.parents("section");
            var sectionContents = jQuery(".section-contents", section);
            var isVisible = sectionContents.is(":visible");
            if (isVisible) {
                sectionContents.slideUp(350);
            } else {
                sectionContents.slideDown(500);
            }
        });

        // runs the various domain specific extensions so that
        // all of the demo logic is correctly loaded
        matchedObject.udemosidemenu();
        matchedObject.udemobutton();
        matchedObject.udemoslider();
        matchedObject.udemoprogress();
        matchedObject.udemonotification();
        matchedObject.udemostacknavigation();
        matchedObject.udemopixels();

        // changes the style to the initial style so that the contents
        // of the current page are changed accordingly
        contents.length > 0 && changeStyle(INITIAL_STYLE);

        // returns the matched object to the caller function so
        // that it may be used in chained actions
        return matchedObject;
    };
})(jQuery);

(function(jQuery) {
    jQuery.fn.uapply = function(options) {
        // sets the jquery matched object
        var matchedObject = this;

        // applies the global demo plugin to the currently
        // matched object so that all the specific behaviour
        // of the demo is applied to it as a consequence
        matchedObject.udemo();
    };
})(jQuery);

jQuery(document).ready(function() {
    var _body = jQuery("body");
    _body.bind("applied", function(event, base) {
        base.uapply();
    });
});
