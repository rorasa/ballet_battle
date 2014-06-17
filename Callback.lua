--[[
Ballet-battle — Callback functions

Version: 0.0.1
Last update: 12.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            CannonLight Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

function love.mousereleased(x,y,button)
	mouseAction = {"mouse",x,y,button}
	GameManager(mouseAction)
end

function love.keypressed( key, isrepeat )
	keyAction = {"key", key}
	GameManager(keyAction)
end