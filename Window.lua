--[[
Ballet-battle — Window functions

Version: 0.0.1
Last update: 24.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            CannonLight Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

--========================= Draw window functions ==============================
function drawTitleWindow()
	-- draw background
	love.graphics.setColor(255,255,255,255)
	love.graphics.draw(Graphics.Title.bg)
	--love.graphics.rectangle("fill", 0, 0, Window_Params.width, Window_Params.height )
	
	-- draw logo
	love.graphics.draw(Graphics.Title.logo,130,100)
	
	-- draw version no
	love.graphics.setFont(Graphics.Font.system);
	love.graphics.print("Ballet Battle "..VersionNo)
	
	-- draw "Press SPACE"
	love.graphics.setFont(Graphics.Font.main);
	love.graphics.print("Press SPACE to select", 310, 2*Window_Params.height/3)
	
	-- draw New Game menu
	if Window_Params.titleMenu == 1 then
		alpha = 255
	else
		alpha = 150
	end
	love.graphics.setColor(0,20,80,alpha)
	love.graphics.rectangle("fill", 300, 430, 200, 40 )
	love.graphics.setColor(150,100,0,255)
	love.graphics.setLineWidth( 2 )
	love.graphics.rectangle("line", 300, 430, 200, 40 )
	love.graphics.setColor(255,255,255,alpha)
	love.graphics.print("New Game", 355, 435 )
	
	-- draw Continue menu
	if Window_Params.titleMenu == 2 then
		alpha = 255
	else
		alpha = 150
	end
	love.graphics.setColor(0,20,80,alpha)
	love.graphics.rectangle("fill", 300, 490, 200, 40 )
	love.graphics.setColor(150,100,0,255)
	love.graphics.setLineWidth( 2 )
	love.graphics.rectangle("line", 300, 490, 200, 40 )
	love.graphics.setColor(255,255,255,alpha)
	love.graphics.print("Continue", 365, 495 )
	
	
end

function drawStoryWindow()
	-- draw background
	love.graphics.setColor(255,255,255,255)
	love.graphics.draw(Graphics.currentBG)
	--love.graphics.rectangle("fill", 0, 0, Window_Params.width, Window_Params.height )
	
	-- draw character
	love.graphics.draw(Graphics.currentChar, 300,120)
	
	-- draw text window
	love.graphics.setColor(0,50,255,150)
	love.graphics.rectangle("fill", 20, Window_Params.height-180, Window_Params.width-40, 160 )
	
	-- draw character name
	love.graphics.setColor(255,255,255,255)
	love.graphics.print(Game_Params.Page.character, 40, Window_Params.height-175)
	
	-- draw text
	if Window_Params.text then
		love.graphics.print(Window_Params.text, 40, Window_Params.height-155)
	end
	
end

function drawDanceWindow()
	-- draw background
	love.graphics.setColor(255,255,255,255)
	love.graphics.draw(Graphics.currentBG)
	
	-- draw Top bar
	love.graphics.setColor(19,42,117,200)
	love.graphics.rectangle("fill", 0, 0, 800, 25)
	love.graphics.setColor(255,255,255,255)
	love.graphics.print("Performance", 292, 0)
	love.graphics.print("Score", 10, 0)
	love.graphics.print(Game_Params.score, 100, 0)
	if Game_Params.performance >80 then
		love.graphics.setColor(51,204,51,255)
	elseif Game_Params.performance > 30 then
		love.graphics.setColor(226,185,71,255)
	else
		love.graphics.setColor(204,0,0,255)
	end
	love.graphics.rectangle("fill", 401, 5, math.floor(Game_Params.performance*4), 15)
	
	
	-- draw Stage background
	love.graphics.setColor(19,42,117,255)
	love.graphics.rectangle("fill", 20, Window_Params.height-180, Window_Params.width-40, 160 )
	love.graphics.setColor(102,133,221,200)
	love.graphics.print("A", 40, Window_Params.height-172)
	love.graphics.print("B", 40, Window_Params.height-132)
	love.graphics.print("C", 40, Window_Params.height-92)
	love.graphics.print("D", 40, Window_Params.height-52)
	
	-- draw Stars
	love.graphics.setColor(255,255,255,255)
	for i,v in ipairs(Game_Params.Astars) do
		love.graphics.draw(Graphics.Star, v.x-12.5, v.y-12.5)
	end
	for i,v in ipairs(Game_Params.Bstars) do
		love.graphics.draw(Graphics.Star, v.x-12.5, v.y-12.5)
	end
	for i,v in ipairs(Game_Params.Cstars) do
		love.graphics.draw(Graphics.Star, v.x-12.5, v.y-12.5)
	end
	for i,v in ipairs(Game_Params.Dstars) do
		love.graphics.draw(Graphics.Star, v.x-12.5, v.y-12.5)
	end
	
	-- draw Stage edges
	love.graphics.setColor(229,200,81,255)
	love.graphics.setLineWidth( 4 )
	love.graphics.rectangle("line", 20, Window_Params.height-180, Window_Params.width-40, 160 )
	love.graphics.setColor(229,200,81,175)
	love.graphics.setLineWidth( 2 )
	love.graphics.line(20, Window_Params.height-140, Window_Params.width-20, Window_Params.height-140)
	love.graphics.line(20, Window_Params.height-100, Window_Params.width-20, Window_Params.height-100)
	love.graphics.line(20, Window_Params.height-60, Window_Params.width-20, Window_Params.height-60)
	
	love.graphics.setColor(255,255,255,255)
	love.graphics.setLineWidth( 3 )
	love.graphics.line(Window_Params.targetLine, Window_Params.height-180, Window_Params.targetLine, Window_Params.height-20)
	
	-- draw hit-miss rings
	if Game_Params.HitMiss.Ahit then
		love.graphics.setColor(51,204,51,255)
		love.graphics.circle("line", Window_Params.targetLine, Window_Params.height-160, 15, 50)
	end
	if Game_Params.HitMiss.Amiss then
		love.graphics.setColor(211,0,0,255)
		love.graphics.circle("line", Window_Params.targetLine, Window_Params.height-160, 15, 50)
	end
	if Game_Params.HitMiss.Bhit then
		love.graphics.setColor(51,204,51,255)
		love.graphics.circle("line", Window_Params.targetLine, Window_Params.height-120, 15, 50)
	end
	if Game_Params.HitMiss.Bmiss then
		love.graphics.setColor(211,0,0,255)
		love.graphics.circle("line", Window_Params.targetLine, Window_Params.height-120, 15, 50)
	end
	if Game_Params.HitMiss.Chit then
		love.graphics.setColor(51,204,51,255)
		love.graphics.circle("line", Window_Params.targetLine, Window_Params.height-80, 15, 50)
	end
	if Game_Params.HitMiss.Cmiss then
		love.graphics.setColor(211,0,0,255)
		love.graphics.circle("line", Window_Params.targetLine, Window_Params.height-80, 15, 50)
	end
	if Game_Params.HitMiss.Dhit then
		love.graphics.setColor(51,204,51,255)
		love.graphics.circle("line", Window_Params.targetLine, Window_Params.height-40, 15, 50)
	end
	if Game_Params.HitMiss.Dmiss then
		love.graphics.setColor(211,0,0,255)
		love.graphics.circle("line", Window_Params.targetLine, Window_Params.height-40, 15, 50)
	end
	
	-- draw star concealers
	love.graphics.setColor(19,42,117,255)
	love.graphics.rectangle("fill", 0,  Window_Params.height-182, 18, 164 )
	love.graphics.rectangle("fill", Window_Params.width-18,  Window_Params.height-182, 18, 164 )
end

function loadGraphics()
	
	Graphics = {}
	
	-- load custom font
	Graphics.Font = {}
	Graphics.Font.main = love.graphics.newFont("baskvl.ttf",20)
	Graphics.Font.system = love.graphics.newFont(12)
	
	-- load Title graphics
	Graphics.Title = {}
	Graphics.Title.bg = love.graphics.newImage("/images/BG/title_bg.jpg")
	Graphics.Title.logo = love.graphics.newImage("/images/BG/title_logo.png")
	
	-- load background graphics
	Graphics.BG = {}
	Graphics.currentBG = {}
	
	-- load black_screen BG
	Graphics.BG.black_screen = love.graphics.newImage("/images/BG/black_screen.png")
	-- load christinas_dance BG
	Graphics.BG.christinas_dance = love.graphics.newImage("/images/BG/christinas_dance.png")
	-- load game_logo_screen BG
	Graphics.BG.game_logo_screen = love.graphics.newImage("/images/BG/game_logo_screen.png")
	-- load park BG
	Graphics.BG.park = love.graphics.newImage("/images/BG/park.png")
	-- load mel_school_outside BG
	Graphics.BG.mel_school_outside = love.graphics.newImage("/images/BG/mel_school_outside.png")
	-- load mel_school_inside BG
	Graphics.BG.mel_school_inside = love.graphics.newImage("/images/BG/mel_school_inside.png")
	-- load christina_school_outside BG
	Graphics.BG.christina_school_outside = love.graphics.newImage("/images/BG/christina_school_outside.png")
	-- load christina_school_inside BG
	Graphics.BG.christina_school_inside = love.graphics.newImage("/images/BG/christina_school_inside.png")
	-- load red_hall_inside BG
	Graphics.BG.red_hall_inside = love.graphics.newImage("/images/BG/red_hall_inside.jpg")
	
	
	-- load character faces graphics
	Graphics.Char = {}
	Graphics.currentChar = {}
	-- load empty face
	Graphics.Char.none = love.graphics.newImage("/images/Char/none.png")
	-- load clara faces
	Graphics.Char.clara_1 =  love.graphics.newImage("/images/Char/clara_1.png")
	Graphics.Char.clara_2 =  love.graphics.newImage("/images/Char/clara_2.png")
	Graphics.Char.clara_3 =  love.graphics.newImage("/images/Char/clara_3.png")
	Graphics.Char.clara_4 =  love.graphics.newImage("/images/Char/clara_4.png")
	Graphics.Char.clara_5 =  love.graphics.newImage("/images/Char/clara_5.png")
	Graphics.Char.clara_6 =  love.graphics.newImage("/images/Char/clara_6.png")
	-- load mel faces
	Graphics.Char.mel_1 = love.graphics.newImage("/images/Char/mel_1.png")
	Graphics.Char.mel_2 = love.graphics.newImage("/images/Char/mel_2.png")
	-- load lawrance faces
	Graphics.Char.lawrance_1 = love.graphics.newImage("/images/Char/lawrance_1.png")
	Graphics.Char.lawrance_2 = love.graphics.newImage("/images/Char/lawrance_2.png")
	-- load christina faces
	Graphics.Char.christina_1 = love.graphics.newImage("/images/Char/christina_1.png")
	Graphics.Char.christina_2 = love.graphics.newImage("/images/Char/christina_2.png")
	Graphics.Char.christina_3 = love.graphics.newImage("/images/Char/christina_3.png")
	Graphics.Char.christina_4 = love.graphics.newImage("/images/Char/christina_4.png")
	Graphics.Char.christina_5 = love.graphics.newImage("/images/Char/christina_5.png")
	Graphics.Char.christina_6 = love.graphics.newImage("/images/Char/christina_6.png")
	
	-- load Classroom graphics
	Graphics.Star = love.graphics.newImage("/images/star.png")
	
	Graphics.currentChar = Graphics.Char.none

end
