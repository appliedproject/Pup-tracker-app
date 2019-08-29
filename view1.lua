-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	
    
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