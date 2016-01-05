/*
Author: J Macklemore
File: fn_chained.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/

private ["_unit","_nearVehicles"];

_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if (isNull _unit) exitWith {};

//Tells Player They Are Chained
titleText [format ["You have been chained by %1", name _unit], "PLAIN"];

//Puts Chained Player Into Animation
while { (player getVariable ["chained", ""] != "") } do {
	player playMove "AmovPercMstpSnonWnonDnon_Ease";
	waitUntil { animationState player != "AmovPercMstpSnonWnonDnon_Ease" || (player getVariable ["chained", ""] == "") };
	
	// Check if player in driver seat of a vehicle.
	if (vehicle player != player && (driver vehicle player == player)) then {
		player action ["Eject", vehicle player];
	};
	
	// Check if player still alive.
	if (!alive player) then {
		player setVariable ["chained", "", true];
	};
};

//Releases Player
if (alive player) then {
	titleText ["You have been released.", "PLAIN"];
	player playMoveNow "AmovPercMstpSnonWnonDnon_EaseOut";
};