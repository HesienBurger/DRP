// Give money, check variable 5 minutes or w/e
private ["_timer"];
[[_vault],"life_fnc_bankalarmsound",nil,true] spawn life_fnc_MP;

if ( cgbankvault animationPhase "d_o_Anim" != 1 ) exitWith {
	["The vault door is closed, you cant grab cash right now...",30,"red"] call A3L_Fnc_Msg;
};

if (animationState player == "AinvPknlMstpSnonWnonDnon_medic_1") exitwith {["You're already grabbing a bag of cash!",30,"red"] call A3L_Fnc_Msg;};
if (count (attachedobjects player) > 0) exitwith {["You are already carrying a bag of cash.",30,"red"] call A3L_Fnc_Msg;}; 
if ((_this select 3) getVariable "robbed") exitwith {["This stash of cash was recently robbed.",30,"red"] call A3L_Fnc_Msg;};
_timer = 5 + (floor(random 5));
["Grabbing the money.. this may take a few minutes!",30,"blue"] call A3L_Fnc_Msg;
(_this select 3) setVariable ["robbed",true,true];

[_timer,(_this select 3)] spawn {
_timer = _this select 0;
_stash = _this select 1;

while {_timer > 0} do {

	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};

	if((player getVariable["restrained",false])) exitWith {};
	
		if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
			[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		};
		
	_timer = _timer - 1;
	if (_timer < 1) exitwith {
		private ["_veh","_id"];
		["You stashed all the money inside a bag, bring it to the trader!",30,"green"] call A3L_Fnc_Msg;
		


				_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos player);
				{_veh disableCollisionWith _x} foreach playableUnits;
				_veh setVariable ["pickup",false,true];
				_veh attachto [player, [0.1,-0.18,0], "rfemur"];
				_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];
				_veh setpos (getpos _veh);
				_id = player addAction ["Drop Bag of Cash", {detach (_this select 3)},_veh];

		
		[_veh,_id] spawn {
			_veh = _this select 0;
			_id = _this select 1;
			_suitcaseDeleted = false;
			while {(_veh IN (attachedObjects player)) OR (_suitcaseDeleted)} do {
				if ((!(vehicle player == player)) && (!(_suitcaseDeleted))) then 
				{
					player removeAction _id;
					detach _veh;
					deleteVehicle _veh;
					_suitcaseDeleted = true;
				};
			
				if ((_suitcaseDeleted) && (vehicle player == player)) then {
											_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos player);
											{_veh disableCollisionWith _x} foreach playableUnits;
											_veh setVariable ["pickup",false,true];
											_veh attachto [player, [0.1,-0.18,0], "rfemur"];
											_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];
											_veh setpos (getpos _veh);
					_id = player addAction ["Drop Bag of Cash", {detach (_this select 3)},_veh];
					_suitcaseDeleted = false;
				};
				
				if((life_istazed) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
				if((life_interrupted) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
				if (!(alive player)) exitwith {detach _veh;};
				if((player getVariable["restrained",false]) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
				sleep 0.1;
			};
			
			detach _veh;
			_veh setVariable ["pickup",true,true];
			player removeAction _id;
		};
		
	};
	
	sleep 1.5;
};
};