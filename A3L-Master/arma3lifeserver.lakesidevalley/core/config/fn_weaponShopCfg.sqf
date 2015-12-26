#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
		Edited:Evo Dev Team "Murp"
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
       
	   
	   
	   
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
											["FirstAidKit",nil,250],
											["Medikit",nil,500],
											["ToolKit",nil,500]
                                        ]
                                ];
                        };
                };
        };
		case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
											["A3L_Extinguisher",nil,350],
											["tf_anprc152",nil,100],
                                            ["tf_rt1523g",nil,300],
											["ItemGPS",nil,250],
											["Binocular",nil,1250],
											["ToolKit",nil,500],
											["pmc_earpiece",nil,500],
											["Chemlight_red",nil,200]
                                        ]
                                ];
                        };
                };
        };
	
		
        case "cop_1":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Level 1 Cop",
                                        [
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												
												["Taser_26",nil,900],
										        ["26_cartridge",nil,200],
												
                                                ["Radar_Gun",nil,100],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,500],
												["pmc_earpiece",nil,500],
												["optic_LRPS",nil,500],
												
                                                ["tf_anprc152",nil,100],
												["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
		
	    case "cop_2":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 2): {" You are not level 2 cop"};
                        default
                        default
                        {
                                ["Level 2 Cop",
                                        [
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												
												["Taser_26",nil,900],
										        ["26_cartridge",nil,200],
												
												["RH_m9",nil,1500],
												["RH_15Rnd_9x19_M9",nil,333],
												
                                                ["Radar_Gun",nil,100],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,500],
												["pmc_earpiece",nil,500],
												["optic_LRPS",nil,500],
												
                                                ["tf_anprc152",nil,100],
												["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_3":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 3): {" You are not level 3 cop"};
                        default
                        default
                        {
                                ["Level 3 Cop",
                                        [
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												
												["Taser_26",nil,900],
										        ["26_cartridge",nil,200],
												
												["RH_m9",nil,1500],
												["RH_15Rnd_9x19_M9",nil,333],
												
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,333],
												
                                                ["Radar_Gun",nil,100],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,500],
												["pmc_earpiece",nil,500],
												["optic_LRPS",nil,500],
												
                                                ["tf_anprc152",nil,100],
												["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
		
	    case "cop_4":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 4): {" You are not level 4 cop"};
                        default
                        default
                        {
                                ["Level 4 Cop",
                                        [
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												
												["Taser_26",nil,900],
										        ["26_cartridge",nil,200],
												
												["RH_m9",nil,1500],
												["RH_15Rnd_9x19_M9",nil,333],
												
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,333],
												
												["AG_MP9",nil,3500],
												["30Rnd_45ACP_Mag_SMG_01",nil,777],
												
												["FHQ_optic_ACOG",nil,1000],
												
                                                ["Radar_Gun",nil,100],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,500],
												["pmc_earpiece",nil,500],
												["optic_LRPS",nil,500],
												
                                                ["tf_anprc152",nil,100],
												["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
		
	    case "cop_5":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 5): {" You are not level 5 cop"};
                        default
                        default
                        {
                                ["Level 5 Cop",
                                        [
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												
												["Taser_26",nil,900],
										        ["26_cartridge",nil,200],
												
												["RH_m9",nil,1500],
												["RH_15Rnd_9x19_M9",nil,333],
												
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,333],
												
												["AG_MP9",nil,3500],
												["30Rnd_45ACP_Mag_SMG_01",nil,777],
												
												["FHQ_optic_ACOG",nil,1000],
												
												["RH_sbr9",nil,5500],
												["RH_32Rnd_9mm_M822",nil,1222],
												
                                                ["Radar_Gun",nil,100],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,500],
												["pmc_earpiece",nil,500],
												["optic_LRPS",nil,500],
												
                                                ["tf_anprc152",nil,100],
												["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_6":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 6): {" You are not level 6 cop"};
                        default
                        default
                        {
                                ["Level 6 Cop",
                                        [
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												
												["Taser_26",nil,900],
										        ["26_cartridge",nil,200],
												
												["RH_m9",nil,1500],
												["RH_15Rnd_9x19_M9",nil,333],
												
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,333],
												
												["AG_MP9",nil,3500],
												["30Rnd_45ACP_Mag_SMG_01",nil,777],
												
												["FHQ_optic_ACOG",nil,1000],
												
												["RH_sbr9",nil,5500],
												["RH_32Rnd_9mm_M822",nil,1222],
												
												["hlc_rifle_M4",nil,7500],
												["30Rnd_556x45_Stanag",nil,1666],
												
                                                ["Radar_Gun",nil,100],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,500],
												["pmc_earpiece",nil,500],
												["optic_LRPS",nil,500],
												
                                                ["tf_anprc152",nil,100],
												["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_7":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 7): {" You are not level 7 cop"};
                        default
                        default
                        {
                                ["Level 7 Cop",
                                        [
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												
												["Taser_26",nil,900],
										        ["26_cartridge",nil,200],
												
												["RH_m9",nil,1500],
												["RH_15Rnd_9x19_M9",nil,333],
												
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,333],
												
												["AG_MP9",nil,3500],
												["30Rnd_45ACP_Mag_SMG_01",nil,777],
												
												["FHQ_optic_ACOG",nil,1000],
												
												["RH_sbr9",nil,5500],
												["RH_32Rnd_9mm_M822",nil,1222],
												
												["hlc_rifle_M4",nil,7500],
												["30Rnd_556x45_Stanag",nil,1666],
												
												["RH_M16A4",nil,9500],
												["RH_30Rnd_556x45_M855A1",nil,2111],
												
                                                ["Radar_Gun",nil,100],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,500],
												["pmc_earpiece",nil,500],
												["optic_LRPS",nil,500],
												
                                                ["tf_anprc152",nil,100],
												["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
        
        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You want some, I'll give it YA! You don't have a license you may find it in Luther's mums panties!"};
                        default
                        {
                                ["Rebel Outpost",
                                        [
										// AK Variants
										["arifle_mas_ak12_sf",nil,350000],
										["30Rnd_mas_545x39_mag",nil,2000],
										["A3L_AK47",nil,450000],
										["A3L_AK47Mag",nil,2000],
										["A3L_AK47sgold",nil,500000],
										["A3L_AK47sMag",nil,2000],
										["arifle_mas_ak74",nil,350000],
										["30Rnd_mas_545x39_mag",nil,2000],
										["arifle_mas_ak_74m",nil,350000],
										["30Rnd_mas_545x39_mag",nil,2000],
										["arifle_mas_ak_74m_sf",nil,350000],
										["30Rnd_mas_545x39_mag",nil,2000],
										["arifle_mas_akm",nil,600000],
										["30Rnd_mas_762x39_mag",nil,3500],
										["arifle_mas_akms",nil,750000],
										["30Rnd_mas_762x39_mag",nil,3500],
										["arifle_mas_aks_74_sf",nil,350000],
										["30Rnd_mas_545x39_mag",nil,2000],
										["arifle_mas_aks74u",nil,350000],
										["30Rnd_mas_545x39_mag",nil,2000],
										["RH_ar10",nil,600000],
										["RH_20Rnd_762x51_AR10",nil,3500],
										["arifle_mas_bizon",nil,195000],
										["64Rnd_mas_9x18_mag",nil,2000],
										["arifle_mas_fal",nil,300000],
										["20Rnd_mas_762x51_Stanag",nil,2000],
										["ej_ThompsonTactical2",nil,150000],
										["Thompson_mag",nil,2000],
										["LMG_mas_rpk_F",nil,1500000],
										["30Rnd_mas_545x39_mag",nil,4500],
										["arifle_mas_saiga",nil,850000],
										["10Rnd_mas_12Gauge_Slug",nil,2500],
										["srifle_mas_svd",nil,1600000],
										["10Rnd_mas_762x54_mag",nil,4500],
										["srifle_mas_m91",nil,1500000],
										["10Rnd_mas_762x54_mag",nil,4500],
										["RH_barska_rds",nil,6000],
										["optic_ACO_grn",nil,2500],
										["optic_MRCO",nil,10000]
										]
                                ];
                        };
                };
        };
       
        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
										["RH_g17",nil,18000],
										["RH_17Rnd_9x19_g17",nil,4000],
										["RH_m9",nil,17500],
										["RH_15Rnd_9x19_M9",nil,3888],
										["RH_cz75",nil,22000],
										["RH_16Rnd_9x19_CZ",nil,4888],
										["RH_fn57",nil,32000],
										["RH_20Rnd_57x28_FN",nil,6666]
                                        ]
                                ];
                        };
                };
        };
		
        case "rifle":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rifle): {"You don't have a Rifle license!"};
                        default
                        {
                                ["Hunting Rifle Shop",
                                        [
										["arifle_mas_lee",nil,25000],
										["5Rnd_mas_762x51_Stanag",nil,1000],
										["arifle_SDAR_F","Turtle Harpoon",30000],
										["20Rnd_556x45_UW_mag","Underwater magazine",1200]

                                        ]
                                ];
                        };
                };
        };		
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
										["A3L_Glock17",nil,17600],
										["A3L_Glock17mag",nil,500],
										["A3L_UZI",nil,37250],
										["A3L_UZImag",nil,950]	
										
                                        ]
                                ];
                        };
                };
        };
       
        case "genstore":
        {
                ["Altis General Store",
                        [
								["ItemMap",nil,69],
								["A3L_Sign2","Legalize Weed",1000],
								["A3L_Sign","Police Pigs",1000],
								["FirstAidKit",nil,250],
                                ["itemRadio",nil,1000],
                                ["Binocular",nil,1250],
                                ["ItemGPS",nil,750],
                                ["ToolKit",nil,500],
                                ["NVGoggles_OPFOR",nil,7500],
                                ["NVGoggles",nil,7500],
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Tv_Camera",nil,200],
                                ["A3L_Shovel",nil,200]
                        ]
                ];
        };
};