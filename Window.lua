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
	love.graphics.print("Press SPACE to begin", 310, 2*Window_Params.height/3)
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
	love.graphics.draw(Graphics.Classroom.bg)
	--love.graphics.rectangle("fill", 0, 0, Window_Params.width, Window_Params.height )
	
	-- draw Performance bar
	love.graphics.setColor(0,50,255,255)
	love.graphics.rectangle("fill", 401, 0, 400, 25)
	if Game_Params.performance >80 then
		love.graphics.setColor(51,204,51,255)
	elseif Game_Params.performance > 30 then
		love.graphics.setColor(102,204,255,255)
	else
		love.graphics.setColor(204,0,0,255)
	end
	love.graphics.rectangle("fill", 401, 5, math.floor(Game_Params.performance*4), 15)
	
	
	-- draw Stage background
	love.graphics.setColor(0,50,255,255)
	love.graphics.rectangle("fill", 20, Window_Params.height-180, Window_Params.width-40, 160 )
	
	-- draw Stars
	love.graphics.setColor(255,0,0,255)
	for i,v in ipairs(Game_Params.Astars) do
		love.graphics.circle("fill", v.x, v.y, 10, 50)
	end
	for i,v in ipairs(Game_Params.Bstars) do
		love.graphics.circle("fill", v.x, v.y, 10, 50)
	end
	for i,v in ipairs(Game_Params.Cstars) do
		love.graphics.circle("fill", v.x, v.y, 10, 50)
	end
	for i,v in ipairs(Game_Params.Dstars) do
		love.graphics.circle("fill", v.x, v.y, 10, 50)
	end
	
	-- draw Stage edges
	love.graphics.setColor(255,255,255,255)
	love.graphics.setLineWidth( 4 )
	love.graphics.rectangle("line", 20, Window_Params.height-180, Window_Params.width-40, 160 )
	love.graphics.setColor(255,255,255,175)
	love.graphics.setLineWidth( 2 )
	love.graphics.line(20, Window_Params.height-140, Window_Params.width-20, Window_Params.height-140)
	love.graphics.line(20, Window_Params.height-100, Window_Params.width-20, Window_Params.height-100)
	love.graphics.line(20, Window_Params.height-60, Window_Params.width-20, Window_Params.height-60)
	
	love.graphics.line(Window_Params.targetLine, Window_Params.height-180, Window_Params.targetLine, Window_Params.height-20)
	
	-- draw star concealers
	love.graphics.setColor(150,200,255,255)
	love.graphics.rectangle("fill", 0,  Window_Params.height-180, 18, 160 )
	love.graphics.rectangle("fill", Window_Params.width-18,  Window_Params.height-180, 18, 160 )
end

function loadGraphics()
	
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
	
	-- load Classroom graphics
	Graphics.Classroom = {}
	Graphics.Classroom.bg = love.graphics.newImage("/images/BG/mel_school_inside.png")
	
	Graphics.currentChar = Graphics.Char.none

end
