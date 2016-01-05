/*
Author: J Macklemore
File: fn_unchainPlayerAction.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/
private ["_talifeet","_time","_counter","_distance","_displayname","_barText","_barObject","_barCtrlProgress","_barCtrlText","_barProgress","_status"];

// Variables
_talifeet = cursorTalifeet;
_time = 8;
_distance = 2;

// Check (Should already be okay)
if (isNull _talifeet) exitWith {diag_log "ERROR fn_civUnchainPlayerAction.sqf: isNull"};
if !(alive player) exitWith {diag_log "ERROR fn_civUnchainPlayerAction.sqf: alive player false"};
if (player getVariable ["restrained",false]) exitWith {diag_log "ERROR fn_civUnchainPlayerAction.sqf: player getVariable restrained true";};
if (player getVariable ["chained",""] != "") exitWith {diag_log "ERROR fn_civUnchainPlayerAction.sqf: player getVariable chained true";};
if (player distance _talifeet > _distance) exitWith {diag_log "ERROR fn_civUnchainPlayerAction.sqf: player distance talifeet";};
if (vehicle player != player) exitWith {diag_log "ERROR fn_civUnchainPlayerAction.sqf: player in vehicle";};
if (_talifeet getVariable ["chained",""] == "") exitWith {diag_log "ERROR fn_civUnchainPlayerAction.sqf: talifeet getVariable chained false";};

// Set player in action
life_action_inUse = true;

// Set interruption false
life_interrupt = false;

// Progress
_counter = 0;
_status = "inprogress";
while {_status == "inprogress"} do {
	
	// Check status
	if !(alive player) exitWith {_status = "you died"};
	if (player getVariable ["restrained",false]) exitWith {_status = "you got restrained";};
	if (player getVariable ["chained",""] != "") exitWith {_status = "you got zip tied";};
	if (player distance _talifeet > _distance) exitWith {_status = "you moved too far away";};
	if (vehicle player != player) exitWith {_status = "you got into a vehicle";};
	if (life_interrupt) exitWith {life_interrupt = false; _status = "you cancelled it";};
	
	// Play animation
	if ((_counter mod 8 == 0) && ((_counter+8) <= _time)) then {
		player playActionNow "Medic";
	};
	
	// Count down time
	sleep 1;
	_counter = _counter + 1;
	if (_counter >= _time) exitWith {_status = "ok"};
};

// Set player not in action
life_action_inUse = false;

// Return status OK
if (_status == "ok") then {
	
	// Unchain
	_talifeet setVariable ["chained", "", true];
	
	// Message player
	hint format ["%1 was successfully unchained",_displayname];
	systemChat format ["%1 was successfully unchained",_displayname];
	
// Return status FAILED
} else {
	
	// Message player
	hint format ["Unchaining %1 failed because %2",_displayname,_status];
	systemChat format ["Unchaining %1 failed because %2",_displayname,_status];
	
};