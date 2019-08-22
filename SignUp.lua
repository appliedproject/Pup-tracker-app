----------------------------------------------------------------------------------------
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
 local function home ()	
	composer.gotoScene("home",{effect = "slideLeft", time = 500})
end



 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
	
	--adding background
	background = display.newImage( "background2.png", display.contentCenterX, display.contentCenterY )
	sceneGroup:insert(background)
	
	--Adding Welcome Message
	Welcome = display.newText("Pup Tracker",display.contentCenterX,display.contentCenterY*0.40, "Comic Sans MS", 40)
	sceneGroup:insert(Welcome)
	--Writing Message "About"
	backImage = display.newImage("back.png", 30, -7 )
	--myImage:translate(140,450)
	sceneGroup:insert(backImage)
	backImage:addEventListener("tap", home)
	
	local username = native.newTextField(160,160,180,30)
	username.placeholder = "Username"
	sceneGroup:insert(username)
	
	local pw = native.newTextField(160,200,180,30)
	pw.placeholder = "password"
	sceneGroup:insert(pw)
	
	local gender = native.newTextField(160,240,180,30)
	gender.placeholder = "gender"
	sceneGroup:insert(gender)
	
	local age = native.newTextField(160,280,180,30)
	age.placeholder = "age"
	sceneGroup:insert(age)
	
	local email = native.newTextField(160,320,180,30)
	email.placeholder = "email"
	sceneGroup:insert(email)
	
	local postcode = native.newTextField(160,360,180,30)
	postcode.placeholder = "postcode"
	sceneGroup:insert(postcode)
	
	--login = display.newText("Log in ",display.contentCenterX,display.contentCenterY*1.50, "Comic Sans MS", 25)
	--sceneGroup:insert(login)
	
	local SignUp = widget.newButton(
    {
        shape = "roundedRect",
        left = 70,
        top = 390,
        id = "SignUp",
        label = "SignUp",
        onEvent = userSignUp,
        fillColor = { default={ 0, 1, 4, 0.7 }, over={ 1, 0.5, 0.8, 4 } },
        labelColor = { default={ 2, 4, 1.5 }, over={ 2, 5, 1.5, 2.2 } }
    }
)
sceneGroup:insert(SignUp)
----local json = require("json")
	--login:addEventListener("tap", newscene)
	
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


