// Hive Colony Framework
// Copyright (C) 2008-2014 Hive Solutions Lda.
//
// This file is part of Hive Colony Framework.
//
// Hive Colony Framework is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Hive Colony Framework is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Hive Colony Framework. If not, see <http://www.gnu.org/licenses/>.

// __author__    = João Magalhães <joamag@hive.pt> & Marco Sousa <v-msousa@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2014 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

// the style to be used from the
// begining of the page loading
var INITIAL_STYLE = "omni-style";

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
    jQuery.fn.udemoprogress = function(options) {
        // retrieves the reference to the currently matched object
        // that is going to be used in the function
        var matchedObject = this;

        // retrieves the various elements that are going to be used
        // in the extension for event registration
        var buttonProgress = jQuery("#button-progress", matchedObject);

        // registers for the click event on button progress
        buttonProgress.click(function() {
                    // sets the initial percentage value
                    var percentage = 0;

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
                        jQuery("#progress-bar").uxprogressbar("change", {
                                    percentage : percentage
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
                title : "Notification Test",
                message : "Don't read this dummy text, it's a waste of your time.",
                timeout : 50000
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
                                link : link,
                                name : name
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
        matchedObject.udemobutton();
        matchedObject.udemoprogress();
        matchedObject.udemonotification();

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
