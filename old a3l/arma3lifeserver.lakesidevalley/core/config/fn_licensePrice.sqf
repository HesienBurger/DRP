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
	case "driver": {2500}; //Drivers License cost
	case "boat": {15000}; //Boating license cost
	case "pilot": {15000}; //Pilot/air license cost
	case "gun": {25000}; //Firearm/gun license cost
	case "dive": {4000}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {99999999}; //Cop Pilot License cost
	case "swat": {99999999}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {65000}; //Heroin processing license cost
	case "marijuana": {85000}; //Marijuana processing license cost
	case "medmarijuana": {5500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {250000}; //Rebel license cost
	case "truck": {25000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {12000};
	case "cocaine": {95000};
	case "sand": {12500};
	case "iron": {9500};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "home": {75000};
	case "rifle": {55000};
	case "uranium": {100000};
	case "lakesiderepairs" {15000}; // added by heisen
};