/*
LOS DIABLOS MARKET|Creds to MrKraken 
*/
private["_robber","_shop","_timer","_funds","_dist","_success"]; 
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; 
_action = [_this,2] call BIS_fnc_param;
_timer = 480;
_funds = 33455 + round(random 42000); 
_dist = _robber distance _shop;
_success = false;

if(side _robber != civilian) exitWith { hint "You are not civilian!"; };

_cops = (west countSide playableUnits);
if(_cops < 4) exitWith { hint "My Register is locked until more Police are on Duty! (4+)"; }; 

if(vehicle player != _robber) exitWith { hint "You cant be in the vehicle!"; }; 
if (alive _robber && {currentWeapon _robber != ""} && {_funds > 0}) then {

[[1,format["911 DISPATCH: Los Diablos Market is being robbed!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
hint format ["Robbing the Market! Wait %1 sec.",_timer];

//_shop switchMove "AmovPercMstpSsurWnonDnon";//Making a shop owner surrender

_shop removeAction _action;//Deleting the action,so it won't be spammed

_shop say3D "RobAlarm";


while {true} do {
		hintsilent format ["%1 seconds remaining.",_timer];
		sleep 1;
		_timer = _timer - 1;
		_dist = _robber distance _shop;

		if (!alive _robber) exitwith
			{
				[[1,format["911 DISPATCH: ONE ASSAILANT HAS DIED: Los Diablos Market",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
				hint "STORE CLERK: Oh damn, you just got blood on my cash register.";
				sleep 300;
				_action = _shop addAction["Rob Market",life_fnc_robShops];
			};
			if (_dist >= 6) exitwith {
			[[1,format["911 DISPATCH: ONE ASSAILANT HAS FLED: Los Diablos Market",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			hint "STORE CLERK: Thank you for letting me go!";
			sleep 300;
			_action = _shop addAction["Rob Market",life_fnc_robShops];
			};

if(_timer < 1) exitWith { _success = true; }; 
};
if(!_success) exitWith { }; 
life_cash = life_cash + _funds; 
hint format["You have stolen $%1",_funds]; 
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;//Add the robber to the wanted list

//_shop switchMove "";//Reseting the shop owner

[[1,format["BREAKING NEWS!: Los Diablos Market was just robbed for $%2", _shop, [_funds] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
_funds = 0;
life_use_atm = false;
sleep 180;
life_use_atm = true;
sleep 1800;//Cooldown between the robberies
_action = _shop addAction["Rob Market",life_fnc_robLDM];//Adding action for the robbery
};