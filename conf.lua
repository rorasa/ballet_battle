--[[
La Ballerina – config file

Version: 0.9
Last update: 30.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            Cannon Light Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

function love.conf(t)
	t.version = "0.9.0" 
	t.window.title = "La Ballerina"
	t.window.icon = "/images/icon.png"
	t.modules.joystick = false
	t.modules.physics = false
end