--[[
La Ballerina

Version: 0.9
Last update: 30.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            Cannon Light Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

VersionNo = '0.9.0'

require "Tserial"
require "Window"
require "Audio"
require "Scene"
require "Callback"
require "Song"
require "Story"

function love.load()
	loadGraphics()
	loadAudio()
	gameInit()
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
	elseif Game_Params.Scene == 3 then
		drawResultWindow()
	elseif Game_Params.Scene == 4 then
		drawGameOverWindow()
	elseif Game_Params.Scene == 5 then
		drawCreditWindow()
	end
end

function gameInit()

	love.filesystem.setIdentity("LaBallerina")
	
	Window_Params = {}
	Window_Params.width = love.window.getWidth()
	Window_Params.height = love.window.getHeight()
	Window_Params.targetLine = 100
	Window_Params.textSpeed = 0.05
	Window_Params.titleMenu = 1
	
	newGame()
	TitleManager({"start"})
end

function newGame()
	Game_Params = {}
	Game_Params.PlayerName = "Clara"
	Game_Params.Scene = 0
	Game_Params.PerformanceStep = 0.5
	Game_Params.StarSpeed = 8
	Game_Params.StarHitArea = 25
	Game_Params.HitLatency = 0.2
	Game_Params.Akey = "z"
	Game_Params.Bkey = "x"
	Game_Params.Ckey = "c"
	Game_Params.Dkey = "v"
	
	Game_Params.currentPage = 1
	Game_Params.score = 0
end

function saveGame()
	success = love.filesystem.write("laBallerina.save", Tserial.pack(Game_Params))
end

function loadGame()
	e = love.filesystem.exists("laBallerina.save")
	if e then
		Game_Params = Tserial.unpack(love.filesystem.read ("laBallerina.save"))
		updatePage()
	end
end

