// TFR Variables API
tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;
  

// Server SetVariables
if (isServer) then {
	bank setvariable ["robbed",false,true];
	stash1 setvariable ["robbed",false,true];
	stash2 setvariable ["robbed",false,true];
	stash3 setvariable ["robbed",false,true];
	stash4 setvariable ["robbed",false,true];
};

// Different depending on server
//tf_radio_channel_name = "ArmA 3 Life - US #1";
//tf_radio_channel_name = "ArmA 3 Life - EU #1";

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "ArmA 3 Life 0.3.2";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "orangemenu\orangeinit2.sqf";
[] execVM "orangemenu\orangeinit4.sqf";

// heisen execute stuff

//execVM "heisen_execute.sqf"; // ID Card thing

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
setTerrainGrid 50;
//RoccoClean
[
    8*60, // seconds to delete dead bodies (0 means don't delete) 
    2*60, // seconds to delete dead vehicles (0 means don't delete)
    20*60, // seconds to delete immobile vehicles (0 means don't delete)
    1*60, // seconds to delete dropped weapons (0 means don't delete)
    20*60, // seconds to deleted planted explosives (0 means don't delete)
    2*60 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM "scripts\repetitive_cleanup.sqf";

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

*/
