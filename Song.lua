--[[
Ballet-battle — Song resources

Version: 0.0.1
Last update: 16.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            CannonLight Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]
function loadSongHello()
SongHello = {}
SongHello.file = ""
SongHello.songName = "Hello"
SongHello.stars = {
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
	-- Always add "end" and "quit" far behind the last symbol.
	-- At default StarSpeed, there should be at least 8 seconds gap.
	{"end",20},
	{"quit",24}
}
return SongHello
end