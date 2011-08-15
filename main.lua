--activating physics
local physics = require("physics")
physics.start()

physics.setScale( 60 )
physics.setGravity( 0, 9.8 ) -- initial gravity points downwards

system.setAccelerometerInterval( 100 ) -- set accelerometer to maximum responsiveness

-- Build this demo for iPhone to see accelerometer-based gravity
function onTilt( event )
	physics.setGravity( ( 9.8 * event.xGravity ), ( -9.8 * event.yGravity ) )
end

Runtime:addEventListener( "accelerometer", onTilt )


display.setStatusBar( display.HiddenStatusBar )

local bkg = display.newImage( "bkg_wood.png" )        
local game = display.newGroup();


borderBodyElement = { friction=0.5, bounce=20 }

local borderTop = display.newRect( 0, 0, 320, 20 )
borderTop:setFillColor( 0, 0, 0, 0)		-- make invisible
physics.addBody( borderTop, "static", borderBodyElement )

local borderBottom = display.newRect( 0, 460, 320, 20 )
borderBottom:setFillColor( 0, 0, 0, 0)		-- make invisible
physics.addBody( borderBottom, "static", borderBodyElement )

local borderLeft = display.newRect( 0, 20, 20, 460 )
borderLeft:setFillColor( 0, 0, 0, 0)		-- make invisible
physics.addBody( borderLeft, "static", borderBodyElement )

local borderRight = display.newRect( 300, 20, 20, 460 )
borderRight:setFillColor( 0, 0, 0, 0)		-- make invisible
physics.addBody( borderRight, "static", borderBodyElement )
                          
-- Creating the ball and asigning x & y values
local superball = display.newImage("super_ball_1.png")
superball.x = 50; superball.y = 40            

local rightHole = display.newImage("hole.png")
rightHole.x = 286; rightHole.y = 33 

local rightHole1 = display.newImage("hole.png")
rightHole1.x = 286; rightHole1.y = 95

local leftHole = display.newImage("hole.png")
leftHole.x = 33; leftHole.y = 80
                                 
local leftHole1 = display.newImage("hole.png")
leftHole1.x = 33; leftHole1.y = 158 

local rightHole2 = display.newImage("hole.png")
rightHole2.x = 286; rightHole2.y = 140 

local rightHole3 = display.newImage("hole.png")
rightHole3.x = 286; rightHole3.y = 216 

local leftHole2 = display.newImage("hole.png")
leftHole2.x = 33; leftHole2.y = 200
                                 
local leftHole3 = display.newImage("hole.png")
leftHole3.x = 33; leftHole3.y = 278

local rightHole4 = display.newImage("hole.png")
rightHole4.x = 286; rightHole4.y = 261 

local rightHole5 = display.newImage("hole.png")
rightHole5.x = 286; rightHole5.y = 339                                    

local leftHole4 = display.newImage("hole.png")
leftHole4.x = 33; leftHole4.y = 321
                                 
local leftHole5 = display.newImage("hole.png")
leftHole5.x = 33; leftHole5.y = 380

local finalHole = display.newImage("hole.png")
finalHole.x = 260; finalHole.y = 380           

local finalHole1 =  display.newImage("hole.png")
finalHole1.x = 260; finalHole1.y =406

local finalHole2 = display.newImage("hole.png")
finalHole2.x = 286; finalHole2.y= 446

local finishHole = display.newImage("finish_hole.png")
finishHole.x = 286; finishHole.y = 381

-- First three blocks                             

wall1 = display.newImage("wall.png")
game:insert(wall1); wall1.x= 70; wall1.y= 60 
                   
wall2 =display.newImage("wall.png")
game:insert(wall2); wall2.x=170; wall2.y=60

wall3 = display.newImage("wall.png")
game:insert(wall3); wall3.x=200; wall3.y=60

--Next three blocks
wall4 = display.newImage("wall.png")
game:insert(wall4); wall4.x=250; wall4.y=120 

wall5 = display.newImage("wall.png")
game:insert(wall5); wall5.x=150; wall5.y=120

wall6 = display.newImage("wall.png")
game:insert(wall6); wall6.x=120; wall6.y=120
                                           
-- And so on...
wall7 = display.newImage("wall.png")
game:insert(wall7); wall7.x= 70; wall7.y= 180 

wall8 =display.newImage("wall.png")
game:insert(wall8); wall8.x=170; wall8.y=180

wall9 = display.newImage("wall.png")
game:insert(wall9); wall9.x=200; wall9.y=180
  

wall10 = display.newImage("wall.png")
game:insert(wall10); wall10.x=250; wall10.y=240 

wall11 = display.newImage("wall.png")
game:insert(wall11); wall11.x=150; wall11.y=240

wall12 = display.newImage("wall.png")
game:insert(wall12); wall12.x=120; wall12.y=240


wall13 = display.newImage("wall.png")
game:insert(wall13); wall13.x= 70; wall13.y= 300 

wall14 =display.newImage("wall.png")
game:insert(wall14); wall14.x=170; wall14.y=300

wall15 = display.newImage("wall.png")
game:insert(wall15); wall15.x=200; wall15.y=300     


wall16 = display.newImage("wall.png")
game:insert(wall16); wall16.x=250; wall16.y=360 

wall17 = display.newImage("wall.png")
game:insert(wall17); wall17.x=150; wall17.y=360

wall18 = display.newImage("wall.png")
game:insert(wall18); wall18.x=120; wall18.y=360 



 
physics.addBody( wall1, "static", borderBodyElement ) 
physics.addBody( wall2, "static", borderBodyElement )  
physics.addBody( wall3, "static", borderBodyElement )   
physics.addBody( wall4, "static", borderBodyElement ) 
physics.addBody( wall5, "static", borderBodyElement ) 
physics.addBody( wall6, "static", borderBodyElement ) 
physics.addBody( wall7, "static", borderBodyElement ) 
physics.addBody( wall8, "static", borderBodyElement ) 
physics.addBody( wall9, "static", borderBodyElement ) 
physics.addBody( wall10, "static", borderBodyElement ) 
physics.addBody( wall11, "static", borderBodyElement ) 
physics.addBody( wall12, "static", borderBodyElement ) 
physics.addBody( wall13, "static", borderBodyElement ) 
physics.addBody( wall14, "static", borderBodyElement ) 
physics.addBody( wall15, "static", borderBodyElement ) 
physics.addBody( wall16, "static", borderBodyElement ) 
physics.addBody( wall17, "static", borderBodyElement ) 
physics.addBody( wall18, "static", borderBodyElement ) 
 
                                                      
physics.addBody( superball, { density=0.9, friction=0.5, bounce=.3, radius=10 } )
