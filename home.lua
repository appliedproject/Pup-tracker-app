-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
 
local scene = composer.newScene()
 


--Adding Welcome message
--local function header()
--display.newText("Welcome",display.contentCenterX,display.contentCenterY, "Comic Sans MS", 50)
--end
--header()

local Welcome

local widget = require ("widget")
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 



 local function newscene()
 composer.gotoScene("SignUp",{effect = "slideLeft", time = 500})
end


 local function login()
 composer.gotoScene("Login",{effect = "slideLeft", time = 500})
end
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
	
	--adding background
	background = display.newImage( "background1.png", display.contentCenterX, display.contentCenterY )
	sceneGroup:insert(background)
	
	--Adding Welcome Message
	Welcome = display.newText("Pup Tracker",display.contentCenterX,display.contentCenterY*0.40, "Comic Sans MS", 40)
	sceneGroup:insert(Welcome)
	--Writing Message "About"
	
	
	
	local SignUp = widget.newButton(
    {
        shape = "roundedRect",
        left = 70,
        top = 360,
        id = "SignUp",
        label = "SignUp",
        onEvent = userSignUp,
        fillColor = { default={ 0, 1, 4, 0.7 }, over={ 1, 0.5, 0.8, 4 } },
        labelColor = { default={ 2, 4, 1.5 }, over={ 2, 5, 1.5, 2.2 } }
    }
)	
sceneGroup:insert(SignUp)
----local json = require("json")
SignUp:addEventListener("tap", newscene)

	local LOGIN = widget.newButton(
    {
        shape = "roundedRect",
        left = 70,
        top = 300,
        id = "LOGIN",
        label = "LOGIN",
        onEvent = userLogin,
        fillColor = { default={ 0, 1, 4, 0.7 }, over={ 1, 0.5, 0.8, 4 } },
        labelColor = { default={ 2, 4, 1.5 }, over={ 2, 5, 1.5, 2.2 } }
    }
)

sceneGroup:insert(LOGIN)
----local json = require("json")
LOGIN:addEventListener("tap", login)


	
	--Login = display.newText("Login",display.contentCenterX*0.100,display.contentCenterY*2.0, "Comic Sans MS", 25)
	--sceneGroup:insert(Login)
	--Login:addEventListener("tap", login)
	
	
--sceneGroup:insert(SignUp)
----local json = require("json")
	--SignUp:addEventListener("tap", newscene)
	
	--HomePage = display.newText("HomePage",display.contentCenterX*0.90,display.contentCenterY*2.0, "Comic Sans MS", 25)
	--sceneGroup:insert(HomePage)
	--HomePage:addEventListener("tap", newscene)


	

	--Adding Timer in this app which display how long a user is seing the app
	
	--sceneGroup:insert(Timer)
	
 
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene
