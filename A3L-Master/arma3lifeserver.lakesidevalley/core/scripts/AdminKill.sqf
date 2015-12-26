// Dialog Support TEMPLATE
// onMapSingleClick -->  BIS_fnc_addStackedEventHandler
// 
// Zeus Lightning Bolt
// 
//
//////////////////////////////////////////////////
private ["_caller"];
_caller = _this select 0;
omsz = false;

titleText ["Open Map and Click on Zeus Lightning Bolt Target location.", "PLAIN"];

["mk_zeuslb", "onMapSingleClick", {
	titleText ["", "PLAIN"];

	_center = createCenter sideLogic;    
	_group = createGroup _center;  
	_target = getPos (nearestObject _pos);
	_zlb = _group createUnit ["ModuleLightning_F",_target,[],0,""];
	
	["mk_zeuslb", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
	omscz = true;
	true;
}] call BIS_fnc_addStackedEventHandler