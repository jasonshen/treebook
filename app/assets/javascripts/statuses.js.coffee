# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


# jQuery function is called via the dollar sign, and the arrow indicate the start of a function??

# This is to change the class of something with hover to on when it's being hovered over

$ ->
	$('.status').hover (event) ->
		$(this).toggleClass("hover")