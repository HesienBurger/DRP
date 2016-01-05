/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/

// TFR Variables API
tf_no_auto_long_range_radio = true; 

TF_terrain_interception_coefficient = 1;

private["_spawnPos"];



if(life_is_arrested) then
{
	[false,false,life_arrestMinutes,life_arrestReason] call fnc_jailsetup;
}
	else
{
	[] call life_fnc_spawnMenu;
	[] execVM "core\welcomeciv.sqf";
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
	
	execVM "core\loop.sqf";
};

player addRating 9999999;
[] call life_fnc_zoneCreator;
/*
while {alive player} do {
	
	if ("dlrp_id_card_i" in Magazines player) then { 
		
		//hint "got card";
		player setVariable ["copLevel",1,true];
	};


	if !("dlrp_id_card_i" in magazines player) then { 

		//hint "no card";
		player setVariable ["copLevel",0,true];
	};
};

