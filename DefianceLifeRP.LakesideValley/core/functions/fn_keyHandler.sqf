/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;

MISSION_ROOT = call {
    private "_arr";
    _arr = toArray __FILE__;
    _arr resize (count _arr - 32);
    toString _arr
};

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};


if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{

/*
	case 15:
	{
		if(_alt && koil_checkalt) then {
			[3] call SOCK_fnc_updatePartial;		
		};
	};

	case 1:
	{
		if(_alt && koil_checkalt) then {
			[3] call SOCK_fnc_updatePartial;		
		};
	};
*/



	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	

	//Shift+P = Faded Sound
	case 25:
	{
	    if(_shift) then
	    {
	        [] call life_fnc_fadeSound;
	        _handled = true;
	    };
	};



	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;[] spawn life_fnc_medicMarkers2;}};
		};
	};
	


	//code 1 key shift+1
	case 2:
	{
		if(_shift) then
		{
			if (vehicle player != player && side player == west) then {
				hint format["Code 1", vehicle player];
				vehicle player animate ["ani_lightbar", 0];
				vehicle player animate ["ani_siren", 0];
				vehicle player animate ["ani_directional", 0];
				vehicle player setvariable ["lightbar",0,true];
				vehicle player setVariable ["siren",0,true];
				_handled = true;
			};
		};
	};


	//code 2 key shift+2
	case 3:
	{
		if(_shift) then
		{
			if (vehicle player != player && side player == west) then {
				hint format["Code 2", vehicle player];
				vehicle player animate ["ani_lightbar", 0.1];
				vehicle player animate ["ani_directional", 0.2]; 
				vehicle player animate ["ani_siren", 0];
				vehicle player setvariable ["lightbar",1,true];
				vehicle player setVariable ["siren",0,true];
				_handled = true;
			};
		};
	};

	//code 3 key shift+3
	case 4:
	{
		if(_shift) then
		{
			if (vehicle player != player && side player == west) then {
				hint format["Code 3", vehicle player];
				vehicle player animate ["ani_siren", 0.2];
				vehicle player animate ["ani_lightbar", 0.1];
				vehicle player animate ["ani_directional", 0.2];
				vehicle player setvariable ["lightbar",1,true];
				vehicle player setVariable ["siren",1,true];
				_handled = true;
			};
		};
	};


	//shift + 4
	case 5:
	{
		if(_shift) then
		{
			if((animationState cursorTarget) != "Incapacitated" && !life_knockout && !life_action_inUse && !(player getVariable["restrained",false]) && !(player getVariable["tied",false]) && !life_istazed && !life_paintball) then
			{
				[] spawn life_fnc_punchSystem;
				_handled = true;
			};
		};
	};



	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};


        if( playerSide == west && vehicle player != player && ((driver vehicle player) == player) && _ctrlKey ) then
                {
                    _veh = vehicle player;
                    if( _veh isKindOf "Car" || _veh isKindOf "Motorcycle" || _veh isKindOf "Motorbike" ) then {
                    if(isNil {_veh getVariable "sirenUC"}) then {_veh setVariable["sirenUC",false,true];};
                    if((_veh getVariable "sirenUC")) then
                    {
                       titleText ["Undercover Sirens Off","PLAIN"];
                        _veh setVariable["sirenUC",false,true];
                    };
                    };
                };


        if( playerSide == west && vehicle player != player && ((driver vehicle player) == player) && !_ctrlKey ) then
                {
                    _veh = vehicle player;
                    if( _veh isKindOf "Car" || _veh isKindOf "Motorcycle" || _veh isKindOf "Motorbike" ) then {
                    if(isNil {_veh getVariable "sirenUC"}) then {_veh setVariable["sirenUC",false,true];};
                    if(!(_veh getVariable "sirenUC")) then
                    {
                         _veh setVariable["sirenUC",true,true];
                         titleText ["Undercover Sirens On - CTRL+H to turn off!","PLAIN"];
                        [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
                    };
                    };
                };

        if( playerSide == independent && vehicle player != player && ((driver vehicle player) == player) && _ctrlKey ) then
                {
                    _veh = vehicle player;
                    if( _veh isKindOf "Car" || _veh isKindOf "Motorcycle" || _veh isKindOf "Motorbike" ) then {
                    if(isNil {_veh getVariable "sirenUC"}) then {_veh setVariable["sirenUC",false,true];};
                    if((_veh getVariable "sirenUC")) then
                    {
                       titleText ["Undercover Sirens Off","PLAIN"];
                        _veh setVariable["sirenUC",false,true];
                    };
                    };
                };


        if( playerSide == independent && vehicle player != player && ((driver vehicle player) == player) && !_ctrlKey ) then
                {
                    _veh = vehicle player;
                    if( _veh isKindOf "Car" || _veh isKindOf "Motorcycle" || _veh isKindOf "Motorbike" ) then {
                    if(isNil {_veh getVariable "sirenUC"}) then {_veh setVariable["sirenUC",false,true];};
                    if(!(_veh getVariable "sirenUC")) then
                    {
                         _veh setVariable["sirenUC",true,true];
                        titleText ["Undercover Sirens On - CTRL+H to turn off!","PLAIN"];
                        [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
                    };
                    };
                };
  	};




	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	case 50:
	{	
		if((player getVariable "tied")) then {
			_handled = true;
		};	
	};	


	case 36:
	{	
		if(!dialog) then {
		_handled = true;
		};
	};	

	case 83:
	{	
		if(!dialog) then {
		_handled = true;
		};
	};	

	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};

		if(_shift && playerSide == west && !isNull cursorTarget && !life_paintball && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained")) then
		{
			[] call life_fnc_restrainAction;
		};
	};
	
	//Knockout
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 5) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player ) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !(player getVariable["tied",false]) && !life_istazed && !life_paintball) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};

			if ((animationState cursorTarget) != "Incapacitated" && (player getVariable "breakouton") == 2 && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed && !life_paintball) then {
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
		};
	};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F" OR cursorTarget isKindOf "Motorcycle") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
		
		if(_shift && !_alt && !_ctrlKey && playerSide == west ) then {
		
			life_inv_spikeStrip = life_inv_spikeStrip + 1;

		if(!isNull life_spikestrip) exitWith {hint "You already have a spikestrip laid"};
		if(([false,"spikeStrip",1] call life_fnc_handleInv)) then

		{

		[] spawn life_fnc_spikeStrip;

			}; 
	
		};
	
	};
	
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};
		if(!_alt && !_ctrlKey && playerSide in [west,independent]) then {  [] call life_fnc_radar; };
	};

	//CAPSLOCK CHECK
	case 58:
	{
		if((player getVariable "tied")) then {
			_handled = true;
		};		
		if((player getVariable "restrained")) then {
			_handled = true;
		};
	};


	//Y Player Menu
	case 21:
	{	
		_stop = false;
		if( life_inv_mobilephone < 1 && !_alt && !_ctrlKey ) then {
			titleText["You have no phone. (CTRL+Y to open food menu // ALT+Y to open key menu // 8 to sync player data).","PLAIN"];
			_stop = true;
			_handled = true;
		};
		if((player getVariable "tied") || (player getVariable "restrained") || life_battery < 1) then {
			if (life_inv_mobilephone > 0 && !_alt && !_ctrlKey ) then {
				titleText["Your phone is dead. (CTRL+Y to open food menu // ALT+Y to open key menu // 8 to sync player data).","PLAIN"];
				_stop = true;
				_handled = true;
			};
		};	
		if(!_alt && _ctrlKey && !dialog && !_stop) then
		{
			createdialog "playerSettings";
		};
		if(_alt && !_ctrlKey && !dialog && !_stop) then
		{
			createdialog "Life_key_management";
		};
		if(!_alt && !_ctrlKey && !dialog && !_stop) then
		{
			[] call fnc_opentablet;
		};
	};


	//6 - Surrender
	case 7:
	{
		if(_shift) then {_handled = true;};

		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed && !life_paintball) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};

		if(!_shift) then {
		if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed && !life_paintball) then
		{
				[] spawn life_fnc_middlefinger;
				_handled = true;
			};
	    };
	};


	//7 - Mine 
	case 8:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			if(life_inv_pickaxe > 0) then {
				[] spawn life_fnc_pickAxeUse;
			};
		};
	};


	//8 - Resync Option
	case 9:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call SOCK_fnc_syncData;
		};
	};







	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8 && (velocity _veh select 2) < 3) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						systemChat localize "STR_MISC_VehUnlock";
						playSound3D [MISSION_ROOT + "sounds\extra\unlock.ogg", player, false, getPosASL player, 1, 1, 155];
						[[player,"CarUnlocked"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
						systemChat localize "STR_MISC_VehLock";
						playSound3D [MISSION_ROOT + "sounds\extra\lock.ogg", player, false, getPosASL player, 1, 1, 155];
						[[player,"CarLocked"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
					};
				};
			};
		};
	};
};

_handled;
