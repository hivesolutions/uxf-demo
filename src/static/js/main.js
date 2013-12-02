// Hive Colony Framework
// Copyright (C) 2008-2012 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2012 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

// the style to be used from the
// begining of the page loading
var INITIAL_STYLE = "omni-style";

jQuery(document).ready(function() {
            // runs the various component demos
            buttonDemo();

            // runs the pretty print
            prettyPrint();
        });

var buttonDemo = function() {
    // registers for the click event on button
    jQuery("#button").click(function() {
                alert("Button Clicked");
            });

    // registers for the click event on button confirm
    jQuery("#button-confirm").click(function() {
                confirm("Button Confirm Clicked");
            });

    // registers for the click event on button progress
    jQuery("#button-progress").click(function() {
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

    // registers for the click event on button notification
    jQuery("#button-notification").click(function() {
        jQuery("body").uxnotification({
                    title : "Notification Test",
                    message : "Don't read this dummy text, it's a waste of your time.",
                    timeout : 50000
                });
    });

    jQuery("#button-window").click(function() {
                jQuery("#window").uxwindow("show");
            });

    jQuery("#drop-field-style").bind("value_select",
            function(event, value, valueLogic) {
                alert("Changing value to <b>" + value + "</b>", function() {
                            changeStyle(valueLogic);
                        });
            });

    jQuery("#search > .drop-field").bind("value_select", function() {
                jQuery("#search").fadeOut(250);
                jQuery(".overlay").fadeOut(250);
            });

    // changes the style to the initial style
    changeStyle(INITIAL_STYLE);

    jQuery("#style-link").click(function() {
                jQuery.scrollTo("#style", 600);
            });
}

/**
 * Changes the current style to the style with the defined name.
 *
 * @param {String}
 *            The name of the style to be used for the current document.
 */
var changeStyle = function(style) {
    // retrieves the body
    var _body = jQuery("body");

    // retrieves the currently used style
    var currentStyle = _body.data("style");

    // updates the style classes in the body
    currentStyle && _body.removeClass(currentStyle);
    _body.addClass(style);

    // updates the style reference in the body
    _body.data("style", style);
}
