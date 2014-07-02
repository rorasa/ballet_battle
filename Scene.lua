--[[
La Ballerina — Scene manager functions

Version: 0.9
Last update: 30.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            Cannon Light Games
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
	elseif Game_Params.Scene == 3 then
		ResultManager(action)
	elseif Game_Params.Scene == 4 then
		GameOverManager(action)
	elseif Game_Params.Scene == 5 then
		CreditManager(action)
	end
	
end

function TitleManager(action)
	--[[if action[1] == "mouse" then
		Game_Params.Scene = 1
		StoryManager({"start"})
		--Game_Params.Scene = 2
		--DanceManager({"start"})]]
		
	if action[1] == "key" then
		if action[2] == " " then
		    love.audio.play(Audio.Sfx.selection)
			if Window_Params.titleMenu == 1 then
				Game_Params.Scene = 1
				StoryManager({"start"})
			elseif Window_Params.titleMenu == 2 then
				loadGame()
			end
			
		elseif action[2] == "down" or action[2] == "up" then
			love.audio.play(Audio.Sfx.selection)
			if Window_Params.titleMenu == 1 then
				Window_Params.titleMenu = 2
			else
				Window_Params.titleMenu = 1
			end
		end
	elseif action[1] == "start" then
		playSong("eternal")
	end
end

function StoryManager(action)
	if action[1] == "key" then
		if action[2] == " " then
			love.audio.play(Audio.Sfx.text)
			updatePage()
			if Game_Params.gotoDance then
				print("Go to dance")
				DanceManager({"start",order[2]})
				Game_Params.Scene = 2
			end
		elseif action[2] == "escape" then
			playSong("none")
			TitleManager({"start"})
			Game_Params.Scene = 0
			love.load()
			return
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
			Game_Params.gotoDance = true
			return
		elseif order[1] == "scene" then
			changeBG(order[2])
		elseif order[1] == "character" then
			changeChar(order[2])
		elseif order[1] == "goto" then
			print("New page")
			Game_Params.currentPage = order[2]
			Game_Params.Page = loadPage(order[2])
		elseif order[1] == "save" then
			print("Save here")
			saveGame()
		elseif order[1] == "song" then
			playSong(order[2])
		elseif order[1] == "end" then
			CreditManager({"start"})
			Game_Params.Scene = 5
			return
		end
	end
end

function changeBG(BGName)
	if BGName == "black_screen" then
		Graphics.currentBG = Graphics.BG.black_screen
	elseif BGName == "christinas_dance" then
		Graphics.currentBG = Graphics.BG.christinas_dance
	elseif BGName == "clara_dance" then
		Graphics.currentBG = Graphics.BG.clara_dance
	elseif BGName == "game_logo_screen" then
		Graphics.currentBG = Graphics.BG.game_logo_screen
	elseif BGName == "park" then
		Graphics.currentBG = Graphics.BG.park
	elseif BGName == "mel_school_outside" then
		Graphics.currentBG = Graphics.BG.mel_school_outside
	elseif BGName == "mel_school_inside" then
		Graphics.currentBG = Graphics.BG.mel_school_inside
	elseif BGName == "christina_school_outside" then
		Graphics.currentBG = Graphics.BG.christina_school_outside
	elseif BGName == "christina_school_inside" then
		Graphics.currentBG = Graphics.BG.christina_school_inside
	elseif BGName == "red_hall_inside" then
		Graphics.currentBG = Graphics.BG.red_hall_inside
	elseif BGName == "final_battle" then
		Graphics.currentBG = Graphics.BG.final_battle
	elseif BGName == "tutorial_1" then
		Graphics.currentBG = Graphics.BG.tutorial_1
	elseif BGName == "tutorial_2" then
		Graphics.currentBG = Graphics.BG.tutorial_2
	elseif BGName == "tutorial_3" then
		Graphics.currentBG = Graphics.BG.tutorial_3
	elseif BGName == "tutorial_4" then
		Graphics.currentBG = Graphics.BG.tutorial_4
	elseif BGName == "tutorial_5" then
		Graphics.currentBG = Graphics.BG.tutorial_5
	elseif BGName == "tutorial_6" then
		Graphics.currentBG = Graphics.BG.tutorial_6
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
	elseif CharName == "lawrance_1" then
		Graphics.currentChar = Graphics.Char.lawrance_1
	elseif CharName == "lawrance_2" then
		Graphics.currentChar = Graphics.Char.lawrance_2
	elseif CharName == "christina_1" then
		Graphics.currentChar = Graphics.Char.christina_1
	elseif CharName == "christina_2" then
		Graphics.currentChar = Graphics.Char.christina_2
	elseif CharName == "christina_3" then
		Graphics.currentChar = Graphics.Char.christina_3
	elseif CharName == "christina_4" then
		Graphics.currentChar = Graphics.Char.christina_4
	elseif CharName == "christina_5" then
		Graphics.currentChar = Graphics.Char.christina_5
	elseif CharName == "christina_6" then
		Graphics.currentChar = Graphics.Char.christina_6
	end
end

function DanceManager(action)
	if action[1] == "key" then
		if Game_Params.gameEnd then
			return
		end
	
		if action[2] == Game_Params.Akey then
			i = 0
			repeat
				i = i+1
				if not Game_Params.Astars[i] then
					return
				end
				star = Game_Params.Astars[i]
			until star.x > Window_Params.targetLine-10
		elseif action[2] == Game_Params.Bkey then
			i = 0
			repeat
				i = i+1
				if not Game_Params.Bstars[i] then
					return
				end
				star = Game_Params.Bstars[i]
			until star.x > Window_Params.targetLine-10
		elseif action[2] == Game_Params.Ckey then
			i = 0
			repeat
				i = i+1
				if not Game_Params.Cstars[i] then
					return
				end
				star = Game_Params.Cstars[i]
			until star.x > Window_Params.targetLine-10
		elseif action[2] == Game_Params.Dkey then
			i = 0
			repeat
				i = i+1
				if not Game_Params.Dstars[i] then
					return
				end
				star = Game_Params.Dstars[i]
			until star.x > Window_Params.targetLine-10
		elseif action[2] == "escape" then
			TitleManager({"start"})
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
			if Game_Params.performance > 80 then
				Game_Params.score = math.floor(Game_Params.score + 100 + (2*Game_Params.performance))
			elseif Game_Params.performance > 30 then
				Game_Params.score = math.floor(Game_Params.score + 100 + Game_Params.performance)
			else
				Game_Params.score = math.floor(Game_Params.score + 100)
			end
			Game_Params.performance = Game_Params.performance + (Game_Params.PerformanceStep*6)
			hitMiss(action[2],"hit")
			updateDoll("next") 
			if action[2] == Game_Params.Akey then
				table.remove(Game_Params.Astars,i)
			elseif action[2] == Game_Params.Bkey then
				table.remove(Game_Params.Bstars,i)
			elseif action[2] == Game_Params.Ckey then
				table.remove(Game_Params.Cstars,i)
			elseif action[2] == Game_Params.Dkey then
				table.remove(Game_Params.Dstars,i)
			end
		else
			love.audio.play(Audio.Sfx.fail)
			Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*16)
			hitMiss(action[2],"miss")
			updateDoll("wrong") 
		end
		if Game_Params.performance > 100 then Game_Params.performance = 100 end
		if Game_Params.performance < 0 then 
			Game_Params.performance = 0 
			Game_Params.gameEnd = true
			Game_Params.gotoDance = false
			GameOverManager({"start"})
			Game_Params.Scene = 4
			return
		end
		
	elseif action[1] == "update" then
		Game_Params.time = Game_Params.time + action[2]
		Game_Params.HitMiss.Atime = Game_Params.HitMiss.Atime + action[2]
		Game_Params.HitMiss.Btime = Game_Params.HitMiss.Btime + action[2]
		Game_Params.HitMiss.Ctime = Game_Params.HitMiss.Ctime + action[2]
		Game_Params.HitMiss.Dtime = Game_Params.HitMiss.Dtime + action[2]
		if not Game_Params.gameEnd then
			Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*action[2])
			if Game_Params.performance < 0 then 
				Game_Params.performance = 0 
				Game_Params.gameEnd = true
				Game_Params.gotoDance = false
				GameOverManager({"start"})
				Game_Params.Scene = 4
			return
			end
		end
		
		if Game_Params.HitMiss.Atime > Game_Params.HitLatency then
			hitMiss("A", "none")
		end
		if Game_Params.HitMiss.Btime > Game_Params.HitLatency then
			hitMiss("B", "none")
		end
		if Game_Params.HitMiss.Ctime > Game_Params.HitLatency then
			hitMiss("C", "none")
		end
		if Game_Params.HitMiss.Dtime > Game_Params.HitLatency then
			hitMiss("D", "none")
		end
		
		for i,v in ipairs(Game_Params.song.stars) do
			if Game_Params.time >= v[2] then
				if v[1] == "end" then
					Game_Params.gameEnd = true
					table.remove(Game_Params.song.stars,i)
					love.audio.rewind(Audio.Sfx.applause)
					love.audio.play(Audio.Sfx.applause)
					return
				elseif v[1] == "quit" then
					--Game_Params.Scene = 0
					--table.remove(Game_Params.song.stars,i)
					--love.load()
					Game_Params.gotoDance = false
					ResultManager({"start"})
					Game_Params.Scene = 3
					return
				elseif v[1] == "start" then
					playSong(Game_Params.song.name)
					table.remove(Game_Params.song.stars,i)
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
				Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*6)
			else
				Game_Params.Astars[i] = v
			end
		end
		for i,v in ipairs(Game_Params.Bstars) do
			speed = (Window_Params.width-40)/Game_Params.StarSpeed
			v.x = v.x - (speed*action[2])
			if v.x < 0 then
				table.remove(Game_Params.Bstars,i)
				Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*6)
			else
				Game_Params.Bstars[i] = v
			end
		end
		for i,v in ipairs(Game_Params.Cstars) do
			speed = (Window_Params.width-40)/Game_Params.StarSpeed
			v.x = v.x - (speed*action[2])
			if v.x < 0 then
				table.remove(Game_Params.Cstars,i)
				Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*6)
			else
				Game_Params.Cstars[i] = v
			end
		end
		for i,v in ipairs(Game_Params.Dstars) do
			speed = (Window_Params.width-40)/Game_Params.StarSpeed
			v.x = v.x - (speed*action[2])
			if v.x < 0 then
				table.remove(Game_Params.Dstars,i)
				Game_Params.performance = Game_Params.performance - (Game_Params.PerformanceStep*6)
			else
				Game_Params.Dstars[i] = v
			end
		end
		
		--print(Game_Params.score)
				
	elseif action[1] == "start" then
		Game_Params.time = 0
		Game_Params.song = loadSong(action[2])
		Game_Params.Astars = {}
		Game_Params.Bstars = {}
		Game_Params.Cstars = {}
		Game_Params.Dstars = {}
		Game_Params.HitMiss = {}
		Game_Params.HitMiss.Ahit = false
		Game_Params.HitMiss.Amiss = false
		Game_Params.HitMiss.Atime = 0
		Game_Params.HitMiss.Bhit = false
		Game_Params.HitMiss.Bmiss = false
		Game_Params.HitMiss.Btime = 0
		Game_Params.HitMiss.Chit = false
		Game_Params.HitMiss.Cmiss = false
		Game_Params.HitMiss.Ctime = 0
		Game_Params.HitMiss.Dhit = false
		Game_Params.HitMiss.Dmiss = false
		Game_Params.HitMiss.Dtime = 0
		Game_Params.dollPos = 0
		Game_Params.performance = 50
		Game_Params.gameEnd = false
		
		playSong("none")
		updateDoll("wrong") 
	end
end

function updateDoll(doll) 
	if doll == "wrong" then
		dollID = ""..Game_Params.song.danceWrong
	elseif doll == "next" then
		Game_Params.dollPos = Game_Params.dollPos + 1
		if Game_Params.dollPos > #Game_Params.song.danceLoop then
			Game_Params.dollPos = 1
		end
		dollID = Game_Params.song.danceLoop[Game_Params.dollPos]
	end
	if dollID == "1" then
		Graphics.currentDoll = Graphics.Doll.doll1
		Graphics.Doll.y = 124
	elseif dollID == "1+" then
		Graphics.currentDoll = Graphics.Doll.doll1
		Graphics.Doll.y = 114
	elseif dollID == "2" then
		Graphics.currentDoll = Graphics.Doll.doll2
		Graphics.Doll.y = 124
	elseif dollID == "2+" then
		Graphics.currentDoll = Graphics.Doll.doll2
		Graphics.Doll.y = 114
	elseif dollID == "3" then
		Graphics.currentDoll = Graphics.Doll.doll3
		Graphics.Doll.y = 124
	elseif dollID == "3+" then
		Graphics.currentDoll = Graphics.Doll.doll3
		Graphics.Doll.y = 114
	elseif dollID == "4" then
		Graphics.currentDoll = Graphics.Doll.doll4
		Graphics.Doll.y = 124
	elseif dollID == "4+" then
		Graphics.currentDoll = Graphics.Doll.doll4
		Graphics.Doll.y = 114
	elseif dollID == "5" then
		Graphics.currentDoll = Graphics.Doll.doll5
		Graphics.Doll.y = 124
	elseif dollID == "5+" then
		Graphics.currentDoll = Graphics.Doll.doll5
		Graphics.Doll.y = 114
	elseif dollID == "6" then
		Graphics.currentDoll = Graphics.Doll.doll6
		Graphics.Doll.y = 124
	elseif dollID == "6+" then
		Graphics.currentDoll = Graphics.Doll.doll6
		Graphics.Doll.y = 114
	elseif dollID == "7" then
		Graphics.currentDoll = Graphics.Doll.doll7
		Graphics.Doll.y = 124
	elseif dollID == "7+" then
		Graphics.currentDoll = Graphics.Doll.doll7
		Graphics.Doll.y = 114
	elseif dollID == "8" then
		Graphics.currentDoll = Graphics.Doll.doll8
		Graphics.Doll.y = 124
	elseif dollID == "8+" then
		Graphics.currentDoll = Graphics.Doll.doll8
		Graphics.Doll.y = 114
	elseif dollID == "9" then
		Graphics.currentDoll = Graphics.Doll.doll9
		Graphics.Doll.y = 124
	elseif dollID == "9+" then
		Graphics.currentDoll = Graphics.Doll.doll9
		Graphics.Doll.y = 114
	elseif dollID == "10" then
		Graphics.currentDoll = Graphics.Doll.doll10
		Graphics.Doll.y = 124
	elseif dollID == "10+" then
		Graphics.currentDoll = Graphics.Doll.doll10
		Graphics.Doll.y = 114
	elseif dollID == "11" then
		Graphics.currentDoll = Graphics.Doll.doll11
		Graphics.Doll.y = 124
	elseif dollID == "11+" then
		Graphics.currentDoll = Graphics.Doll.doll11
		Graphics.Doll.y = 114
	elseif dollID == "12" then
		Graphics.currentDoll = Graphics.Doll.doll12
		Graphics.Doll.y = 124
	elseif dollID == "12+" then
		Graphics.currentDoll = Graphics.Doll.doll12
		Graphics.Doll.y = 114
	elseif dollID == "13" then
		Graphics.currentDoll = Graphics.Doll.doll13
		Graphics.Doll.y = 124
	elseif dollID == "13+" then
		Graphics.currentDoll = Graphics.Doll.doll13
		Graphics.Doll.y = 114
	elseif dollID == "14" then
		Graphics.currentDoll = Graphics.Doll.doll14
		Graphics.Doll.y = 124
	elseif dollID == "14+" then
		Graphics.currentDoll = Graphics.Doll.doll14
		Graphics.Doll.y = 114
	end
end

function hitMiss(step, status)
	if step == Game_Params.Akey or step == "A" then
		if status == "hit" then
			Game_Params.HitMiss.Ahit = true
		elseif status == "miss" then
			Game_Params.HitMiss.Amiss = true
		else
			Game_Params.HitMiss.Ahit = false
			Game_Params.HitMiss.Amiss = false
		end
		Game_Params.HitMiss.Atime = 0
	elseif step == Game_Params.Bkey or step == "B"  then
		if status == "hit" then
			Game_Params.HitMiss.Bhit = true
		elseif status == "miss" then
			Game_Params.HitMiss.Bmiss = true
		else
			Game_Params.HitMiss.Bhit = false
			Game_Params.HitMiss.Bmiss = false
		end
		Game_Params.HitMiss.Btime = 0
	elseif step == Game_Params.Ckey or step == "C" then
		if status == "hit" then
			Game_Params.HitMiss.Chit = true
		elseif status == "miss" then
			Game_Params.HitMiss.Cmiss = true
		else
			Game_Params.HitMiss.Chit = false
			Game_Params.HitMiss.Cmiss = false
		end
		Game_Params.HitMiss.Ctime = 0
	elseif step == Game_Params.Dkey or step == "D" then
		if status == "hit" then
			Game_Params.HitMiss.Dhit = true
		elseif status == "miss" then
			Game_Params.HitMiss.Dmiss = true
		else
			Game_Params.HitMiss.Dhit = false
			Game_Params.HitMiss.Dmiss = false
		end
		Game_Params.HitMiss.Dtime = 0
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

function ResultManager(action)
	if action[1] == "key" then
		if action[2] == " " then
			Game_Params.Scene = 1
			updatePage()
		end
	elseif action[1] == "start" then
		playSong("none")
	end
end

function GameOverManager(action)
	if action[1] == "key" then
		if action[2] == " " then
			TitleManager({"start"})
			Game_Params.Scene = 0
			love.load()
		end
	elseif action[1] == "start" then
		playSong("opening")
	end
end

function CreditManager(action)
	if action[1] == "key" then
		if action[2] == " " then
			Game_Params.currentPage = Game_Params.currentPage + 1
			if Game_Params.currentPage > 4 then
				TitleManager({"start"})
				Game_Params.Scene = 0
				love.load()
			end
		elseif action[2] == "escape" then
			TitleManager({"start"})
			Game_Params.Scene = 0
			love.load()
		end
	elseif action[1] == "start" then
		Game_Params.currentPage = 1
		playSong("eternal")
	end
end