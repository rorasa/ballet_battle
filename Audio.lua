--[[
La Ballerina — audio functions

Version: 0.9
Last update: 30.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            Cannon Light Games
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
	elseif name == "eternal" then
		love.audio.play(Audio.Backtracks.eternal)
	elseif name == "silver_fairy" then
		love.audio.play(Audio.Tracks.silver_fairy)
	elseif name == "odile_coda" then
		love.audio.play(Audio.Tracks.odile_coda)
	elseif name == "kitri" then
		love.audio.play(Audio.Tracks.kitri)
	elseif name == "aurora" then
		love.audio.play(Audio.Tracks.aurora)
	elseif name == "bayadere" then
		love.audio.play(Audio.Tracks.bayadere)
	elseif name == "lilac" then
		love.audio.play(Audio.Tracks.lilac)
	elseif name == "sugarplum" then
		love.audio.play(Audio.Tracks.sugarplum)
	elseif name == "coppelia" then
		love.audio.play(Audio.Tracks.coppelia)
	elseif name == "giselle" then
		love.audio.play(Audio.Tracks.giselle)
	elseif name == "swanlake" then
		love.audio.play(Audio.Tracks.swanlake)
	elseif name == "esmeralda" then
		love.audio.play(Audio.Tracks.esmeralda)
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
	Audio.Backtracks.jesu:setVolume( 0.3 )
	Audio.Backtracks.minuet = love.audio.newSource("/sounds/minuet.wav","stream")
	Audio.Backtracks.minuet:setLooping( true )
	Audio.Backtracks.minuet:setVolume( 0.1 )
	Audio.Backtracks.ashton = love.audio.newSource("/sounds/Ashton Manor.mp3","stream")
	Audio.Backtracks.ashton:setLooping( true )
	Audio.Backtracks.ashton:setVolume( 0.5 )
	Audio.Backtracks.adventure = love.audio.newSource("/sounds/Call to Adventure.mp3","stream")
	Audio.Backtracks.adventure:setLooping( true )
	Audio.Backtracks.adventure:setVolume( 0.5 )
	Audio.Backtracks.eternal = love.audio.newSource("/sounds/Eternal Hope.mp3","stream")
	Audio.Backtracks.eternal:setLooping( true )
	-- load main track files
	Audio.Tracks = {}
	Audio.Tracks.silver_fairy = love.audio.newSource("/sounds/Silver fairy variation.mp3","stream")
	Audio.Tracks.odile_coda = love.audio.newSource("/sounds/Odile Coda Variation.mp3","stream")
	Audio.Tracks.kitri = love.audio.newSource("/sounds/Kitri variation.mp3","stream")
	Audio.Tracks.aurora = love.audio.newSource("/sounds/Aurora Variation.mp3","stream")
	Audio.Tracks.bayadere = love.audio.newSource("/sounds/La Bayadere.mp3","stream")
	Audio.Tracks.lilac = love.audio.newSource("/sounds/Lilac Fairy Variation.mp3","stream")
	Audio.Tracks.sugarplum = love.audio.newSource("/sounds/Sugarplum Fairy.mp3","stream")
	Audio.Tracks.coppelia = love.audio.newSource("/sounds/Coppelia Variation.mp3","stream")
	Audio.Tracks.giselle = love.audio.newSource("/sounds/Giselle Variation.mp3","stream")
	Audio.Tracks.swanlake = love.audio.newSource("/sounds/Swan Lake.mp3","stream")
	Audio.Tracks.esmeralda = love.audio.newSource("/sounds/Esmeralda Variation.mp3","stream")
	
end