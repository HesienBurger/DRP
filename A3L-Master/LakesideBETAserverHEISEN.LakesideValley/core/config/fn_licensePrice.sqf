/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
	{
	case "MDMA": {20000};
	case "meth": {20000};
	case "coke": {20000};
	case "driver": {5000}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {15000}; //Pilot/air license cost
	case "gun": {15000}; //Firearm/gun license cost
	case "dive": {1000}; //Diving license cost
	case "oil": {6500}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {25000}; //Heroin processing license cost
	case "marijuana": {25000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {145000}; //Rebel license cost
	case "truck": {10000}; //Truck license cost
	case "diamond": {6500};
	case "salt": {6500};
	case "cocaine": {25000};
	case "sand": {6500};
	case "iron": {6500};
	case "copper": {6500};
	case "cement": {6500};
	case "mair": {7500};
	case "home": {15000};
	case "opencarry": {75000}; 
	case "rifle": {15000};
};