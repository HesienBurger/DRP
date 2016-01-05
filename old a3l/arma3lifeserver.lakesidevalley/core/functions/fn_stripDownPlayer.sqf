// test if it works - 03/01/2016

private ["_player"];

_player = player;

_script = _player addAction ["Seize Contraband","\heisen_scripts\seized.sqf"];

_myStuff = weapons cursorTarget;
_myMags = magazines cursorTarget;

if (count (_myStuff+_myMags)>0) then 
{
_box = createVehicle ["groundWeaponHolder", player modelToWorld [0,0.8,0], [], 0.5, "CAN_COLLIDE"];
_box setDir floor (random 360);


{
_box addWeaponCargoGlobal [_x, 1];
cursorTarget removeWeapon _x;
} forEach _myStuff;
{
_box addMagazineCargoGlobal [_x, 1];
cursorTarget removeItem _x; 
} forEach _myMags;


cursorTarget reveal _box;
};

hint "Removing Seize option in 30 seconds.";
sleep 30;

_player removeAction  _script;

/*
	File: fn_stripDownPlayer.sqf
	Author: Tobias 'Xetoxyc' Sittenauer

	Description: Strip the player down

RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;

{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

if(hmd player != "") then {
	player unlinkItem (hmd player);
};

*/