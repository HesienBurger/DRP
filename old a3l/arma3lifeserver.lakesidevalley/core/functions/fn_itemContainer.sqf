/*
Author: J Macklemore
Based On Tonics: fn_itemContainer.sqf
File: fn_itemDrop.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
Fucking Drug Field Shit, I am So Tired Of Your Shit Arma
DO NOT REMOVE
*/

private ["_item","_return"];

_item = _this select 0;

switch (_item) do {
	// Drugs
	case "cannabis": {_return = "Land_Sacks_heap_F";};
	case "cocainu": {_return = "Land_Basket_F";};
	case "heroinu": {_return = "Land_CratesWooden_F";};
	// Undefined
	default {_return = "Land_Sack_F";};
};

_return