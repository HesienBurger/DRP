/*
Author: J Macklemore
Based On: MrKrakens Surrender Script
File: fn_surrender.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/
private ["_pos"];

//Closes open Menus
closeDialog 0;

//Sets Variable
player setVariable ["surrender", true, true];

//Plays Move
while { player getVariable ["surrender", false] } do {
	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon";
	
	// Check if player still alive.
	if (!alive player || player getVariable ["restrained", false] || (player getVariable ["chained", ""] != "")) exitWith {
		player setVariable ["surrender", false, true];
	};
};

//Exits Animation
player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";
