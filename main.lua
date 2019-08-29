-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- show default status bar (iOS)
display.setStatusBar( display.TranslucentStatusBar )

-- include Corona's "widget" library
local widget = require "widget"
local composer = require "composer"


-- event listeners for tab buttons:
local function onFirstView( event )
	composer.gotoScene( "Home" )
end

local function onSecondView( event )
	composer.gotoScene( "Slider" )
end

local function onThirdView( event )
	composer.gotoScene( "Tracker" )
end


local function onFourthView( event )
	composer.gotoScene( "Canine" )
end
-- create a tabBar widget with two buttons at the bottom of the screen

-- table to setup buttons
local tabButtons = {
	{ label="HomePage", defaultFile="button1.png", overFile="button1-down.png", width = 32, height = 32, onPress=onFirstView, selected=true },
	{ label="Overall Tracker", defaultFile="button2.png", overFile="button2-down.png", width = 32, height = 32, onPress=onSecondView },
	{ label="Experience Tracker", defaultFile="button2.png", overFile="button2-down.png", width = 32, height = 32, onPress=onThirdView },
	{ label="Canine Enrichment", defaultFile="button2.png", overFile="button2-down.png", width = 32, height = 32, onPress=onFourthView },
}

-- create the actual tabBar widget
local tabBar = widget.newTabBar{
	top = display.contentHeight - 530,	-- 50 is default height for tabBar widget
	buttons = tabButtons
}

onFirstView()	-- invoke first tab button's onPress event manually
