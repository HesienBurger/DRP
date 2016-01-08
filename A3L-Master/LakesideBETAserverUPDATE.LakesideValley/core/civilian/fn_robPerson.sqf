/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Getting tired of adding descriptions...
*/
private["_robber"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

if(KWEFookxWQOk > 0) then
{
	[[KWEFookxWQOk],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
	[[1,format[localize "STR_NOTF_Robbed",_robber getVariable["realname",name _robber],profileName,[KWEFookxWQOk] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	KWEFookxWQOk = 0;
}
	else
{
	[[2,format[localize "STR_NOTF_RobFail",profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
};