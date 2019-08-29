-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

local widget = require ("widget")

local function login()
 composer.gotoScene("Login",{effect = "slideLeft", time = 500})
end

 local function newscene()
 composer.gotoScene("SignUp",{effect = "slideLeft", time = 500})
end

function scene:create( event )

	
    
    local sceneGroup = self.view
	display.setDefault( "background", 0, 0, 1 )
	--adding background
	background = display.newImage( "Puppy1.png", display.contentCenterX, display.contentCenterY*1.6 )
	sceneGroup:insert(background)
	
	
	--Adding Welcome Message
	Welcome = display.newText("Welcome",display.contentCenterX,display.contentCenterY*0.60, "Comic Sans MS", 30)
	sceneGroup:insert(Welcome)
	--Writing Message "About"
	
	
	--Adding Welcome Message
	Welcome = display.newText("Pup App",display.contentCenterX,display.contentCenterY*1.9, "Comic Sans MS", 30)
	sceneGroup:insert(Welcome)
	--Writing Message "About"
	
	local LOGIN = widget.newButton(
    {
  
        left = 100,
        id = "LOGIN",
        label = "Login /",
        onEvent = userLogin,
       -- fillColor = { default={ 0, 1, 4, 0.7 }, over={ 1, 0.5, 0.8, 4 } },
        labelColor = { default={ 2, 4, 1.5 }, over={ 2, 5, 1.5, 2.2 } }
    }
)

sceneGroup:insert(LOGIN)
----local json = require("json")
LOGIN:addEventListener("tap", login)

local SignUp = widget.newButton(
    {
        left = 200,
		
        id = "SignUp",
        label = "SignUp",
        onEvent = userSignUp,
       -- fillColor = { default={ 0, 1, 4, 0.7 }, over={ 1, 0.5, 0.8, 4 } },
        labelColor = { default={ 2, 4, 1.5 }, over={ 2, 5, 1.5, 2.2 } }
    }
)	
sceneGroup:insert(SignUp)
----local json = require("json")
SignUp:addEventListener("tap", newscene)
	

	
	
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		-- Called when the scene is now on screen
		-- 
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
		-- Called when the scene is now off screen
	end
end

function scene:destroy( event )
	local sceneGroup = self.view

	-- Called prior to the removal of scene's "view" (sceneGroup)
	-- 
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
--test