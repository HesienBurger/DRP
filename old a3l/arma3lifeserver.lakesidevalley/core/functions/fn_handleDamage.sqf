/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];

_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

/*
_unit = _this select 1;
_part = _this select 5;
_damage = _this select 10;
_source = _this select 0;
_projectile = _this select 2;
*/

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_projectile in ["26_taser"] && _curWep in ["Taser_26"]) then {
			if(side _source == west && playerSide != west) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "B_556x45_dual") then {100} else {35};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						} else {
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			};
			
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = false;
			};
		};
	};
};

//[] call life_fnc_hudUpdate;
_damage;

switch (true) do {
case ((_projectile isKindOf "BulletBase") && {(currentMagazine _source in life_rubbermags)}): {
		_damage = 0;
		if ((alive player) && {!(player getVariable ["wounded",false])} && {!(player getVariable ["restrained",false])} && {!(player getVariable ["surrender",false])} && {(player getVariable ["chained",""] == "")} && {((vehicle player == player) || (((typeOf (vehicle player) in life_ejectvehicle)) && (speed vehicle player < 5)))}) then {
			
			enableCamShake true;
			"filmGrain" ppEffectEnable true;
			"filmGrain" ppEffectAdjust [0.3, -0.08, 0.01, 0.09, 20, true];
			"filmGrain" ppEffectCommit 1;
			player setDamage 0.4;
			addCamShake [35, 100, 14];
			player setFatigue 1;
			
			100 cutText ["You have been hit by a Rubber Bullet!","PLAIN",0];
			if (typeOf (vehicle player) in life_ejectvehicle) then {
				player action ["Eject", vehicle player];
			};

			player setVariable ["rubberbullet",(time+14),false];
			[] spawn {
				waitUntil {sleep 0.1; (player getVariable ["rubberbullet",0] <= time);};
				player setVariable ["rubberbullet",0,false];
				if (animationState player in ["unconscious","incapacitated"]) then {
					switch (currentWeapon player) do {
						case (primaryWeapon player): {player switchMove "AmovPpneMstpSrasWrflDnon";};
						case (handgunWeapon player): {player switchMove "AmovPpneMstpSrasWpstDnon";};
						default {player switchMove "AmovPpneMstpSnonWnonDnon";};
					};
				};
				
				player setFatigue 0.5;
				player setDamage 0.2;
				"filmGrain" ppEffectEnable false;
				resetCamShake;
				100 cutText ["","PLAIN",0];
				
			};
		};
	};
};

//[] call life_fnc_hudUpdate;
_damage;