--[[
La Ballerina — Callback functions

Version: 0.9
Last update: 30.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            Cannon Light Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

--[[function love.mousereleased(x,y,button)
	mouseAction = {"mouse",x,y,button}
	GameManager(mouseAction)
end]]

function love.keypressed( key, isrepeat )
	keyAction = {"key", key}
	GameManager(keyAction)
end