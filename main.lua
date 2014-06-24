--[[
Ballet-battle

Version: 0.0.1
Last update: 21.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            CannonLight Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

VersionNo = '0.0.1'

require "Window"
require "Scene"
require "Callback"
require "Song"
require "Story"

function love.load()
	gameInit()
	loadGraphics()
end

function love.update(dt)
	GameManager({"update",dt})
end

function love.draw()
	if Game_Params.Scene == 0 then
		drawTitleWindow()
	elseif Game_Params.Scene == 1 then
		drawStoryWindow()
	elseif Game_Params.Scene == 2 then
		drawDanceWindow()
	end
end

function gameInit()
	Graphics = {}
	
	Window_Params = {}
	Window_Params.width = love.window.getWidth()
	Window_Params.height = love.window.getHeight()
	Window_Params.targetLine = 100
	Window_Params.textSpeed = 0.05
	
	Game_Params = {}
	Game_Params.PlayerName = "Clara"
	Game_Params.Scene = 0
	Game_Params.PerformanceStep = 0.5
	Game_Params.StarSpeed = 8
	Game_Params.StarHitArea = 10
	
	Game_Params.currentPage = 9
end
