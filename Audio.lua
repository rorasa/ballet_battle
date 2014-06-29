--[[
Ballet-battle — audio functions

Version: 0.0.1
Last update: 27.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            CannonLight Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

function playSong(name)
	love.audio.stop()
	if name == "opening" then
		love.audio.play(Audio.Backtracks.opening)
	elseif name == "jesu" then
		love.audio.play(Audio.Backtracks.jesu)
	elseif name == "minuet" then
		love.audio.play(Audio.Backtracks.minuet)
	elseif name == "ashton" then
		love.audio.play(Audio.Backtracks.ashton)
	elseif name == "adventure" then
		love.audio.play(Audio.Backtracks.adventure)
	elseif name == "silver_fairy" then
		love.audio.play(Audio.Tracks.silver_fairy)
	elseif name == "odile_coda" then
		love.audio.play(Audio.Tracks.odile_coda)
	end
end

function loadAudio()
	Audio = {}
	
	-- load sfx files
	Audio.Sfx = {}
	Audio.Sfx.selection = love.audio.newSource("/sounds/selection.wav","static")
	Audio.Sfx.text = love.audio.newSource("/sounds/text.wav","static")
	Audio.Sfx.fail = love.audio.newSource("/sounds/fail.wav","static")
	Audio.Sfx.applause = love.audio.newSource("/sounds/applause.mp3","stream")
	
	-- load backtrack files
	Audio.Backtracks = {}
	Audio.Backtracks.opening = love.audio.newSource("/sounds/The Chamber.mp3","stream")
	Audio.Backtracks.jesu = love.audio.newSource("/sounds/jesu.wav","stream")
	Audio.Backtracks.jesu:setLooping( true )
	Audio.Backtracks.jesu:setVolume( 0.4 )
	Audio.Backtracks.minuet = love.audio.newSource("/sounds/minuet.wav","stream")
	Audio.Backtracks.minuet:setLooping( true )
	Audio.Backtracks.minuet:setVolume( 0.2 )
	Audio.Backtracks.ashton = love.audio.newSource("/sounds/Ashton Manor.mp3","stream")
	Audio.Backtracks.ashton:setLooping( true )
	Audio.Backtracks.ashton:setVolume( 0.6 )
	Audio.Backtracks.adventure = love.audio.newSource("/sounds/Call to Adventure.mp3","stream")
	Audio.Backtracks.adventure:setLooping( true )
	Audio.Backtracks.adventure:setVolume( 0.6 )
	-- load main track files
	Audio.Tracks = {}
	Audio.Tracks.silver_fairy = love.audio.newSource("/sounds/Silver fairy variation.mp3","stream")
	Audio.Tracks.odile_coda = love.audio.newSource("/sounds/Odile Coda Variation.mp3","stream")
	
	
end