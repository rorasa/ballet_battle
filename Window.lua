--[[
Ballet-battle — Window functions

Version: 0.0.1
Last update: 16.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            CannonLight Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

--========================= Draw window functions ==============================
function drawTitleWindow()
	-- draw background
	love.graphics.setColor(255,255,255,255)
	love.graphics.rectangle("fill", 0, 0, Window_Params.width, Window_Params.height )
	
	-- draw version no
	love.graphics.setColor(0,0,0,255)
	love.graphics.print("Ballet Battle "..VersionNo)
	
	-- draw "Press SPACE"
	love.graphics.print("Press SPACE to begin", 2*Window_Params.width/3, 2*Window_Params.height/3)
end

function drawDanceWindow()
	-- draw background
	love.graphics.setColor(150,200,255,255)
	love.graphics.rectangle("fill", 0, 0, Window_Params.width, Window_Params.height )
	
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

