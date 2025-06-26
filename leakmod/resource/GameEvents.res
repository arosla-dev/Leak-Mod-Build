//=========== (C) Copyright 1999 Valve, L.L.C. All rights reserved. ===========
//
// The copyright to the contents herein is the property of Valve, L.L.C.
// The contents may be used and/or copied only with the written permission of
// Valve, L.L.C., or in accordance with the terms and conditions stipulated in
// the agreement/contract under which the contents have been supplied.
//=============================================================================

// Don't change "server_*" events ! No spaces in event names !

"gameevents"
{
	"server_spawn"				// send once a new map started
	{
		"eventid"	"1"
		"priority"	"15"
		
		"hostname"	"string"	// public host name
		"address"	"string"	// hostame, IP or DNS name	
		"port"		"short"		// server port
		"game"		"string"	// game dir 
		"mapname"	"string"	// map name
		"startdate"	"string"	// current day yy.mm.dd
		"startime"	"string"	// current time hh:mm:ss
		"maxplayers"	"long"		// max players
		"os"		"string"	// WIN32, LINUX
		"dedicated"	"bool"		// true if dedicated server
		"password"	"bool"		// true if password protected
	}
	
	"server_shutdown" 			// server shut down	
	{
		"eventid"	"2"
		"priority"	"15"		

		"reason"	"string"	// reason why server was shut down
	}
	
	"server_cvar" 				// a server console var has changed
	{
		"eventid"	"3"
		"priority"	"1"		// event prioity for HLTV 0...15
		
		"cvarname"	"string"	// cvar name, eg "mp_roundtime"		
		"cvarvalue"	"string"	// new cvar value
	}
	
	"server_message"			// a generic server message
	{
		"eventid"	"4"
		"priority"	"3"
		
		"text"		"string"	// the message text
	}
	
	"team_info"				// info about team
	{
		"eventid"	"6"
		"priority"	"15"
		
		"teamid"	"byte"		// unique team id
		"teamname"	"string"	// team name eg "Team Blue"
	}
	
	"team_score"				// team score changed
	{
		"eventid"	"7"
		"priority"	"15"
		
		"teamid"	"byte"		// team id
		"score"		"short"		// total team score
	}
	
	"player_connect"			// a new client connected
	{
		"eventid"	"8"
		"priority"	"15"
				
		"userid"	"long"		// user ID on server
		"name"		"string"	// player name
		"address"	"string"	// ip:port
	}
	
	"player_name"				// a player changed his name
	{
		"eventid"	"9"
		"priority"	"15"
		
		"userid"	"long"		// user ID on server
		"name"		"string"	// new player name
	}
	
	"player_team"				// player change his team
	{
		"eventid"	"10"
		"priority"	"3"
		
		"userid"	"long"		// user ID on server
		"team"		"byte"		// new player team
	}
	
	"player_class"				// a player changed his class
	{
		"eventid"	"11"
		"priority"	"15"
		
		"userid"	"long"		// user ID on server
		"class"		"string"	// new player class / model
	}
	
	"player_disconnect"			// a client was disconnected
	{
		"eventid"	"12"
		"priority"	"15"
		
		"userid"	"long"		// user ID on server
		"reason"	"string"	// "self", "kick", "ban", "cheat", "error"
	}
		
	"player_death"				// a game event, name may be 32 charaters long
	{
		"eventid"	"13"
		"priority"	"7"		// event prioity for HLTV 0...15
						
		"killer"	"byte"	 	// player index who killed
		"victim"	"byte"   	// player index who died
		"weapon"	"string" 	// weapon name killed used 
		"teammate"	"bool"		// true, if victim was player's teammate
	}
	
	"player_chat"				// a player chats
	{
		"eventid"	"14"
		"priority"	"3"
		
		"team"		"bool"		// true if team only chat
		"player" 	"byte"		// chatting player 
		"text" 	 	"string"	// chat text
	}
	
	"player_score"				// players scores changed
	{
		"eventid"	"15"
		"priority"	"3"
		
		"userid"	"long"		// user ID on server
		"kills"		"short"		// # of kills
		"deaths"	"short"		// # of deaths
		"score"		"short"		// total game score
	}
	
	"player_health"				// players health changed
	{
		"eventid"	"16"
		"priority"	"3"
		
		"userid"	"long"		// user ID on server
		"health"	"byte"		// new player health
	}
	
	"player_radio"				// player used radio command
	{
		"eventid"	"17"
		"priority"	"3"
		
		"userid"	"long"		// user ID on server
		"team"		"bool"		// team only
		"command"	"string"	// radio command ID
	}
	
	"player_death"
	{
		"eventid"	"18"
		"priority"	"3"
		
		"userid"	"long"		// user ID on server
		"killer"	"long"		// killer ID
		"weapon"	"string"	// radio command ID
		"teammate"	"bool"		// killer was a teammate
	}
	
	"player_spawn"				// player spawned in game
	{
		"eventid"	"19"
		"priority"	"3"
		
		"userid"	"long"		// user ID on server
	}
	
	"player_shoot"				// player shoot his weapon
	{
		"eventid"	"20"
		"priority"	"3"
		
		"userid"	"long"		// user ID on server
		"weapon"	"byte"
	}
	
	"player_position"			// player position, DON'T send this continuously
	{
		"eventid"	"21"
		"priority"	"3"
		
		"userid"	"long"		// user ID on server
		
		"origin_x"	"float"		// players position
		"origin_y"	"float"
		"origin_z"	"float"
		
		"angle_x"	"float"		// players view angles
		"angle_x"	"float"
	}
	
	"game_newmap"				// send when new map is completely loaded
	{
		"eventid"	"22"
		"priority"	"15"
		
		"mapname"	"string"	// map name
	}
	
	"game_start"				// a new game starts
	{
		"eventid"	"23"
		"priority"	"3"
		
		"roundslimit"	"long"		// max round
		"timelimit"	"long"		// time limit
		"fraglimit"	"long"		// frag limit
	}
	
	"game_end"				// a game ended
	{
		"eventid"	"24"
		"priority"	"3"
		
		"winner"	"long"		// winner user id
		"winnerteam"	"byte"		// winner team id
	}
	
	"game_newround"
	{
		"eventid"	"25"
		"priority"	"3"
		
		"timelimit"	"long"		// round time limit in seconds
		"fraglimit"	"long"		// frag limit in seconds
		"objective"	"string"	// round objective
	}
	
	"game_endround"
	{
		"eventid"	"26"
		"priority"	"3"
		
		"winner"	"long"		// winner user id
		"winnerteam"	"byte"		// winner team id
		"reason"	"string"	// reson why team won
	}
	
	"game_message"				// a message send by game logic
	{
		"eventid"	"27"
		"priority"	"3"
		
		"target"	"byte"		// 0 = console, 1 = HUD
		"text"		"string"	// the message text
	}
	
	"cstrike_bomb_owner"
	{
		"eventid"	"0"
		"priority"	"3"
	}
	
	"cstrike_bomb_defuse"
	{
		"eventid"	"0"
		"priority"	"3"
	}
	
	"cstrike_bomb_explode"
	{
		"eventid"	"0"
		"priority"	"3"
	}
	
	"cstrike_bomb_planted"
	{
		"eventid"	"0"
		"priority"	"3"
	}
	
	"cstrike_vip_escape"
	{
		"eventid"	"0"
		"priority"	"3"
	}
	
	"cstrike_vip_death"
	{
		"eventid"	"0"
		"priority"	"3"
	}
	
	"cstrike_vip_"
	{
		"eventid"	"0"
		"priority"	"3"
	}
}