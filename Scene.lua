--[[
Ballet-battle — Scene manager functions

Version: 0.0.1
Last update: 24.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            CannonLight Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

function GameManager(action)

	if Game_Params.Scene == 0 then
		TitleManager(action)
	elseif Game_Params.Scene == 1 then
		StoryManager(action)
	elseif Game_Params.Scene == 2 then
		DanceManager(action)
	end
	
end

function TitleManager(action)
	if action[1] == "mouse" then
		Game_Params.Scene = 1
		StoryManager({"start"})
		--Game_Params.Scene = 2
		--DanceManager({"start"})
	elseif action[1] == "key" then
		if action[2] == " " then
			Game_Params.Scene = 1
			StoryManager({"start"})
			--Game_Params.Scene = 2
			--DanceManager({"start"})
		end
	end
end

function StoryManager(action)
	if action[1] == "key" then
		if action[2] == " " then
			updatePage()
		end
	elseif action[1] == "update" then
		Window_Params.textDelay = Window_Params.textDelay + action[2]
		if Window_Params.textDelay > Window_Params.textSpeed then
			Window_Params.textDelay = 0
			Window_Params.textPos = Window_Params.textPos + 1
			Window_Params.text = string.sub(Game_Params.Page.text,1, Window_Params.textPos)
		end
	elseif action[1] == "start" then
		Game_Params.Page = loadPage(Game_Params.currentPage)
		updatePage()
	end
end

function newPage()
	Game_Params.currentPage = Game_Params.currentPage + 1
	Game_Params.Page = loadPage(Game_Params.currentPage)
	Window_Params.textDelay = 0
	Window_Params.textPos = 0
	while #Game_Params.Page.order > 0 do
		order = table.remove(Game_Params.Page.order,1)
		if order[1] == "say" then
			Game_Params.Page.character = order[2]
			Game_Params.Page.text = order[3]
			return
		elseif order[1] == "dance" then
			Game_Params.Scene = 2
			DanceManager({"start"})
		elseif order[1] == "scene" then
			changeBG(order[2])
		elseif order[1] == "character" then
			changeChar(order[2])
		elseif order[1] == "goto" then
			Game_Params.currentPage = order[2]
			Game_Params.Page = loadPage(order[2])
		end
	end
end

function updatePage()
	Window_Params.textDelay = 0
	Window_Params.textPos = 0
	while #Game_Params.Page.order > 0 do
		order = table.remove(Game_Params.Page.order,1)
		if order[1] == "say" then
			Game_Params.Page.character = order[2]
			Game_Params.Page.text = order[3]
			return
		elseif order[1] == "dance" then
			Game_Params.Scene = 2
			DanceManager({"start"})
		elseif order[1] == "scene" then
			changeBG(order[2])
		elseif order[1] == "character" then
			changeChar(order[2])
		elseif order[1] == "goto" then
			Game_Params.currentPage = order[2]
			Game_Params.Page = loadPage(order[2])
		end
	end
	newPage()
end

function changeBG(BGName)
	if BGName == "black_screen" then
		Graphics.currentBG = Graphics.BG.black_screen
	elseif BGName == "christinas_dance" then
		Graphics.currentBG = Graphics.BG.christinas_dance
	elseif BGName == "game_logo_screen" then
		Graphics.currentBG = Graphics.BG.game_logo_screen
	elseif BGName == "park" then
		Graphics.currentBG = Graphics.BG.park
	elseif BGName == "mel_school_outside" then
		Graphics.currentBG = Graphics.BG.mel_school_outside
	elseif BGName == "mel_school_inside" then
		Graphics.currentBG = Graphics.BG.mel_school_inside
	elseif BGName == "red_hall_inside" then
		Graphics.currentBG = Graphics.BG.red_hall_inside
	end
end

function changeChar(CharName)
	if CharName == "none" then
		Graphics.currentChar = Graphics.Char.none
	elseif CharName == "clara_1" then
		Graphics.currentChar = Graphics.Char.clara_1
	elseif CharName == "clara_2" then
		Graphics.currentChar = Graphics.Char.clara_2
	elseif CharName == "clara_3" then
		Graphics.currentChar = Graphics.Char.clara_3
	elseif CharName == "clara_4" then
		Graphics.currentChar = Graphics.Char.clara_4
	elseif CharName == "clara_5" then
		Graphics.currentChar = Graphics.Char.clara_5
	elseif CharName == "clara_6" then
		Graphics.currentChar = Graphics.Char.clara_6
	elseif CharName == "mel_1" then
		Graphics.currentChar = Graphics.Char.mel_1
	elseif CharName == "mel_2" then
		Graphics.currentChar = Graphics.Char.mel_2
	end
end

function DanceManager(action)
	if action[1] == "key" then
		if Game_Params.gameEnd then
			return
		end
	
		if action[2] == "z" then
			star = table.remove(Game_Params.Astars,1)
		elseif action[2] == "x" then
			star = table.remove(Game_Params.Bstars,1)
		elseif action[2] == "c" then
			star = table.remove(Game_Params.Cstars,1)
		elseif action[2] == "v" then
			star = table.remove(Game_Params.Dstars,1)
		elseif action[2] == "escape" then
			Game_Params.Scene = 0
			love.load()
			return
		else
			return
		end
		if not star then
			starHit = 100
		else
			starHit = math.abs(Window_Params.targetLine-star.x)
		end
		if starHit <= Game_Params.StarHitArea then
			Game_Params.score = Game_Params.score + 100
			Game_Params.performance = Game_Params.performance + (Game_Params.PerformanceStep*10)
		else
			Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*20)
		end
		if Game_Params.performance > 100 then Game_Params.performance = 100 end
		if Game_Params.performance < 0 then Game_Params.performance = 0 end
		
	elseif action[1] == "update" then
		Game_Params.time = Game_Params.time + action[2]
		if not Game_Params.gameEnd then
			Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*action[2])
			if Game_Params.performance < 0 then Game_Params.performance = 0  end
		end
		
		for i,v in ipairs(Game_Params.song.stars) do
			if Game_Params.time >= v[2] then
				if v[1] == "end" then
					Game_Params.gameEnd = true
					table.remove(Game_Params.song.stars,i)
					return
				end
				if v[1] == "quit" then
					Game_Params.Scene = 0
					--table.remove(Game_Params.song.stars,i)
					love.load()
					return
				end
				star = table.remove(Game_Params.song.stars,i)
				addStar(star[1])
			end
		end
		
		for i,v in ipairs(Game_Params.Astars) do
			speed = (Window_Params.width-40)/Game_Params.StarSpeed
			v.x = v.x - (speed*action[2])
			if v.x < 0 then
				table.remove(Game_Params.Astars,i)
				Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*10)
			else
				Game_Params.Astars[i] = v
			end
		end
		for i,v in ipairs(Game_Params.Bstars) do
			speed = (Window_Params.width-40)/Game_Params.StarSpeed
			v.x = v.x - (speed*action[2])
			if v.x < 0 then
				table.remove(Game_Params.Bstars,i)
				Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*10)
			else
				Game_Params.Bstars[i] = v
			end
		end
		for i,v in ipairs(Game_Params.Cstars) do
			speed = (Window_Params.width-40)/Game_Params.StarSpeed
			v.x = v.x - (speed*action[2])
			if v.x < 0 then
				table.remove(Game_Params.Cstars,i)
				Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*10)
			else
				Game_Params.Cstars[i] = v
			end
		end
		for i,v in ipairs(Game_Params.Dstars) do
			speed = (Window_Params.width-40)/Game_Params.StarSpeed
			v.x = v.x - (speed*action[2])
			if v.x < 0 then
				table.remove(Game_Params.Dstars,i)
				Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*10)
			else
				Game_Params.Dstars[i] = v
			end
		end
		
		print(Game_Params.score)
				
	elseif action[1] == "start" then
		Game_Params.time = 0
		Game_Params.song = loadSongHello()
		Game_Params.Astars = {}
		Game_Params.Bstars = {}
		Game_Params.Cstars = {}
		Game_Params.Dstars = {}
		Game_Params.score = 0
		Game_Params.performance = 50
		Game_Params.gameEnd = false
	end
end

function addStar(track)

	star = {}
	star.x = Window_Params.width-20
	if track == "A" then
		star.y = Window_Params.height-160
		table.insert(Game_Params.Astars, star)
	elseif track == "B" then
		star.y = Window_Params.height-120
		table.insert(Game_Params.Bstars, star)
	elseif track == "C" then
		star.y = Window_Params.height-80
		table.insert(Game_Params.Cstars, star)
	elseif track == "D" then
		star.y = Window_Params.height-40
		table.insert(Game_Params.Dstars, star)
	end
end
