--[[
Ballet-battle — Song resources

Version: 0.0.1
Last update: 27.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            CannonLight Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

function loadSong(songNumber)
	if songNumber == 1 then
		Song = Song1()
	elseif songNumber == 2 then
		Song = Song2()
	end
	return Song
end

function Song1()
	Song = {}
	Song.name = "odile_coda"
	Song.songName = "TEST SONG"
	Song.stars = {
		{"start", 7.5},
		{"A",2},{"D",2.75},
		{"A",3.2},{"D",3.7},
		{"A",4.1},{"D",4.5},
		{"A",4.9},{"D",5.3},
		{"A",5.55},{"D",6.06},
		{"A",6.5},{"D",6.9},
		{"A",7.2},{"B",7.7},
		{"C",8.1},{"B",8.5},
		{"C",8.85},{"B",9.3},
		{"C",9.5},{"B",9.8},
		{"C",10},{"B",10.3},
		{"C",10.7},{"B",11.2},
		{"C",11.6},{"B",12},
		{"C",12.4},{"B",12.75},
		{"B",13.2},{"B",13.5},
		{"B",13.85},{"B",14.4},
		{"B",14.7},{"C",14.7},
		{"B",15.5},{"C",15.5},
		{"B",16.3},{"C",16.3},
		{"B",17.1},{"C",17.1},
		{"B",17.3},{"C",17.3},
		{"B",17.5},{"C",17.5},
		{"A",17.8},{"D",17.8},
		{"A",18.6},{"D",18.6},
		{"A",19.3},{"D",19.3},
		{"A",19.7},{"D",19.7},
		{"A",19.9},{"D",19.9},
		{"A",20.1},{"D",20.1},
		{"A",20.5},{"B",20.5},
		{"A",21.7},{"B",21.7},
		{"A",22.4},{"B",22.4},
		{"A",23.1},{"B",23.1},
		{"A",23.3},{"B",23.3},
		{"A",23.5},{"B",23.5},	
		{"C",23.9},{"D",23.9},
		{"C",24.7},{"D",24.7},
		{"C",25.5},{"D",25.5},
		{"C",25.7},{"D",25.7},
		{"C",26.1},{"D",26.1},
		{"C",26.4},{"D",26.4},
		{"C",26.9},{"D",26.9},
		-- Always add "end" and "quit" far behind the last symbol.
		-- At default StarSpeed, there should be at least 8 seconds gap.
		{"end",35},
		{"quit",38}
	}
	return Song
end


function Song2()
Song = {}
Song.file = "silver_fairy"
Song.songName = "Silver Fairy Variation"
Song.stars = {
	{"A",1},
	{"B",2},
	{"C",2},
	{"D",3},
	{"B",5},
	{"C",5.5},
	{"B",6},
	{"C",6.5},
	{"A",8},
	{"D",8},
	{"A",9},
	{"D",9},
	{"D",10},
	{"C",10.5},
	{"B",11},
	{"A",11.5},
	
	{"end",20},
	{"quit",24}
}
return Song
end