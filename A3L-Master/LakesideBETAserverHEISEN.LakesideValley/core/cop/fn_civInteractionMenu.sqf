/*
	File: fn_copInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various cop actions towards another player.
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Btn11 37460
#define Btn12 37461
#define Btn13 37462
#define Btn14 37463
#define Btn15 37464
#define Btn16 37465
#define Btn17 37466
#define Btn18 37467
#define Btn19 37468
#define Btn20 37469
#define Btn21 37470

#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = param [0,ObjNull,[ObjNull]];
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
		
if(!isPlayer _curTarget) exitWith {closeDialog 0;}; //Bad side check?
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
_Btn11 = _display displayCtrl Btn11;
_Btn12 = _display displayCtrl Btn12;
_Btn13 = _display displayCtrl Btn13;
_Btn14 = _display displayCtrl Btn14;
_Btn15 = _display displayCtrl Btn15;
_Btn16 = _display displayCtrl Btn16;
_Btn17 = _display displayCtrl Btn17;
_Btn18 = _display displayCtrl Btn18;
_Btn19 = _display displayCtrl Btn19;
_Btn20 = _display displayCtrl Btn20;
_Btn21 = _display displayCtrl Btn21;
life_pInact_curTarget = _curTarget;


_Btn1 ctrlEnable false;
_Btn2 ctrlEnable false;
_Btn3 ctrlEnable false;
_Btn4 ctrlEnable false;
_Btn5 ctrlEnable false;

_Btn6 ctrlEnable false;
_Btn7 ctrlEnable false;

_Btn8 ctrlEnable false;
_Btn9 ctrlEnable false;
_Btn10 ctrlEnable false;

_Btn1 ctrlSetText "Pat Down";
_Btn1 buttonSetAction "[[],""life_fnc_removeWeaponActionCiv"",life_pInact_curTarget,false] call BIS_fnc_MP;";
if (!isNull life_pInact_curTarget && player distance life_pInact_curTarget < 7 && isPlayer life_pInact_curTarget && ( animationState life_pInact_curTarget == "Incapacitated" || life_pInact_curTarget getVariable ["tied", false] || animationState life_pInact_curTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" )) then {
} else {
_Btn1 ctrlEnable false;		
};

_Btn2 ctrlSetText "Rob";
_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_robAction;";
if (!isNull life_pInact_curTarget && player distance life_pInact_curTarget < 7 && isPlayer life_pInact_curTarget && !(life_pInact_curTarget getVariable["robbed", false]) && (life_pInact_curTarget getVariable ["tied", false])) then {
} else {
_Btn2 ctrlEnable false;		
};

_Btn3 ctrlSetText "Tie Person";
_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_tieingAction;";
if (!isNull life_pInact_curTarget && player distance life_pInact_curTarget < 4 && isPlayer life_pInact_curTarget && (animationState life_pInact_curTarget == "Incapacitated") && (!life_action_inUse)) then {
} else {
_Btn3 ctrlEnable false;		
};

_Btn4 ctrlSetText "Untie Person";
_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_untie;";
if (!isNull life_pInact_curTarget && player distance life_pInact_curTarget < 4 && isPlayer life_pInact_curTarget && (life_pInact_curTarget getVariable ["tied", false]) && (!life_action_inUse)) then {
} else {
_Btn4 ctrlEnable false;		
};

_Btn5 ctrlSetText "Blindfold Person";
_Btn5 buttonSetAction "[life_pInact_curTarget] call life_fnc_tieingActionb;";
if (!isNull life_pInact_curTarget && player distance life_pInact_curTarget < 4 && isPlayer life_pInact_curTarget && (life_pInact_curTarget getVariable ["tied", false])  && (!life_action_inUse)) then {
} else {
_Btn5 ctrlEnable false;		
};

_Btn6 ctrlSetText "Remove blindfold";
_Btn6 buttonSetAction "[life_pInact_curTarget] call life_fnc_untieb;";
if (!isNull life_pInact_curTarget && player distance life_pInact_curTarget < 4 && isPlayer life_pInact_curTarget && (life_pInact_curTarget getVariable ["blindfolded", false])  && (!life_action_inUse)) then {
} else {
_Btn6 ctrlEnable false;		
};

_Btn7 ctrlSetText "Throw in car";
_Btn7 buttonSetAction "[life_pInact_curTarget] call life_fnc_throwcar;";
if (!isNull life_pInact_curTarget && player distance life_pInact_curTarget < 4 && isPlayer life_pInact_curTarget && (life_pInact_curTarget getVariable ["tied", false])) then {
} else {
_Btn7 ctrlEnable false;		
};

_Btn8 ctrlSetText "Move Person";
_Btn8 buttonSetAction "[life_pInact_curTarget] call life_fnc_civescort;";
if (!isNull life_pInact_curTarget && player distance life_pInact_curTarget < 4 && isPlayer life_pInact_curTarget && (life_pInact_curTarget getVariable ["tied", false]) && !(life_pInact_curTarget getVariable ["escorting", false]) && (!life_action_inUse)) then {
} else {
_Btn8 ctrlEnable false;		
};

_Btn9 ctrlSetText "Stop Escort";
_Btn9 buttonSetAction "[life_pInact_curTarget] call life_fnc_civstopescort;";
if (!isNull life_pInact_curTarget && player distance life_pInact_curTarget < 4 && isPlayer life_pInact_curTarget && (life_pInact_curTarget getVariable ["tied", false]) && (life_pInact_curTarget getVariable["Escorting", false])) then {
} else {
_Btn9 ctrlEnable false;		
};

_Btn10 ctrlSetText "Destroy Radio/Gps";
_Btn10 buttonSetAction "[life_pInact_curTarget] call life_fnc_destroyComms;";
if (!isNull life_pInact_curTarget && player distance life_pInact_curTarget < 4 && isPlayer life_pInact_curTarget && ( animationState life_pInact_curTarget == "Incapacitated" || animationState life_pInact_curTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" || (life_pInact_curTarget getVariable ["tied", false]) || animationState life_pInact_curTarget == "AmovPercMstpSsurWnonDnon" ) ) then {
} else {
_Btn10 ctrlEnable false;		
};