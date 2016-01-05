[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		if(!life_is_arrested) then { 
			life_hunger = life_hunger - 10;
		};
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	_fnc_battery =   
	{
		if(life_battery < 2) then {hint "Your battery is empty.";}
		else
		{
			_batloss = round (random 8);
			life_battery = life_battery - _batloss;
			[] call life_fnc_hudUpdate;
			if(life_battery < 1) then {hint "Your battery is empty.";};
			switch(life_battery) do 
			{
				case 30: {hint "Battery 30%.";};
				case 20: {hint "Battery 20%.";};
				case 10: {hint "Battery 10%."; playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];};
				case 5: {hint "Battery 5%."; playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];};
				case 3: {hint "Battery 3%."; playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];};
				case 1: {hint "Battery 1%."; playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];};
			};
		};
	};

	_fnc_karma =   
	{
			if(!life_is_arrested) then { 
				_karma = round (random 5);
				life_karma = life_karma + _karma;
			};
			_karma = round (random 5);
			life_poop = life_poop + _karma;
			_karma = round (random 5);
			life_dirt = life_dirt + _karma;
	};



	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			if(!life_is_arrested) then { 
			life_thirst = life_thirst - 10;
			};
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 420;
		if (life_eattotal > 9) then {
			life_eattotal = life_eattotal - 10;
		};
		[] call _fnc_water;
		[] call _fnc_battery; 
		[] call _fnc_karma;
		sleep 420;
		if (life_eattotal > 9) then {
			life_eattotal = life_eattotal - 10;
		};
		[] call _fnc_food;
		[] call _fnc_battery; 
		[] call _fnc_karma;
		[7] call SOCK_fnc_updatePartial;
	};
};

[] spawn
{
	while{true} do
	{
	waitUntil {life_cash > 0};
		[[0,format["%2 just made money, do something illegal",life_cash,name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
			sleep 5;
	};

};
[] spawn
{
	while{true} do
	{
	waitUntil {life_eattotal > 90};
		player playMove "AmovPercMstpSnonWnonDnon_Scared2";
		sleep 2;
		[[player,"vomit"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   		waitUntil{animationState player != "AmovPercMstpSnonWnonDnon_Scared2";};
   		life_eattotal = 0;
   		life_hunger = 10;
   		life_poop = 0;
	};

};

[] spawn
{
	while {true} do
	{
		if(isNull objectParent player) then
		{
			if(life_seatwarn) then {
				life_seatwarn = false;
			};
			if(life_seatbelt) then {
				uiSleep 3;
				life_seatbelt = false;
			};
			uiSleep 5;
		};
		if(vehicle player != player && !(player getVariable ["Escorting", false]) && !(player getVariable ["restrained", false]) && (vehicle player isKindOf "LandVehicle")) then
		{
			if(speed vehicle player > 90 && !life_seatbelt) then
			{
				oldVehVelocity = velocity (vehicle player);
				uiSleep 0.3;
				if(speed vehicle player < 1) then
				{
					[player,"glassbreak"] spawn life_fnc_nearestSound;
					moveOut player;
					player setVelocity [(oldVehVelocity select 0) * 0.4,(oldVehVelocity select 1) * 0.4,((oldVehVelocity select 2) * 0.4) + 5];
					uiSleep 2;
					player switchmove "";
				};
			} else {
				if(!life_seatwarn) then {
					uiSleep 1;
					if(!life_seatwarn) then {
						["Remember your Seatbelt!", false] spawn domsg;
					};
					//[player,"seatwarn"] spawn life_fnc_nearestSound;
					playSound "seatwarn";
					life_seatwarn = true;
				};
				uiSleep 1;
			};
		};
	};
};

// MELEE
[] spawn {
        _mweapons = ["CG_BAT","CG_BATON","CG_CROSS","CG_TELBAT","CG_SHOVEL"];
        while{true} do {
		        waitUntil{((secondaryWeapon player) IN _mweapons) && !("nonlethal_swing" IN (magazines player)) && ((player ammo (currentWeapon player)) == 0)};
		        player addMagazine "nonlethal_swing";
		        sleep 120;
        };
};

// MELEE
[] spawn {
        _sweapons2 = ["cg_machete","cg_hatchet","CG_PICKAXE","cg_scythe"];
        while{true} do {
                waitUntil{((secondaryWeapon player) IN _sweapons2) && !("sharp_swing" IN (magazines player)) && ((player ammo (currentWeapon player)) == 0)};
                player addMagazine "sharp_swing";
                sleep 120;
        };
};


//doublecheck for virtual item duping
[] spawn
{
	private["_theveh","_unitveh","_myveh","_side","_radius","_nearestunits","_nearestunitofside","_unit"];
	while{true} do
	{
		waitUntil {!isNull (findDisplay 3500)};
		life_action_inuse = true;

		if(cursorTarget isKindOf "House_F") then {
			player setVariable["vehopen",2,true];
			_radius = 40;
		} else {
			_cuid = cursorTarget getVariable "vehicle_info_owners";
			player setVariable["vehopen",_cuid,true];
			_radius = 8;
		};
		_myveh = player getVariable "vehopen";

		while{!isNull (findDisplay 3500)} do
		{
			_side = civilian;
			_nearestunits = nearestObjects [player,["Man"],_radius];

			if(_side countSide _nearestunits > 0) then
			{
				{
					_unit = _x;
					if ( isPlayer _unit && player != _unit ) then 
					{
						_unitveh = _unit getVariable "vehopen";

						if(_unitveh isEqualTo _myveh) exitWith {
								life_action_inuse = false;		
								hint "Someone is using a virtual inventory near you. Please wait.";
								closeDialog 0;
						};
					};
				} foreach _nearestunits;
			};
			sleep 0.25;
		};
		closeDialog 0;	
		life_action_inuse = false;		
		player setVariable["vehopen",0,true];
	};
};




[] spawn
{
	while{true} do
	{
	waitUntil {life_koil_nlr == 1};
		deletemarker "mynlr";
		_Pos = position player; 
		_marker = createMarkerLocal ["mynlr", _Pos]; 
		"mynlr" setMarkerShapeLocal "ELLIPSE";
		"mynlr" setMarkerColorLocal "ColorRed";      
		"mynlr" setMarkerTextLocal "NLR AREA - DO NOT ENTER!";      
		"mynlr" setMarkerTypeLocal "WARNING";
		_mytimer = 900;
		while { _mytimer > 0 && life_koil_nlr == 1 } do {
			sleep 300;
			_mytimer = _mytimer - 300;
		};

		if( _mytimer < 1 ) then {
			deletemarker "mynlr";
			life_koil_nlr = 0;
			hint "NLR ZONING HAS ENDED - You are now free to enter your old death area.";
		};
	};
	sleep 0.05;
};



[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};


[] spawn
{
	while{true} do
	{
			waitUntil {!isNull (findDisplay 3000)};
			if(vehicle player == player) then {
				[[player,"CL3_anim_codecrackerATM"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{isNull (findDisplay 3000)};
				[[player,""],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			};
			sleep 5;
	};
};


/*
[] spawn
{
	while{true} do
	{
		if (koil_life == 2) then {
			if (vehicle player != player) then {
				player action ["Eject", vehicle player];
			};

			if (alive player && vehicle player == player) then {
				player setDamage 1;
			};

			if (!alive player) then {
			koil_life = 1;
			};
		};
		sleep 0.2;
	};
};
*/

[] spawn
{
	while{true} do
	{
		if (life_poop > 80) then {
			_pooplord = getFatigue player;
			if (alive player && _pooplord < 1) then {
				player setFatigue _pooplord + 0.01; 
				_chance = round (random 65);
   			 	if(_chance == 19) then {
   				  	[[player,"fart1"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
   				if(_chance == 20) then {
   				  	[[player,"fart2"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
   				if(_chance == 21) then {
   				  	[[player,"fart3"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
   				if(_chance == 22 || _chance == 23) then {
   				  	[[player,"fart4"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
   				if(_chance == 24) then {
   				  	[[player,"fart5"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
   				if(_chance == 25) then {
   				  	[[player,"fart6"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
			};
		};
		if (life_poop > 90) then {
			_pooplord = getFatigue player;
			if(alive player && _pooplord < 1) then {
				player setFatigue _pooplord + 0.01; 
			};
		};
		sleep 15;
	};
};

[] spawn
{
	while{true} do
	{
		if (life_dirt > 80) then {
			hint "You feel dirty & probably smell.";
		};
		if (life_dirt > 90) then {
				_koildebiiii = player getVariable "diseaseon";
				if(_koildebiiii == 1) then {
				_diseasechance =  round (random 100);

				if(_diseasechance > 99) then {
					player setVariable ["diseaseon",(round (random 7)),true];
				};
			};
		};	
		if (life_dirt == 100) then {
			_pooplord = getFatigue player;
			player setFatigue _pooplord + 0.01;
		};	
		sleep 120;
	};
};


/*
[] spawn
{
	while{true} do
	{
		if (vehicle player == player) then {
			player switchCamera "Internal";
		};
		sleep 0.1;
	};
};
*/


[] spawn
{
	while{true} do
	{
		sleep 5;		
		while{ koildeb > 1 || koildebi > 1 || koildebii > 1 || koildebiii > 1 || koildebiiii > 1 } do
		{

			_totalpain = koildeb + koildebi + koildebii + koildebiii + koildebiiii;

			if(_totalpain < 12) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.5],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
			};

			if(_totalpain > 11 && _totalpain < 18) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.33],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
			};

			if(_totalpain > 17) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
			};
			sleep 2;
		};
	};
};

[] spawn
{
	while{true} do
	{
		if (life_pizza) then {
			player setDamage (damage player) - .05;
		};
		sleep 5;
	};
};







[] spawn
{
	private["_me","_you"];
	while{true} do
	{
		waitUntil {player getvariable "search"};
		player setVariable["search",false,true];
		_handle = [player] spawn life_fnc_dropItems2;
		waitUntil {scriptDone _handle};
		life_carryWeight = 0;
	};
};



[] spawn
{
	while{true} do
	{
		waitUntil {vehicle player != player};
		waitUntil {vehicle player == player};
		_n = 1;
		hint "You cannot use your weapon for 1 second...";
		while {_n > 0} do {
			if (currentWeapon player != "") then {
				life_curWep_h = currentWeapon player;
				player action ["SwitchWeapon", player, player, 100];
				player switchcamera cameraView;
				[[player,"AmovPercMstpSnonWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player switchMove "AmovPercMstpSnonWnonDnon";
			};
			sleep 0.1;
			_n = _n - 1;
		};
		hint "You can now unholster your weapon.";
		sleep 1;
	};
};

[] spawn
{
	while {true} do
	{
		sleep 5;
		if(player distance (getMarkerPos "mynlr") < 200 && life_koil_nlr == 1 && alive player) then {
			hint "You are to close to your last death, please leave the area as soon as possible.";
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 3;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};


//Intox Start
private["_obj"];
[] spawn  
{
	while{true} do
	{
		sleep 110;
		if(life_intox > 0) then 
		{
			if(life_intox <= 0.02) then {life_intox = 0.00;} else {life_intox = life_intox - 0.02;};
			[] call life_fnc_hudUpdate;
			switch(true) do {
				case (life_intox == 0.00): {hint "You are completely sober.";};
				case (life_intox == 0.08): {hint "You can now legally drive.";};
			};
		};
	};
};

[] spawn  
{
	while{true} do
	{
		waitUntil {life_intox > 0.08};
		player setVariable["intoxicated",true,true];
		[[0,format["%1 seems intoxicated.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
		while{life_intox > 0.08} do 
		{
 		    "dynamicBlur" ppEffectEnable true;
    	    "dynamicBlur" ppEffectAdjust [0.5];
            "dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		player setVariable["intoxicated",false,true];
	};
};

[] spawn  
{
	while{true} do
	{
		waitUntil {life_intox > 0.30};

		hint "You are losing your sense of control & need stimulants to regain full control of your body.";

		while{life_intox > 0.30} do 
		{
			_stupidchance = round (random 1000);
			if (vehicle player != player) then {
				_stupidchance = 1;	
			};
			if (_stupidchance == 990) then {
				disableUserInput true;
   				 life_action_inUse = true;
				player switchMove "cl3_dubstepPop";
				[[player,"cl3_dubstepPop"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "cl3_dubstepPop";};
				player switchMove "";
				disableUserInput false;
   				life_action_inUse = false;
			};
			if (_stupidchance == 991) then {
				disableUserInput true;
   				 life_action_inUse = true;
				player switchMove "cl3_crazydrunkdance";
				[[player,"cl3_crazydrunkdance"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "cl3_crazydrunkdance";};
				player switchMove "";
				disableUserInput false;
   				life_action_inUse = false;
			};
			if (_stupidchance == 992) then {
				disableUserInput true;
   				 life_action_inUse = true;
				player switchMove "CL3_anim_lunatic";
				[[player,"CL3_anim_lunatic"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "CL3_anim_lunatic";};
				player switchMove "";
				disableUserInput false;
   				life_action_inUse = false;
			};
			if (_stupidchance == 993) then {
				disableUserInput true;
   				 life_action_inUse = true;
				player switchMove "CL3_anim_Poo";
				[[player,"CL3_anim_Poo"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "CL3_anim_Poo";};
				 _veh = "cl_turd" createvehicle (getpos player); 
				 _veh setPosATL (getPosATL player);
				 disableUserInput false;
   				life_action_inUse = false;
				 sleep 300;
				 deleteVehicle _veh;
			};
			if (_stupidchance == 994) then {
				disableUserInput true;
   				 life_action_inUse = true;
				player switchMove "cl3_crazydrunkdance";
				[[player,"cl3_crazydrunkdance"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "cl3_crazydrunkdance";};
				player switchMove "";
				disableUserInput false;
   				life_action_inUse = false;
			};
			if (_stupidchance == 995) then {
				disableUserInput true;
   				 life_action_inUse = true;
				player switchMove "cl3_russiandance";
				[[player,"cl3_russiandance"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "cl3_russiandance";};
				player switchMove "";
				disableUserInput false;
   				life_action_inUse = false;
			};
			if (_stupidchance == 996) then {
				disableUserInput true;
   				 life_action_inUse = true;
				player switchMove "cl3_robotdance";
				[[player,"cl3_robotdance"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "cl3_robotdance";};
				player switchMove "";
				disableUserInput false;
   				life_action_inUse = false;
			};
			if (_stupidchance == 997) then {
				disableUserInput true;
   				 life_action_inUse = true;
				player switchMove "cl3_dubstepPop";
				[[player,"cl3_dubstepPop"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "cl3_dubstepPop";};
				player switchMove "";
				disableUserInput false;
   				life_action_inUse = false;
			};
			if (_stupidchance == 998) then {
				disableUserInput true;
   				 life_action_inUse = true;
			  	player switchMove "cl3_dubstepdance";
				[[player,"cl3_dubstepdance"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "cl3_dubstepdance";};
				player switchMove "";
				disableUserInput false;
   				life_action_inUse = false;
			};
			if (_stupidchance == 999) then {
				disableUserInput true;
   				 life_action_inUse = true;
				player switchMove "CL3_anim_lunatic";
				[[player,"CL3_anim_lunatic"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "CL3_anim_lunatic";};
				player switchMove "";
				disableUserInput false;
   				life_action_inUse = false;
			};
			if (_stupidchance == 1000) then {
				disableUserInput true;
   				 life_action_inUse = true;
				player switchMove "CL3_anim_Poo";
				[[player,"CL3_anim_Poo"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				waitUntil{animationState player != "CL3_anim_Poo";};
				 _veh = "cl_turd" createvehicle (getpos player); 
				 _veh setPosATL (getPosATL player);
				 disableUserInput false;
   				life_action_inUse = false;
				 sleep 300;
				 deleteVehicle _veh;
			};

			sleep 10;
		};
		detach player;
		[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 1;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};