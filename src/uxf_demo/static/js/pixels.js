(function(jQuery) {
    jQuery.fn.upixels = function(options) {
        var PIXEL_SPACING = 2;
        var VIRTUAL_PIXEL = 4;

        var BOARD_WIDTH = 160;
        var BOARD_HEIGHT = 80;

        var BACKGROUND_COLOR = "#f8f8f8";
        var FOREGROUND_COLOR = "#4d4d4d";
        var TRANSPARENT_COLOR = "rgba(0, 0, 0, 0)";

        var FRAME_RATE = 60;
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
            requestAnimationFrame(draw);
        };

        var bind = function() {
            matchedObject.bind("add",
                function(event, name, x, y, width, height, data) {
                    addSprite(name, x, y, width, height, data);
                });

            matchedObject.bind("remove", function(event, name) {
                removeSprite(name);
            });

            matchedObject.bind("scale", function(event, name, scale) {
                scaleSprite(name, scale);
            });

            matchedObject.bind("move", function(event, name, x, y) {
                moveSpriteAnimated(name, x, y);
            });
        };

        var initCanvas = function() {};

        var draw = function(timestamp) {
            requestAnimationFrame(draw);

            var next = matchedObject.data("next") || 0;
            if (timestamp < next) {
                return;
            }

            updateState(timestamp);
            drawCanvas(timestamp);

            matchedObject.data("timestamp", timestamp);
            matchedObject.data("next", timestamp + FRAME_DELAY);
        };

        var drawCanvas = function(timestamp) {
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
                height: height,
                animations: []
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

        var moveSpriteAnimated = function(name, x, y, duration, easing) {
            duration = duration || 300;
            easing = easing || "linear";
            animateSprite(name, "x", x, duration, easing);
            animateSprite(name, "y", y, duration, easing);
        };

        var animateSprite = function(name, key, value, duration, easing) {
            var timestamp = matchedObject.data("timestamp") || 0;
            duration = duration || 0;
            easing = easing || "linear";
            var sprite = sprites[name];
            var current = sprite[key];
            var animation = {
                property: key,
                original: current,
                target: value,
                start: timestamp,
                end: timestamp + duration,
                easing: easing
            };
            sprite.animations.push(animation);
        };

        var updateState = function(timestamp) {
            for (var name in sprites) {
                updateAnimations(name, timestamp);
            }
        };

        var updateAnimations = function(name, timestamp) {
            var sprite = sprites[name];
            var removal = [];

            for (var index = 0; index < sprite.animations.length; index++) {
                var animation = sprite.animations[index];
                updateAnimation(sprite, animation, timestamp);
                if (timestamp < animation.end) {
                    continue;
                }
                removal.push(animation);
            }

            for (var index = 0; index < removal.length; index++) {
                var target = sprite.animations.indexOf(removal[index]);
                sprite.animations.splice(target, 1);
            }
        };

        var updateAnimation = function(sprite, animation, timestamp) {
            var next = linearAnimation(animation.original, animation.target,
                animation.start, animation.end, timestamp);
            sprite[animation.property] = next;
        };

        var linearAnimation = function(original, target, start, end, timestamp) {
            var delta = target - original;
            var deltaTotal = end - start;
            var deltaCurrent = timestamp - start;
            var percent = deltaCurrent / deltaTotal;
            return original + (delta * percent);
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
                ["rgba(0,0,0,0)", "#3668c6", "#dddddd", "#dddddd"],
                ["rgba(0,0,0,0)", "rgba(0,0,0,0)", "#dddddd", "#dddddd"]
            ];

            target.triggerHandler("add", ["bee", 2, 3, 4, 4, toLinear(beeColor)]);
            target.triggerHandler("scale", ["bee", 6]);
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
