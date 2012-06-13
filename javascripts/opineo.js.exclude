/*************************************************
Feedback Collection and Polling Widget

Author: Greepit Team

Demonstration: http://www.greepit.com/Opineo  &  http://www.greepit.com/Opineo/compact.php

Usage: $('#RatingDiv').opineo('url-to-post.php', {maxvalue:5, curvalue:0});

arguments
url : required -- post changes to
options
maxvalue: maximum number of stars
curvalue: number of selected stars
....
....
************************************************/

(function ($) {
    $.fn.opineo = function (url, options) {
        if (!url) {
            return false;
        }

        return this.each(function () {
            var settings = {
                url: url, // post changes to
                maxvalue: 5,   // maximum number of stars
                curvalue: 0,   // number of selected stars

                show_votes_counter: true,     // whether to show votes counter or not
                show_votes_percentage: true,     // whether to show votes percentages or not

                show_total_votes_counter: true,        // whether to show total votes counter or not
                show_overall_rating: true, 			// whether to show overall rating or not

                total_votes_label: 'Total Votes',   // Label to display for total votes
                votes_label: 'Votes',     		// Label to display for in front of each bar along with votes counter

                overall_rating_label: 'Overall Rating',        // Label to display for overall rating of compact view
                readonly: false,         // change it to true to initialize as readonly
                animation_speed: 'Fast',  // Animation speed is given in milliseconds; higher values indicate slower animations, not faster ones.
                // You can also provide the strings 'slow', 'mild', 'fast', 'ultra fast' and 'super' can be supplied to indicate durations of 4000, 3000, 1500, 1000 and 500 milliseconds, respectively.

                response_container: undefined,   // ID of response container element where you want to display results e.g., '#ResponseContainerDiv'
                allow_rate_again: true,          // set this option to false if you want to allow the user to rate just for once
                view: 'mini',     // set "mini" for without bars, "compact" for overall rating with single bar and "detailed" for detailed view with multiple bars.

                unfilled_star_image: 'images/img-full-star-grey.png', // path for the unfilled star image
                filled_star_image: 'images/img-full-star.png',      // path for the filled star image
                //half_filled_star : 'images/img-full-star-half.png', // path for the half filled star image

                star_1_text: "Hate it",       // first star tool tip
                star_2_text: "Don't like it", // second star tool tip
                star_3_text: "It's ok",     // third star tool tip
                star_4_text: "Like it",       // fourth star tool tip
                star_5_text: "Love it",       // fifth star tool tip

                red_bar_color1: '#cd310d',  	// red bar color 1
                red_bar_color2: '#b32b0c',  	// red bar color 2
                red_bar_text_color: '#000000', 	// red bar text color
                red_bar_text_shade: '#ed4d15', 	// red bar text shadow

                orange_bar_color1: '#ffcb00', 		// orange bar color 1
                orange_bar_color2: '#ff9a00', 		// orange bar color 2
                orange_bar_text_color: '#000000', 	// orange bar text color
                orange_bar_text_shade: '#ffe800', 	// orange bar text shadow

                yellow_bar_color1: '#fef13e', 		// yellow bar color 1
                yellow_bar_color2: '#ece148', 		// yellow bar color 2
                yellow_bar_text_color: '#000000', 	// yellow bar text color
                yellow_bar_text_shade: '#f8f36c', 	// yellow bar text shadow

                lightgreen_bar_color1: '#d1db32', 		// light green bar color 1
                lightgreen_bar_color2: '#b4c135', 		// light green bar color 2
                lightgreen_bar_text_color: '#000000', 	// light green bar text color
                lightgreen_bar_text_shade: '#e7eb56', 	// light green bar text shadow

                darkgreen_bar_color1: '#7bd250',  		// dark green bar color 1
                darkgreen_bar_color2: '#59b02e',  		// dark green bar color 2
                darkgreen_bar_text_color: '#000000',   // dark green bar text color
                darkgreen_bar_text_shade: '#a6ea5d',   // dark green bar text shadow

                cookie_name: 'opineo',    // cookie name, default is opineo
                cookie_expire_in_days: 1,      // how many days cookie should be kept (default is 1 day)
                callback: function () { } // callback function
            };

            // If options exist, lets merge them
            // with our default settings
            if (options) {
                $.extend(settings, options);
            }

            var container = $(this);

            $.extend(container, { averageRating: settings.curvalue, url: settings.url });

            settings.increment = 1; //(settings.increment < .75) ? .5 : 1;
            if (!settings.response_container) {
                settings.response_container = this;
            }

            settings.view = settings.view.toLowerCase(); // convert view option in lowercase

            if (isNaN(settings.animation_speed)) {
                settings.animation_speed = settings.animation_speed.toLowerCase();
                switch (settings.animation_speed) {
                    case 'slow':
                        settings.animation_speed = 4000;
                        break;
                    case 'mild':
                        settings.animation_speed = 3000;
                        break;
                    case 'fast':
                        settings.animation_speed = 1500;
                        break;
                    case 'ultra fast':
                        settings.animation_speed = 1000;
                        break;
                    case 'super':
                        settings.animation_speed = 500;
                        break;
                    default:
                        settings.animation_speed = 1500;
                }
            } else {
                settings.animation_speed = parseInt(settings.animation_speed);
            }

            var s = 0;
            $('<div class="clearfix"><div class="all-stars"></div></div>').appendTo(container);
            var $wrapper = $(container).find('div.all-stars');
            for (var i = 1; i <= settings.maxvalue; i++) {
                var msg = '';
                if (this_message = eval('settings.star_' + i + '_text')) {
                    msg = this_message;
                }

                var $div = $('<div class="star"></div>').append('<a href="#' + i + '" title="' + msg + '"><img src="' + settings.unfilled_star_image + '" alt="' + msg + '" border="none"></a>').appendTo($wrapper);
            }

            var stars = $(container).find('.star');

            stars.bind('mouseover.rating', function () {
                event.drain();
                event.fill(this);
            })
			.bind('mouseout.rating', function () {
			    event.drain();
			    event.reset();
			})
			.bind('focus.rating', function () {
			    event.drain();
			    event.fill(this);
			})
			.bind('blur.rating', function () {
			    event.drain();
			    event.reset();
			});

            stars.bind('click.rating', function () {
                settings.curvalue = (stars.index(this) * settings.increment) + settings.increment;

                //methods.setUserVote();

                $.getJSON(container.url, {
                    "rating_number": $(this).children('a')[0].href.split('#')[1],
                    "rating_label": eval('settings.star_' + settings.curvalue + '_text'),
                    "rating_view": settings.view,
                    "max_stars": settings.maxvalue
                }, function (responseData) {
                    //$(settings.response_container).empty();
                    methods.loadBars(responseData);

                    if (settings.allow_rate_again === false) {
                        methods.disable();
                        methods.setCookie(settings.cookie_name, settings.curvalue, settings.cookie_expire_in_days);
                    } else {
                        methods.delCookie(settings.cookie_name); // delete user cookie
                    }

                    if (settings.callback) {
                        $.extend(responseData, { overall_rating: settings.overall_rating, total_votes: settings.total_votes });
                        settings.callback(responseData);
                    }
                });

                return false;
            });

            var methods = {
                animateBar: function (barElem, percentage) {
                    barElem = $(barElem).find('div:first');
                    var barWidth = (($(barElem).parent().parent().width() * percentage) / 100) - 70; // -70 is for the width of votes label
                    if (barWidth < 50) {
                        barWidth = 50;
                    }

                    $(barElem).css('width', '1px').show();
                    $(barElem).animate({ "width": barWidth + 'px' }, settings.animation_speed);
                },

                createBar: function (barLabel, percentage, barNumber, barVotes) {
                    if (settings.view == 'compact' || settings.view == 'detailed') {
                        var bar_class = 'red-bar';
                        var bar_color = methods.getColorStyle(settings.red_bar_color1, settings.red_bar_color2);
                        var bar_text_color = settings.red_bar_text_color;
                        var bar_text_shade = settings.red_bar_text_shade;
                        if (percentage >= 25 && percentage < 50) {
                            bar_class = 'orange-bar';
                            bar_color = methods.getColorStyle(settings.orange_bar_color1, settings.orange_bar_color2);
                            bar_text_color = settings.orange_bar_text_color;
                            bar_text_shade = settings.orange_bar_text_shade;
                        } else if (percentage >= 50 && percentage < 75) {
                            bar_class = 'yellow-bar';
                            bar_color = methods.getColorStyle(settings.yellow_bar_color1, settings.yellow_bar_color2);
                            bar_text_color = settings.yellow_bar_text_color;
                            bar_text_shade = settings.yellow_bar_text_shade;
                        } else if (percentage >= 75 && percentage < 90) {
                            bar_class = 'light-green-bar';
                            bar_color = methods.getColorStyle(settings.lightgreen_bar_color1, settings.lightgreen_bar_color2);
                            bar_text_color = settings.lightgreen_bar_text_color;
                            bar_text_shade = settings.lightgreen_bar_text_shade;
                        } else if (percentage >= 90) {
                            bar_class = 'dark-green-bar';
                            bar_color = methods.getColorStyle(settings.darkgreen_bar_color1, settings.darkgreen_bar_color2);
                            bar_text_color = settings.darkgreen_bar_text_color;
                            bar_text_shade = settings.darkgreen_bar_text_shade;
                        }

                        if ($(settings.response_container).find('div.rating_bar_' + barNumber).length > 0) {
                            var barObj = $(settings.response_container).find('div.rating_bar_' + barNumber);
                            $(barObj).find('div:first').attr('class', bar_class).attr('style', bar_color).end().find('p').attr('style', 'color:' + bar_text_color + '; text-shadow: 1px 1px 1px ' + bar_text_shade).text(percentage + '%');
                        } else {
                            var percentageStyle = 'color:' + bar_text_color + '; text-shadow: 1px 1px 1px ' + bar_text_shade + ';';
                            if (settings.show_votes_percentage === false) {
                                percentageStyle += 'display:none;';
                            }
                            var barObj = $('<div title="' + barLabel + '" class="clearfix rating_bar_' + barNumber + '"><div style="display:none;' + bar_color + '" class="' + bar_class + '"><p style="' + percentageStyle + '">' + percentage + '%</p></div></div>');
                            $(barObj).appendTo(settings.response_container);
                        }

                        if (barVotes != undefined && settings.show_votes_counter === true) {
                            if ($(barObj).find('div.bar-label').length > 0) {
                                $(barObj).find('div.bar-label').text(barVotes + ' ' + settings.votes_label);
                            } else {
                                var barLabelObj = $('<div class="bar-label clearfix">' + barVotes + ' ' + settings.votes_label + '</div>');
                                $(barLabelObj).appendTo(barObj);
                            }
                        }

                        methods.animateBar(barObj, percentage);
                    }
                },

                loadBars: function (responseData) {
                    var overallRatingCounter = 0;
                    var votesMultiplierCounter = 0;
                    for (var k = 1; k <= settings.maxvalue; k++) {
                        var starKRating = eval('responseData.star_' + k + '_rating');
                        /*if(responseData){
                        var starKRating = eval('responseData.star_' + k + '_rating');
                        }else{
                        var starKRating = eval('settings.star_' + k + '_rating');
                        } */
                        starRating = (isNaN(starKRating)) ? 0 : parseInt(starKRating);
                        overallRatingCounter += starRating;
                        votesMultiplierCounter += (starRating * k);
                    }

                    var averageRating = votesMultiplierCounter / overallRatingCounter;

                    if (settings.view == 'compact') {
                        var barLabel = settings.overall_rating_label;
                        var ratingPercentage = methods.getNumber(((averageRating / settings.maxvalue) * 100));

                        methods.createBar(barLabel, ratingPercentage, 1);
                        //averageRating = methods.getNumber(averageRating, 1);

                        /*if($(settings.response_container).find('div.all-votes').length > 0){
                        $(settings.response_container).find('span.rating_overall').html(settings.overall_rating_label + ': <b>' + averageRating + ' / ' + settings.maxvalue + '</b>');
                        }else{
                        $(settings.response_container).append('<div class="all-votes"><span class="rating_overall">' + settings.overall_rating_label + ': <b>' + averageRating + ' / ' + settings.maxvalue + '</b></span></div>');
                        }*/
                    } else {
                        if (settings.view == 'detailed') {
                            for (var j = 1; j <= settings.maxvalue; j++) {
                                var emptyContainer = false;
                                var barLabel = eval('settings.star_' + j + '_text');
                                var barJRating = eval('responseData.star_' + j + '_rating');

                                barJRating = isNaN(barJRating) ? 0 : parseInt(barJRating);

                                var percentage = 0;
                                if (overallRatingCounter > 0)
                                    percentage = methods.getNumber((barJRating / overallRatingCounter) * 100);

                                methods.createBar(barLabel, percentage, j, barJRating);
                            }
                        }
                    }

                    averageRating = methods.getNumber(averageRating, 1);

                    if ((settings.show_total_votes_counter === true || settings.show_overall_rating === true) && ($(settings.response_container).find('div.all-votes').length <= 0)) {
                        $(settings.response_container).append('<div class="all-votes"></div>');
                    }

                    if (settings.show_total_votes_counter === true) {
                        if ($(settings.response_container).find('span.rating_total_votes').length > 0) {
                            $(settings.response_container).find('span.rating_total_votes').html(settings.total_votes_label + ': <b>' + overallRatingCounter + '</b>');
                        } else {
                            $(settings.response_container).find('div.all-votes').append('<span style="margin-right:10px" class="rating_total_votes">' + settings.total_votes_label + ': <b>' + overallRatingCounter + '</b></span>');
                        }
                    }

                    if (settings.show_overall_rating === true) {
                        if ($(settings.response_container).find('span.rating_overall').length > 0) {
                            $(settings.response_container).find('span.rating_overall').html(settings.overall_rating_label + ': <b>' + averageRating + ' / ' + settings.maxvalue + '</b>');
                        } else {
                            $(settings.response_container).find('div.all-votes').append('<span class="rating_overall">' + settings.overall_rating_label + ': <b>' + averageRating + ' / ' + settings.maxvalue + '</b></span>');
                        }
                    }

                    settings.overall_rating = averageRating;
                    settings.total_votes = overallRatingCounter;
                },

                getNumber: function (num, decimal) {
                    if (decimal == undefined) {
                        decimal = 2;
                    }

                    if (isNaN(num))
                        num = "0";
                    sign = (num == (num = Math.abs(num)));
                    num = Math.floor(num * 100 + 0.50000000001);
                    var cents = num % 100;
                    num = Math.floor(num / 100).toString();
                    if (cents < 10 && decimal > 1) {
                        cents = "0" + cents;
                    } else if (cents >= 10 && decimal == 1) {
                        cents = cents.toString().substring(0, 1);
                    }

                    for (var i = 0; i < Math.floor((num.length - (1 + i)) / 3); i++)
                        num = num.substring(0, num.length - (4 * i + 3)) + ',' + num.substring(num.length - (4 * i + 3));

                    if (cents == 0)
                        return num;
                    else
                        return num + '.' + cents;
                },

                setCookie: function (c_name, value, expiredays) {
                    var exdate = new Date();
                    exdate.setDate(exdate.getDate() + expiredays);
                    document.cookie = c_name + "=" + escape(value) + ((expiredays == null) ? "" : "; expires=" + exdate.toUTCString());
                },

                getCookie: function (c_name) {
                    if (document.cookie.length > 0) {
                        c_start = document.cookie.indexOf(c_name + "=");
                        if (c_start != -1) {
                            c_start = c_start + c_name.length + 1;
                            c_end = document.cookie.indexOf(";", c_start);
                            if (c_end == -1)
                                c_end = document.cookie.length;

                            return unescape(document.cookie.substring(c_start, c_end));
                        }
                    }
                    return "";
                },

                delCookie: function (c_name) {
                    document.cookie = c_name +
					'=; expires=Thu, 01-Jan-70 00:00:01 GMT;';
                },

                disable: function () {
                    stars
					.unbind('click.rating')
					.unbind('mouseover.rating')
					.unbind('mouseout.rating')
					.unbind('focus.rating')
					.unbind('blur.rating').end();
                    stars.find('a').css('cursor', 'default');
                },

                getColorStyle: function (color1, color2) {
                    return 'background: -moz-linear-gradient(100% 100% 90deg, ' + color1 + ', ' + color2 + '); background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(' + color1 + '), to(' + color2 + '));';
                }
            }

            var event = {
                fill: function (elem) { // fill to the current mouse position.
                    var index = stars.index(elem) + 1;
                    stars
						.children('a').css('width', '100%').end()
						.slice(0, index).addClass('hover').end()
						.slice(0, index).find('img').attr('src', settings.filled_star_image).end();
                },
                drain: function () { // drain all the stars.
                    stars
						.filter('.on').removeClass('on').end()
						.filter('.hover').removeClass('hover').end()
						.find('img').attr('src', settings.unfilled_star_image).end();
                },
                reset: function () { // Reset the stars to the default index.
                    stars
						.slice(0, settings.curvalue / settings.increment)
						.addClass('on').find('img').attr('src', settings.filled_star_image).end();
                }
            };

            var ratingCookie = methods.getCookie(settings.cookie_name);

            if (settings.readonly === true || (settings.allow_rate_again === false && ratingCookie != null && ratingCookie != '')) {
                methods.disable();
                if (ratingCookie != null && ratingCookie != '') {
                    settings.curvalue = ratingCookie;
                }
            }

            event.reset();

            $.getJSON(container.url, {
                "rating_number": -1,  // -1 for initial request so that on server side it would be recognize as initial request
                "rating_label": eval('settings.star_' + settings.curvalue + '_text'),
                "rating_view": settings.view,
                "max_stars": settings.maxvalue
            }, function (responseData) {
                methods.loadBars(responseData);
                if (settings.callback) {
                    $.extend(responseData, { overall_rating: settings.overall_rating, total_votes: settings.total_votes });
                    settings.callback(responseData);
                }
            });
        }); // end of .each
    }; // end of fn.rating
})(jQuery);