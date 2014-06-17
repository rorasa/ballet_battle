--[[
Ballet-battle — Scene manager functions

Version: 0.0.1
Last update: 16.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            CannonLight Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

function GameManager(action)

	if Game_Params.Scene == 0 then
		TitleManager(action)
	elseif Game_Params.Scene == 2 then
		DanceManager(action)
	end
	
end

function TitleManager(action)
	if action[1] == "mouse" then
		Game_Params.Scene = 2
		DanceManager({"start"})
	elseif action[1] == "key" then
		if action[2] == " " then
			Game_Params.Scene = 2
			DanceManager({"start"})
		end
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
