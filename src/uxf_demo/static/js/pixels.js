(function(jQuery) {
    jQuery.fn.upixels = function(options) {
        var PIXEL_SPACING = 2;
        var VIRTUAL_PIXEL = 4;

        var BOARD_WIDTH = 160;
        var BOARD_HEIGHT = 80;

        var BACKGROUND_COLOR = "#f8f8f8";
        var FOREGROUND_COLOR = "#4d4d4d";
        var TRANSPARENT_COLOR = "rgba(0, 0, 0, 0)";

        var FRAME_RATE = 20;
        var FRAME_DELAY = 1 / FRAME_RATE * 1000;

        // retrieves the reference to the currently matched object
        // that is going to be used in the function and uses it to
        // retrieves the context for execution/drawing
        var matchedObject = this;
        if (matchedObject == null || matchedObject.length == 0) {
            return;
        }
        var _canvas = matchedObject[0];
        var context = _canvas.getContext("2d");
        var sprites = {};

        var init = function() {
            initCanvas();
        };

        var bind = function() {
            matchedObject.bind("add", function(event, name, x, y, width, height, data) {
                addSprite(name, x, y, width, height, data);
            });

            matchedObject.bind("remove", function(event, name) {
                removeSprite(name);
            });

            matchedObject.bind("scale", function(event, name, scale) {
                scaleSprite(name, scale);
            });

            matchedObject.bind("move", function(event, name, x, y) {
                moveSprite(name, x, y);
            });
        };

        var initCanvas = function() {
            window.requestAnimationFrame(drawCanvas);
        };

        var drawCanvas = function(timestamp) {
            var next = matchedObject.data("next") || 0;
            if (timestamp < next) {
                window.requestAnimationFrame(drawCanvas);
                return;
            }

            context.fillStyle = BACKGROUND_COLOR;
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

            for (var name in sprites) {
                drawSpriteCanvas(name);
            }

            matchedObject.data("next", timestamp + FRAME_DELAY);
            window.requestAnimationFrame(drawCanvas);
        };

        var drawSpriteCanvas = function(name) {
            var sprite = sprites[name];
            for (var y = 0; y < sprite.height; y++) {
                for (var x = 0; x < sprite.width; x++) {
                    var color = sprite.data[y * sprite.width + x];
                    putPixelCanvas(sprite.x + x, sprite.y + y, color);
                }
            }
        };

        var putPixelCanvas = function(x, y, color) {
            var realX = x * (PIXEL_SPACING + VIRTUAL_PIXEL) + PIXEL_SPACING;
            var realY = y * (PIXEL_SPACING + VIRTUAL_PIXEL) + PIXEL_SPACING;
            color = color == 0 ? TRANSPARENT_COLOR : color;
            color = color == 1 ? FOREGROUND_COLOR : color;
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

        var scaleSprite = function(name, scale) {
            scale = scale || 1;
            var sprite = sprites[name];
            var data = [];
            for (var y = 0; y < sprite.height * scale; y++) {
                for (var x = 0; x < sprite.width * scale; x++) {
                    var originalX = Math.floor(x / scale);
                    var originalY = Math.floor(y / scale);
                    var color = sprite.data[originalY * sprite.width + originalX];
                    data.push(color)
                }
            }
            sprite.width *= scale;
            sprite.height *= scale;
            sprite.data = data;
        };

        var moveSprite = function(name, x, y) {
            var sprite = sprites[name];
            sprite.x = x;
            sprite.y = y;
        };

        // runs the initialization process for the pixels
        // plugin under the current context
        init();
        bind();

        // returns the current context so that it's possible
        // to chain the call with other
        return matchedObject;
    };
})(jQuery);

(function(jQuery) {
    jQuery.fn.ubeeanimation = function(options) {
        // retrieves the reference to the currently matched object
        // that is going to be used in the function
        var matchedObject = this;
        var target = matchedObject;

        var init = function() {
            var bee = [
                [1, 1, 1, 1],
                [1, 1, 1, 1],
                [0, 1, 1, 1],
                [0, 0, 1, 1]
            ];

            var beeColor = [
                ["#dddddd", "#dddddd", "#3668c6", "#3668c6"],
                ["#dddddd", "#dddddd", "#3668c6", "#3668c6"],
                ["#f6f6f6", "#3668c6", "#dddddd", "#dddddd"],
                ["#f6f6f6", "#f6f6f6", "#dddddd", "#dddddd"]
            ];

            target.triggerHandler("add", ["bee", 2, 3, 4, 4,
                toLinear(beeColor)
            ]);
            target.triggerHandler("scale", ["bee", 2]);
            setTimeout(function() {
                target.triggerHandler("move", ["bee", 0, 0]);
            }, 400);
            setTimeout(function() {
                target.triggerHandler("move", ["bee", 100, 0]);
            }, 800);
            setTimeout(function() {
                target.triggerHandler("move", ["bee", 120, 0]);
            }, 1200);
            setTimeout(function() {
                target.triggerHandler("move", ["bee", 80, 0]);
            }, 1600);
            setTimeout(function() {
                target.triggerHandler("move", ["bee", 120, 10]);
            }, 2000);
            setTimeout(function() {
                target.triggerHandler("move", ["bee", 70, 20]);
            }, 2400);
        };

        var toLinear = function(value) {
            var base = [];
            for (var index = 0; index < value.length; index++) {
                base = base.concat(value[index]);
            }
            return base;
        };

        init();

        // returns the current context so that it's possible
        // to chain the call with other
        return matchedObject;
    };
})(jQuery);
