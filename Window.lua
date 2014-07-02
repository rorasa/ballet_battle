--[[
La Ballerina — Window functions

Version: 0.9
Last update: 30.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            Cannon Light Games
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
	love.graphics.setFont(Graphics.Font.system)
	love.graphics.print("La Ballerina "..VersionNo)
	
	-- draw "Press SPACE"
	love.graphics.setFont(Graphics.Font.main)
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
	
	-- draw dancer doll
	love.graphics.setColor(255,255,255,255)
	love.graphics.draw(Graphics.currentDoll, Graphics.Doll.x, Graphics.Doll.y)
	
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

function drawResultWindow()
	-- draw background
	love.graphics.setColor(100,100,100,255)
	love.graphics.draw(Graphics.BG.red_curtain)
	
	-- draw final score
	love.graphics.setColor(255,255,255,255)
	love.graphics.setFont(Graphics.Font.main)
	love.graphics.print("Congratulations!", 300, 200)
	love.graphics.print("Your current score:", 300, 250)
	love.graphics.print(Game_Params.score, 300, 300)
end

function drawGameOverWindow()
	-- draw background
	love.graphics.setColor(255,255,255,255)
	love.graphics.draw(Graphics.BG.game_over)
	
	-- draw final score
	love.graphics.setColor(255,255,255,255)
	love.graphics.setFont(Graphics.Font.main)
	love.graphics.print("Your final score:", 120, 250)
	love.graphics.print(Game_Params.score, 120, 300)
end

function drawCreditWindow()
	-- draw background
	love.graphics.setColor(255,255,255,255)
	love.graphics.draw(Graphics.BG.clara_dance)
	
	-- draw final score
	if Game_Params.currentPage == 1 then
		love.graphics.setColor(255,255,255,255)
		love.graphics.setFont(Graphics.Font.main)
		love.graphics.print("Congratulations!", 500, 200)
		love.graphics.print("Your final score:", 500, 250)
		love.graphics.print(Game_Params.score, 500, 300)
	elseif Game_Params.currentPage == 2 then
		love.graphics.setColor(255,255,255,255)
		love.graphics.setFont(Graphics.Font.main)
		love.graphics.print("La Ballerina", 400, 200)
		love.graphics.print("Developed by Cannon Light Games", 400, 250)
		love.graphics.print("Game design: Wattanit Hotrakool", 400, 280)
		love.graphics.print("Story: Wattanit Hotrakool", 400, 310)
		love.graphics.print("Character design: Thanrada Mungthanya", 400, 340)		
	elseif Game_Params.currentPage == 3 then
		love.graphics.setColor(255,255,255,255)
		love.graphics.setFont(Graphics.Font.main)
		love.graphics.print("Graphics: Wattanit Hotrakool", 400, 200)
		love.graphics.print("Level design: Thanrada Mungthanya", 400, 230)
		love.graphics.print("Ballet advisor: Thanrada Mungthanya", 400, 260)
		love.graphics.print("Programming: Wattanit Hotrakool", 400, 290)
	elseif Game_Params.currentPage == 4 then
		love.graphics.setColor(255,255,255,255)
		love.graphics.setFont(Graphics.Font.main)
		love.graphics.print("Thank you for playing.", 500, 250)
	end
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
	-- load clara_dance BG
	Graphics.BG.clara_dance = love.graphics.newImage("/images/BG/Clara_dance.png")
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
	-- load final_battle BG
	Graphics.BG.final_battle = love.graphics.newImage("/images/BG/final_battle.png")
	-- load red_curtain BG
	Graphics.BG.red_curtain = love.graphics.newImage("/images/BG/red_cutain.png")
	-- load game over BG
	Graphics.BG.game_over = love.graphics.newImage("/images/BG/game_over.png")
	-- load tutorial BG
	Graphics.BG.tutorial_1 = love.graphics.newImage("/images/BG/tutorial_1.png")
	Graphics.BG.tutorial_2 = love.graphics.newImage("/images/BG/tutorial_2.png")
	Graphics.BG.tutorial_3 = love.graphics.newImage("/images/BG/tutorial_3.png")
	Graphics.BG.tutorial_4 = love.graphics.newImage("/images/BG/tutorial_4.png")
	Graphics.BG.tutorial_5 = love.graphics.newImage("/images/BG/tutorial_5.png")
	Graphics.BG.tutorial_6 = love.graphics.newImage("/images/BG/tutorial_6.png")
	
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
	
	-- load dancer dolls
	Graphics.Doll = {}
	Graphics.currentDoll = {}
	Graphics.Doll.x = 300
	Graphics.Doll.y = 124
	Graphics.Doll.doll1 = love.graphics.newImage("/images/Char/dance_1.png")
	Graphics.Doll.doll2 = love.graphics.newImage("/images/Char/dance_2.png")
	Graphics.Doll.doll3 = love.graphics.newImage("/images/Char/dance_3.png")
	Graphics.Doll.doll4 = love.graphics.newImage("/images/Char/dance_4.png")
	Graphics.Doll.doll5 = love.graphics.newImage("/images/Char/dance_5.png")
	Graphics.Doll.doll6 = love.graphics.newImage("/images/Char/dance_6.png")
	Graphics.Doll.doll7 = love.graphics.newImage("/images/Char/dance_7.png")
	Graphics.Doll.doll8 = love.graphics.newImage("/images/Char/dance_8.png")
	Graphics.Doll.doll9 = love.graphics.newImage("/images/Char/dance_9.png")
	Graphics.Doll.doll10 = love.graphics.newImage("/images/Char/dance_10.png")
	Graphics.Doll.doll11 = love.graphics.newImage("/images/Char/dance_11.png")
	Graphics.Doll.doll12 = love.graphics.newImage("/images/Char/dance_12.png")
	Graphics.Doll.doll13 = love.graphics.newImage("/images/Char/dance_13.png")
	Graphics.Doll.doll14 = love.graphics.newImage("/images/Char/dance_14.png")
	
	-- load star graphics
	Graphics.Star = love.graphics.newImage("/images/star.png")
	
	Graphics.currentChar = Graphics.Char.none
	Graphics.currentDoll = Graphics.Doll.doll7

end
