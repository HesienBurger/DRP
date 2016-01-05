/*
Author: J Macklemore
File: fn_breathalyzer.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/
private ["_cop","_drunk"];
_cop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};
_drunk = life_howdrunk;
[[1,format["<t color='#ffffff'><t size='2'><t align='center'>Breathalyser<br/><t color='#FF0000'><t align='center'><t size='1'>Alcohol Levels: %1",name player,[ _drunk] call life_fnc_numberText]],"life_fnc_broadcast",_cop,false] spawn life_fnc_MP;
