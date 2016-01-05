#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.8

GoggleList = ["G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","A3L_Balaclava","Payday_Cagoule","Masque_Chirurgical","Masque_Solitaire"];
HatList = ["kio_vfv_mask","cg_dinomask","cg_dinomask_p","cg_dinomask_r","cg_horsehead","cg_horsehead_2","cg_horsehead_blk","cg_horsehead_pnk","Masque_Alien1","Masque_Anonymous","Masque_Chains","Payday_GeneralO","Casque_Moto","Masque_Clinton","Masque_speedRunner","Masque_Unic","Masque_Aubrey","Masque_Bonnie","Masque_Bush","Masque_Mempo","Masque_Lincoln","Masque_Wolfv2","Masque_archNemesis","Masque_Arnold","Masque_Chuck","Masque_Clover","Masque_Fish","Masque_Hockey","Masque_Metalhead","Masque_Religieuse","Masque_Smiley","Masque_Santa","Masque_Momie","Masque_Optimiste","Masque_forceAlpha","Masque_GdG","Masque_Gombo","Masque_Lion","Masque_Orc","Masque_Mark","Masque_Macrilleuse","Masque_Hoxton","Masque_Incendiaire","Masque_Dallas","A3L_Legoman","jokermask","TRYK_Kio_Balaclava","A3L_Halloween_JigSaw","kio_skl_msk","kio_skl_msk_grn","kio_skl_msk_red"
,"H_RacingHelmet_1_black_F","H_RacingHelmet_1_red_F","H_RacingHelmet_1_white_F","H_RacingHelmet_1_blue_F","H_RacingHelmet_1_yellow_F","H_RacingHelmet_1_green_F","H_RacingHelmet_1_F","H_RacingHelmet_2_F","H_RacingHelmet_3_F","H_RacingHelmet_4_F"];



if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F","Land_Suitcase_F"],8];

_units = _units - [player];

{
	private["_text"];
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Suitcase_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(count _sPos > 1 && {_distance < 7}) then {
			_text = switch (true) do {



				case (goggles _x IN GoggleList && !(_x getVariable "tfrchat")): {format["<t color='#FFFFFF' font='puristaMedium'>Masked</t>"];};
				case (goggles _x IN GoggleList && (_x getVariable "tfrchat")): {format["<t color='#FFFFFF' font='puristaMedium'>Masked</t> <img size='1' image='icons\smalltalk.paa'/>"];};			

				case (headgear _x IN HatList && !(_x getVariable "tfrchat")): {format["<t color='#FFFFFF' font='puristaMedium'>Masked</t>"];};

				case (headgear _x IN HatList && (_x getVariable "tfrchat")): {format["<t color='#FFFFFF' font='puristaMedium'>Masked</t> <img size='1' image='icons\smalltalk.paa'/>"];};

				case (!isNil {(_x getVariable "rank")}): {format["<t color='#FFFFFF' font='puristaMedium'> %1 </t>",_x getVariable ["realname",name _x]]};

				case ((!isNil {_x getVariable "name"} && playerSide == independent)): {format["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> <t font='puristaMedium'> %1 </t>",_x getVariable ["name","Unknown Player"]]};

				default {
					if((!isNil {(group _x) getVariable "gang_name"}) && (!(goggles _x IN ["A3L_Balaclava","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile"]))) then {
						if(!(_x getVariable "tfrchat")) then {
						format["<t color='#FFFFFF' font='puristaMedium'>%1</t><br/><t size='0.9' font='puristaMedium' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
						} else {
						format["<t color='#FFFFFF' font='puristaMedium'>%1</t> <img size='1' image='icons\smalltalk.paa'/> <br/><t size='0.9' font='puristaMedium' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
						};

					} 
					else 
					{
						if ((goggles _x IN ["A3L_Balaclava","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile"]) || (headgear _x IN ["H_CrewHelmetHeli_B", "H_PilotHelmetHeli_B","A3L_Legoman","A3L_Mask","Mask_M40","jokermask","TRYK_Kio_Balaclava","A3L_Halloween_JigSaw","kio_skl_msk","kio_skl_msk_grn","kio_skl_msk_red","H_RacingHelmet_1_black_F","H_RacingHelmet_1_red_F","H_RacingHelmet_1_white_F","H_RacingHelmet_1_blue_F","H_RacingHelmet_1_yellow_F","H_RacingHelmet_1_green_F","H_RacingHelmet_1_F","H_RacingHelmet_2_F","H_RacingHelmet_3_F","H_RacingHelmet_4_F"])) then {
						if(!(_x getVariable "tfrchat")) then {
							format["<t color='#FFFFFF' font='puristaMedium'>Masked</t>"];
						} else
						{
							format["<t color='#FFFFFF' font='puristaMedium'>Masked</t> <img size='1' image='icons\smalltalk.paa'/>"];
						};

							}
							else 
							{
							if(!(_x getVariable "tfrchat")) then {
								format["<t color='#FFFFFF' font='puristaMedium'>%1</t>",(_x getVariable ["realname",name _x])];
							} else
							{
								format["<t color='#FFFFFF' font='puristaMedium'>%1</t> <img size='1' image='icons\smalltalk.paa'/>",(_x getVariable ["realname",name _x])];
							};
							};
					};
				};
			};

			if (uniform _x IN ["U_C_Scientist","TRYK_U_B_woodR_CombatUniformTshirt"] || phone_s_1) then {
				_text = "";
			};

			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;

if(marker_on) then {
	_distance = floor( getpos player distance posinext );     
	_distance = format ["%1 | %2",drawmessage, _distance];
	drawIcon3D ["\A3\ui_f\data\map\markers\military\pickup_ca.paa", [1,1,1,1], posinext, 0.7, 0.7, 5, _distance, 1, 0.036, "PuristaLight"];  
};
