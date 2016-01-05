#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_racing = false;
koil_antispam = 0;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_koil_race = 0;
life_koil_race2 = 0;
life_clothing_uniform = -1;
life_koil_rally = 0;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_paintball = false;
life_spikestrip = ObjNull;
life_deathpos = 1;
life_respawn_timer = 5; //Scaled in minutes
life_knockout = false;
life_rope = 1;
koil_life = 1;
life_stretcher = 1;
hacking = false;
life_poop = 15;
life_std = 0;
life_maxweightdone = 0;
life_seatbelt = false;
life_seatwarn = false;
life_eattotal = 0;
life_dirt = 0;
life_pizza = false;
life_koil_parachute = 0;
life_applypressure = 0;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_fadeSound = false;
life_spam_my_dick2 = 0;
life_spam_my_dick = 0;
life_married = "";
life_siren_on = 0;
koil_altcheck = false;
life_drugfield_fertilized = false;
life_drugfield_generator = ObjNull;
life_drugfield_light1 = ObjNull;
life_drugfield_light2 = ObjNull;
life_drugfield_light3 = ObjNull;
life_drugfield_light4 = ObjNull;
life_drugfield_seeded = false;
life_drugfield_shovel = false;
koildeb = 1;
koildebi = 1;
koildebii = 1;
koildebiii = 1;
koildebiiii = 1;
life_koil_nlr = 0;
life_nospampls = 0;
life_firing_range = false;
life_god = false;
life_frozen = false;
life_markers = false;


//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,2000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,7); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,100000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,100000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,100000); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_battery = 70;
life_charging = 2;
life_koil_hh = 2;
life_hunger = 100;
life_revivemoney = false;
life_intox = 0.00;
__CONST__(life_paycheck_period,5); //5 minutes
KWEFookxWQOk = 0;
__CONST__(life_impound_car,8565);
__CONST__(life_impound_boat,4585);
__CONST__(life_impound_air,15486);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 25000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 15000; //Starting Bank Money
		life_paycheck = 500; //Paycheck Amount
	};
	case independent: {
		life_atmcash = 15000;
		life_paycheck = 1000;
	};
	case east: //wtf even is even this side -- heisen
	{
		life_atmcash = 15000; //Starting Bank Money
		life_paycheck = 1; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
"life_inv_condom",
"life_inv_medkit",
"life_inv_cleankit",
"life_inv_weddingring",
"life_inv_bandage",
"life_inv_tierope",
"life_inv_stitches",
"life_inv_splint",
"life_inv_mobilephone",
"life_inv_panicbutton",
"life_inv_epipen",
"life_inv_bec",
"life_inv_MDMAu",
"life_inv_MDMAp",
"life_inv_methu",
"life_inv_methp",
"life_inv_cokeu",
"life_inv_cokep",
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_hackingtool",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_sunflower",
	"life_inv_corn",
	"life_inv_bean",
	"life_inv_cotton",
	"life_inv_olive",
	"life_inv_opium",
	"life_inv_cannabis",
	"life_inv_pumpkin",
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_opiumseeds",
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	"life_inv_rawgoatmeat",
	"life_inv_rawchicken",
	"life_inv_rawsheepmeat",
	"life_inv_rawrabbit",
	//Additions
	"life_inv_zoobeer", // Duff Beer
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadConeB",
	"life_inv_RoadConeStripB",
	"life_inv_RoadBlockWood",
	"life_inv_RoadBlockConc",
	"life_inv_RoadBlockRebel",
	"life_inv_BarGate",
	"life_inv_ziptie",
	"life_inv_tobacco",
	"life_inv_cigarette",
	"life_inv_kidney",
	"life_inv_zoobeer2",
	"life_inv_jackdaniels",
	"life_inv_vodka",
	"life_inv_jagerbomb",
	"life_inv_absinthe",
	"life_inv_redwine",
	"life_inv_whitewine",
	"life_inv_whiterussian",
	"life_inv_sexonthebeach",
	"life_inv_tequila",
	"life_inv_jackdanielsandcoke",
	"life_inv_raxsrum"	
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
    ["license_civ_MDMA","civ"],
    ["license_civ_meth","civ"],
    ["license_civ_coke","civ"],
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_rifle","civ"],
	["license_civ_opencarry", "civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

//life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["cannabis",2500],["opium",2500],["marijuana",3000],["turtle",5000],["hackingtool",10000],["blastingcharge",10000],["boltcutter",3500],["methu",400],["methp",4000],["cokeu",400],["cokep",5000],["MDMAu",360],["MDMAp",3600]];


/*
	Sell / buy arrays
*/
sell_array = 
[
["weddingring",80000],
	["bec",500],
	["medkit",5000],
	["cleankit",1000],
	["mobilephone",100],
	["panicbutton",100],
	["MDMAu",1850],
	["MDMAp",2150],
	["methu",1900],
	["methp",2950],
	["cokeu",1845],
	["cokep",2650],
	["apple",50],
	["heroinu",1850],
	["heroinp",2550],
	["salema",590],
	["ornate",590],
	["mackerel",1050],
	["tuna",2950],
	["mullet",1150],
	["catshark",1900],
	["marijuana",2350],
	["turtle",1000],
	["rabbit",65],
	["oilp",2700],
	["water",5],
	["coffee",5],
	["bandage",5],
	["tierope",5000],
	["stitches",5],
	["splint",5],
	["epipen",5],
	["turtlesoup",1000],
	["donuts",60],
	["tbacon",25],
	["lockpick",600],
	["pickaxe",750],
	["redgull",120],
	["peach",55],
	["cocaine",1654],
	["cocainep",1750],
	["diamond",750],
	["diamondc",1850],
	["iron_r",1154],
	["copper_r",1375],
	["salt_r",1650],
	["glass",1525],
	["fuelF",500],
	["wheat",380],
	["sunflower",660],
	["corn",500],
	["bean",800],
	["cotton",300],
	["olive",950],
	["opium",1000],
	["cannabis",1050],
	["pumpkin",1100],
	["wheat seed",10],
	["sunflower seed",10],
	["corn seed",10],
	["bean seed",10],
	["cotton seed",10],
	["olive seed",10],
	["opium seed",150],
	["cannabis seed",150],
	["pumpkin seed",50],
	["raw goat meat",500],
	["raw chicken",700],
	["raw sheep meat",500],
	["raw rabbit",700],
	//["spikeStrip",1200],
	["cement",2650],
	["goldbar",95000], 
	//Deo Additions
	["zoobeer",25], 
	["zoobeer2",25],
	["vodka",125],
	["jackdaniels",125],
	["jagerbomb",225],
	["absinthe",225],
	["redwine",225],
	["whitewine",325],
	["whiterussian",325],
	["sexonthebeach",325],
	["tequila",325],
	["jackdanielsandcoke",325],
	["condom",1000],

	["BarGate",500],
	["RoadBlockConc",2000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["cigarette",5],
	["Rax's Rum",25]
];
__CONST__(sell_array,sell_array);

buy_array =
[
	["cleankit",1000],
	["medkit",5000],
	["condom",1000],
	["weddingring",1000000],
	["bandage",250],
	["tierope",11250],
	["stitches",10],
	["splint",10],
	["epipen",10],
	["marijuana",15000],
	["methp",15000],
	["MDMAp",15000],
	["cokep",15000],
	["apple",65],
	["rabbit",75],
	["bec",500],
	["mobilephone",100],
	["panicbutton",100],
	["salema",650],
	["ornate",650],
	["mackerel",1150],
	["tuna",3550],
	["mullet",1250],
	["catshark",2200],
	["marijuana",5500],
	["turtle",9500],
	["water",10],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",1000],
	["pickaxe",1200],
	["redgull",120],
	["fuelF",850],
	["wheat",400],
	["sunflower",670],
	["corn",800],
	["bean",810],
	["cotton",330],
	["olive",2795],
	["opium",4000],
	["cannabis",4000],
	["pumpkin",1200],
	["wheat seed",25],
	["sunflower seed",25],
	["corn seed",25],
	["bean seed",25],
	["cotton seed",25],
	["olive seed",25],
	["opium seed",400],
	["cannabis seed",400],
	["pumpkin seed",150],
	["raw goat meat",600],
	["raw chicken",800],
	["raw sheep meat",600],
	["raw rabbit",800],
	["peach",68],
	//["spikeStrip",2500],
	["blastingcharge",150000],
	["hackingtool",150000],
	["boltcutter",25000],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	// Deo's Adds
	["zoobeer",25],
	["zoobeer2",25],
	["vodka",125],
	["jackdaniels",125],
	["jagerbomb",225],
	["absinthe",225],
	["redwine",225],
	["whitewine",325],
	["whiterussian",325],
	["sexonthebeach",325],
	["tequila",325],
	["jackdanielsandcoke",325],
	["BarGate",500],
	["RoadBlockConc",30000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["cigarette",25],
	["Rax's Rum",50]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[

//city life bikes


			["cl3_enduro_aqua",0],
			["cl3_xr_1000_aqua",0],

			["cl3_enduro_babyblue",0],
			["cl3_xr_1000_babyblue",0],

			["cl3_enduro_babypink",0],
			["cl3_xr_1000_babypink",0],

			["cl3_enduro_black",0],
			["cl3_xr_1000_black",0],

			["cl3_enduro_blue",0],
			["cl3_xr_1000_blue",0],

			["cl3_enduro_burgundy",0],
			["cl3_xr_1000_burgundy",0],

			["cl3_enduro_cardinal",0],
			["cl3_xr_1000_cardinal",0],

			["cl3_enduro_dark_green",0],
			["cl3_xr_1000_dark_green",0],

			["cl3_enduro_flame",0],
			["cl3_xr_1000_flame",0],

			["cl3_enduro_flame1",0],
			["cl3_xr_1000_flame1",0],

			["cl3_enduro_flame2",0],
			["cl3_xr_1000_flame2",0],

			["cl3_enduro_gold",0],
			["cl3_xr_1000_gold",0],

			["cl3_enduro_green",0],
			["cl3_xr_1000_green",0],

			["cl3_enduro_grey",0],
			["cl3_xr_1000_grey",0],

			["cl3_enduro_lavender",0],
			["cl3_xr_1000_lavender",0],

			["cl3_enduro_light_blue",0],
			["cl3_xr_1000_light_blue",0],

			["cl3_enduro_light_yellow",0],
			["cl3_xr_1000_light_yellow",0],

			["cl3_enduro_lime",0],
			["cl3_xr_1000_lime",0],

			["cl3_enduro_marina_blue",0],
			["cl3_xr_1000_marina_blue",0],

			["cl3_enduro_navy_blue",0],
			["cl3_xr_1000_navy_blue",0],

			["cl3_enduro_orange",0],
			["cl3_xr_1000_orange",0],

			["cl3_enduro_purple",0],
			["cl3_xr_1000_purple",0],

			["cl3_enduro_red",0],
			["cl3_xr_1000_red",0],

			["cl3_enduro_sand",0],
			["cl3_xr_1000_sand",0],

			["cl3_enduro_silver",0],
			["cl3_xr_1000_silver",0],

			["cl3_enduro_white",0],
			["cl3_xr_1000_white",0],

			["cl3_enduro_yellow",0],
			["cl3_xr_1000_yellow",0],







			["tcg_hrly",0],
			["tcg_hrly_white",0],	
			["tcg_hrly_red",0],
			["tcg_hrly_metal",0],
			["tcg_hrly_blue",0],
			["tcg_hrly_limited",0],
			["tcg_hrly_demon",0],
			["tcg_hrly_coco",0],
			["tcg_hrly_orig1",0],
			["tcg_hrly_orig2",0],
			["tcg_hrly_skeleton",0],
			["tcg_hrly_gay",0],

			["wirk_h3_limo",0],



			//CL3
			["cl3_mackr_del_blue",0],
			["cl3_mackr_del_american",0],
			["cl3_mackr_del_black",0],
			["cl3_mackr_del_black_gold",0],
			["cl3_mackr_del_black_white",0],
			["cl3_mackr_del_green_white",0],
			["cl3_mackr_del_red_white",0],
["Nhz_audia8limo",0],
			//CL3



			["C_Van_01_fuel_F",0],
			["I_G_Van_01_fuel_F",0],

			["A3L_BMW135Sport1",0],
			["A3L_BMW135Sport2",0],
			["A3L_BMW135Sport3",0],
			["A3L_BMW135Sport4",0],
			["A3L_BMW135Sport5",0],
			["A3L_BMW135White",0],
			["A3L_BMW135Black",0],
			["A3L_BMW135Blue",0],
			["A3L_BMW135Purple",0],
			["A3L_BMW135Red",0],

			["AM_Holden_RBlue",0],			
			["AM_Holden_RRed",0],
			["AM_Holden_RWhite",0],
			["AM_Holden_RBlack",0],

	["AM_Holden_EMS",0],
		["AM_Holden_Police",0],
		["GNT_C185",0],
		["M1030",0],
		["A3L_EvoXrally_green",0],
		["A3L_EvoXrally_white",0],
		["A3L_EvoXrally_red",0],
		["A3L_EvoXrally_blue",0],
		["A3L_EvoXDarkGreen",0],
		["A3L_OffGreen",0],
		["A3L_EvoXOffYellow",0],
		["A3L_EvoXYellow",0],
		["A3L_EvoXPink",0],
		["A3L_EvoXPurple",0],
		["A3L_EvoXWhite",0],
		["A3L_EvoXBlack",0],
		["A3L_EvoXRed",0],
		["EvoXSo1",0],
		["EvoXSo2",0],
		["EvoXSo3",0],
		["EvoXSo4",0],
		["A3L_TaurusPD1",0],
		["A3L_TaurusPD2",0],
		["A3L_SuburbanCSO",0],
		["A3L_Suburban",0],
		["A3L_SuburbanUM",0],
	["B_QuadBike_01_F",0],
	["C_Hatchback_01_F",0],
	["C_Offroad_01_F", 0],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",0],
	["C_Van_01_transport_F",0],
	["C_Hatchback_01_sport_F",0],
	["C_Van_01_fuel_F",0],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",0],
	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["B_Truck_01_transport_F",0],
	["B_Truck_01_box_F", 0],
	["O_MRAP_02_F",0],
	["B_Heli_Light_01_F",0],
	["O_Heli_Light_02_unarmed_F",0],
	["C_Rubberboat",0],
	["C_Boat_Civil_01_F",0],
	["B_Boat_Transport_01_F",0],
	["C_Boat_Civil_01_police_F",0],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["A3L_Bus",0],
	["A3L_Karts",0],
	["A3L_AmberLamps",0],
	["A3L_Laddertruck",0],
	["A3L_Cooper_concept_blue",0],
	["A3L_Cooper_concept_black",0],
	["A3L_Cooper_concept_red",0],
	["A3L_Cooper_concept_white",0],
	["A3L_AMC",0],
	["A3L_AMXRed",0],
	["A3L_AMXWhite",0],
	["A3L_AMXBlue",0],
	["A3L_AMXGL",0],
	["A3L_VolvoS60RBlack",0],
	["A3L_VolvoS60Rred",0],
	["S_Skyline_Red",0],
	["S_Skyline_Blue",0],
	["S_Skyline_Black",0],
	["S_Skyline_Yellow",0],
	["S_Skyline_Purple",0],
	["S_Skyline_White",0],
	["A3L_Ferrari458black",0],
	["A3L_Ferrari458white",0],
	["A3L_Ferrari458blue",0],
	["A3L_SuburbanWhite",0],
	["A3L_SuburbanBlue",0],
	["A3L_SuburbanRed",0],
	["A3L_SuburbanBlack",0],
	["A3L_SuburbanGrey",0],
	["A3L_SuburbanOrange",0],
	["A3L_TahoeWhite",0],
	["A3L_TahoeRed",0],
	["A3L_TahoeBlue",0],
	["A3L_Camaro",0],
	["A3L_FordKaBlue",0],
	["A3L_FordKaRed",0],
	["A3L_FordKaBlack",0],
	["A3L_FordKaWhite",0],
	["A3L_FordKaGrey",0],
	["A3L_Taurus",0],
	["A3L_TaurusBlack",0],
	["A3L_TaurusBlue",0],
	["A3L_TaurusRed",0],
	["A3L_TaurusWhite",0],
	["A3L_GrandCaravan",0],
	["A3L_GrandCaravanBlk",0],
	["A3L_GrandCaravanBlue",0],
	["A3L_GrandCaravanGreen",0],
	["A3L_GrandCaravanRed",0],
	["A3L_GrandCaravanPurple",0],
	["A3L_Challenger",0],
	["A3L_ChallengerGreen",0],
	["A3L_ChallengerRed",0],
	["A3L_ChallengerWhite",0],
	["A3L_ChallengerBlack",0],
	["A3L_ChallengerBlue",0],

	["A3L_ChargerRed",0],
	["A3L_ChargerBlue",0],
	["A3L_ChargerBlack",0],
	["A3L_ChargerWhite",0],
	["A3L_Charger",0],

	["Jonzie_Viper",0],
	["A3L_Escort",0],
	["A3L_EscortTaxi",0],
	["A3L_EscortBlack",0],
	["A3L_EscortBlue",0],
	["A3L_EscortWhite",0],
	["A3L_EscortPink",0],
	["A3L_PuntoRed",0],
	["A3L_PuntoBlack",0],
	["A3L_PuntoWhite",0],
	["A3L_PuntoGrey",0],
	["A3L_RegalBlack",0],
	["A3L_RegalBlue",0],
	["A3L_RegalOrange",0],
	["A3L_RegalRed",0],
	["A3L_RegalWhite",0],
	["A3L_JeepWhiteBlack",0],
	["A3L_JeepGreenBlack",0],
	["A3L_JeepRedTan",0],
	["A3L_JeepRedBlack",0],
	["A3L_JeepGrayBlack",0],
	["A3L_VolksWagenGolfGTired",0],
	["A3L_VolksWagenGolfGTiblack",0],
	["A3L_VolksWagenGolfGTiblue",0],
	["A3L_VolksWagenGolfGTiwhite",0],
	["A3L_F350Black",0],
	["A3L_F350Blue",0],
	["A3L_F350Red",0],
	["A3L_F350White",0],
	["A3L_Dumptruck",0],
	["C_Van_01_box_F",0],
	["C_Van_01_transport_F",0],
	["A3L_GrandCaravanUC",0],
	["A3L_GrandCaravanUCBlack",0],
	["A3L_TaurusFPBLBPD",0],
	["A3L_TaurusFPBLBCSO",0],
	["A3L_TaurusFPBPD",0],
	["A3L_TaurusFPBPDGM",0],
	["A3L_TaurusFPBCSO",0],
	["A3L_TaurusUCBlack",0],
	["A3L_TaurusUCGrey",0],
	["A3L_TaurusUCWhite",0],
	["A3L_TaurusUCBlue",0],
	["A3L_TaurusUCRed",0],
	["A3L_CVPIFPBPD",0],
	["A3L_CVPIFPBCSO",0],
	["A3L_CVPIFPBFG",0],
	["A3L_CVPIFPBLBPD",0],
	["A3L_CVPIFPBLBCSO",0],
	["A3L_CVPIFPBLBFG",0],
	["A3L_TahoeUCPB",0],
	["A3L_TahoeUC",0],
	["A3L_TahoeUCGMPB",0],
	["A3L_TahoeCSOLBPB",0 ],
	["A3L_jailBus",0],
	["A3L_Suburban",0],
	["A3L_SuburbanCSO",0],
	["A3L_SuburbanFG",0],
	["B_MRAP_01_F",7500]
	
	
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[


  			["charger_umb",35000],
  			["charger_umw",35000],

  			["cg_h2_sert",35000],
			["cg_cvpitrooper",10000],
			["cg_taurustrooper",10000],
			["cg_trooperevo",20000],
			["B_Quadbike_01_F",3000],
			["cl3_xr_1000_police",25000],
  			["A3L_ChargerUC",20000],
			["A3L_ChargerUCWhite",20000],
			["A3L_TaurusCO1",20000],
			["A3L_CVPIFPBCSO",20000],
			["A3L_CVPIFPBLBCSO",20000],
			["A3L_TaurusFPBCSO",20000],
			["A3L_TaurusFPBLBCSO",20000],
			["A3L_SuburbanCSO",20000],
			["A3L_SuburbanUM",20000],
			["EvoXSo1",40000],
			["EvoXSo2",40000],
			["EvoXSo3",40000],
			["EvoXSo4",40000],
			["AM_Holden_Police",40000],
			["A3L_CVPIUC",20000],
			["A3L_CVPIUCBlack",20000],
			["A3L_CVPIUCBlue",20000],
			["A3L_CVPIUCWhite",20000],
			["A3L_CVPIUCPink",20000],
			["A3L_CVPIUCRed",20000],
			["A3L_GrandCaravanUC",30000],
			["A3L_GrandCaravanUCBlack",30000],
			["A3L_jailBus",50000],		
			["A3L_TaurusUC",30000],
			["A3L_TaurusUCBlue",30000],
			["A3L_TaurusUCGrey",30000],
			["A3L_TaurusUCRed",30000],
			["A3L_TaurusUCWhite",30000],
			["DAR_TahoePoliceDet",30000],
			["DAR_ExplorerPoliceStealth",30000],
			["B_Quadbike_01_F",3000],
			["I_G_Van_01_fuel_F",35000],
	
			["B_G_Offroad_01_F",65000],
			["cl3_mackr_del_blue",52000],
			["cl3_mackr_del_american",52000],
			["cl3_mackr_del_black",52000],
			["cl3_mackr_del_black_gold",52000],
			["cl3_mackr_del_black_white",52000],
			["cl3_mackr_del_green_white",52000],
			["cl3_mackr_del_red_white",52000],
			["A3L_F350Black",35000],
			["A3L_F350Blue",35000],
			["A3L_F350Red",35000],
			["A3L_F350White",35000],
			["C_Van_01_fuel_F",35000],
			["C_Van_01_box_F",40000],
			["C_Van_01_transport_F",35000],
			["A3L_Bus",60000],
			["wirk_h3_limo",130000],
			["Nhz_audia8limo",130000],
			["A3L_Towtruck",4000],			
			["tcg_hrly",25000],
			["tcg_hrly_white",25000],	
			["tcg_hrly_red",25000],
			["tcg_hrly_metal",25000],
			["tcg_hrly_blue",25000],
			["tcg_hrly_limited",25000],
			["tcg_hrly_demon",25000],
			["tcg_hrly_coco",25000],
			["tcg_hrly_orig1",25000],
			["tcg_hrly_orig2",25000],
			["tcg_hrly_skeleton",25000],
			["tcg_hrly_gay",25000],

			["cl3_enduro_aqua",35000],
			["cl3_xr_1000_aqua",55000],

			["cl3_enduro_babyblue",35000],
			["cl3_xr_1000_babyblue",55000],

			["cl3_enduro_babypink",35000],
			["cl3_xr_1000_babypink",55000],

			["cl3_enduro_black",35000],
			["cl3_xr_1000_black",55000],

			["cl3_enduro_blue",35000],
			["cl3_xr_1000_blue",55000],

			["cl3_enduro_burgundy",35000],
			["cl3_xr_1000_burgundy",55000],

			["cl3_enduro_cardinal",35000],
			["cl3_xr_1000_cardinal",55000],

			["cl3_enduro_dark_green",35000],
			["cl3_xr_1000_dark_green",55000],

			["cl3_enduro_flame",35000],
			["cl3_xr_1000_flame",55000],

			["cl3_enduro_flame1",35000],
			["cl3_xr_1000_flame1",55000],

			["cl3_enduro_flame2",35000],
			["cl3_xr_1000_flame2",55000],

			["cl3_enduro_gold",35000],
			["cl3_xr_1000_gold",55000],

			["cl3_enduro_green",35000],
			["cl3_xr_1000_green",55000],

			["cl3_enduro_grey",35000],
			["cl3_xr_1000_grey",55000],

			["cl3_enduro_lavender",35000],
			["cl3_xr_1000_lavender",55000],

			["cl3_enduro_light_blue",35000],
			["cl3_xr_1000_light_blue",55000],

			["cl3_enduro_light_yellow",35000],
			["cl3_xr_1000_light_yellow",55000],

			["cl3_enduro_lime",35000],
			["cl3_xr_1000_lime",55000],

			["cl3_enduro_marina_blue",35000],
			["cl3_xr_1000_marina_blue",55000],

			["cl3_enduro_navy_blue",35000],
			["cl3_xr_1000_navy_blue",55000],

			["cl3_enduro_orange",35000],
			["cl3_xr_1000_orange",55000],

			["cl3_enduro_purple",35000],
			["cl3_xr_1000_purple",55000],

			["cl3_enduro_red",35000],
			["cl3_xr_1000_red",55000],

			["cl3_enduro_sand",35000],
			["cl3_xr_1000_sand",55000],

			["cl3_enduro_silver",35000],
			["cl3_xr_1000_silver",55000],

			["cl3_enduro_white",35000],
			["cl3_xr_1000_white",55000],

			["cl3_enduro_yellow",35000],
			["cl3_xr_1000_yellow",55000],
			["Jonzie_Mini_Cooper",8000],
			["Jonzie_Mini_Cooper_R_spec",20000],
			["B_Quadbike_01_F",3000],

			["critgamin_contown_civ",8000],
			["critgamin_contown_bleu",8000],
			["critgamin_contown_noir",8000],
			["critgamin_contown_bleufonce",8000],
			["critgamin_contown_rouge",8000],
			["critgamin_contown_jaune",8000],
			["critgamin_contown_rose",8000],
			["critgamin_contown_grise",8000],
			["critgamin_contown_violet",8000],
			["critgamin_contown_jaune",8000],
			["critgamin_contown_orange",8000],			
			["critgamin_contown_vert",8000],


			["critgamin_vangmcc_civ",8000],
			["critgamin_vangmcc_civ_noir",8000],
			["critgamin_vangmcc_civ_bleufonce",8000],
			["critgamin_vangmcc_civ_bleu",8000],
			["critgamin_vangmcc_civ_vert",8000],
			["critgamin_vangmcc_civ_rouge",8000],
			["critgamin_vangmcc_civ_jaune",8000],
			["critgamin_vangmcc_civ_rose",8000],
			["critgamin_vangmcc_civ_grise",8000],
			["critgamin_vangmcc_civ_violet",8000],
			["critgamin_vangmcc_civ_orange",8000],



			["A3L_RegalBlack",12000],
			["A3L_RegalBlue",12000],
			["A3L_RegalOrange",12000],
			["A3L_RegalRed",12000],
			["A3L_RegalWhite",12000],
			["A3L_JeepWhiteBlack",15000],
			["A3L_JeepGreenBlack",15000],
			["A3L_JeepRedTan",15000],
			["A3L_JeepRedBlack",15000],
			["A3L_JeepGrayBlack",15000],
			["A3L_VolksWagenGolfGTired",26000],
			["A3L_VolksWagenGolfGTiblack",26000],
			["A3L_VolksWagenGolfGTiblue",26000],
			["A3L_VolksWagenGolfGTiwhite",26000],
			["S_Rangerover_Black",35000],
			["S_Rangerover_Red",35000],
			["S_Rangerover_Blue",35000],
			["S_Rangerover_Green",35000],
			["S_Rangerover_Purple",35000],
			["S_Rangerover_Grey",35000],
			["S_Rangerover_Orange",35000],
			["S_Rangerover_White",35000],
			["A3L_GrandCaravan",30000],
			["A3L_GrandCaravanBlk",30000],
			["A3L_GrandCaravanBlue",30000],
			["A3L_GrandCaravanGreen",30000],
			["A3L_GrandCaravanRed",30000],
			["A3L_GrandCaravanPurple",30000],
			["A3L_Challenger",45000],
			["A3L_ChallengerGreen",45000],
			["A3L_ChallengerRed",45000],
			["A3L_ChallengerWhite",45000],
			["A3L_ChallengerBlack",45000],
			["A3L_ChallengerBlue",45000],
			["A3L_Charger",50000],
			["A3L_ChargerBlack",50000],
			["A3L_ChargerBlue",50000],
			["A3L_ChargerWhite",50000],
			["A3L_ChargerRed",50000],
			["AM_2015C_Black",70000],
			["AM_2015C_blue",70000],
			["AM_2015C_white",70000],

			["Jonzie_Viper",45000],
			["A3L_FordKaBlue",20000],
			["A3L_FordKaRed",20000],
			["A3L_FordKaBlack",20000],
			["A3L_FordKaWhite",20000],
			["A3L_FordKaGrey",20000],
			["A3L_CVWhite",30000],
			["A3L_CVBlack",30000],
			["A3L_CVGrey",30000],
			["A3L_CVRed",30000],
			["A3L_CVPink",30000],
			["A3L_CVBlue",30000],
			["A3L_Taurus",40000],
			["A3L_TaurusBlack",40000],
			["A3L_TaurusBlue",40000],
			["A3L_TaurusRed",40000],
			["A3L_TaurusWhite",40000],
			["DAR_TahoeCivSilver",40000],
			["DAR_TahoeCivBlue",40000],
			["DAR_TahoeCivRed",40000],
			["DAR_TahoeCivBlack",40000],
			["A3L_SuburbanWhite",90000],
			["A3L_SuburbanBlue",90000],
			["A3L_SuburbanRed",90000],
			["A3L_SuburbanBlack",90000],
			["A3L_SuburbanGrey",90000],
			["A3L_SuburbanOrange",90000],
			["A3L_Camaro",95000],
			["A3L_Cooper_concept_blue",25000],
			["A3L_Cooper_concept_black",25000],
			["A3L_Cooper_concept_red",25000],
			["A3L_Cooper_concept_white",25000],
			
			["A3L_RX7_Blue",50000],
			["A3L_RX7_Red",50000],
			["A3L_RX7_White",50000],
			["A3L_RX7_Black",50000],
			

			
			["A3L_AMC",30000],
			["A3L_AMXRed",30000],
			["A3L_AMXWhite",30000],
			["A3L_AMXBlue",30000],
			["A3L_AMXGL",35000],
			["S_Skyline_Red",45000],
			["S_Skyline_Blue",45000],
			["S_Skyline_Black",45000],
			["S_Skyline_Yellow",45000],
			["S_Skyline_Purple",45000],
			["S_Skyline_White",45000],




			["A3L_BMW135Sport1",65000],
			["A3L_BMW135Sport2",65000],
			["A3L_BMW135Sport3",65000],
			["A3L_BMW135Sport4",65000],
			["A3L_BMW135Sport5",65000],
			["A3L_BMW135White",65000],
			["A3L_BMW135Black",65000],
			["A3L_BMW135Blue",65000],
			["A3L_BMW135Purple",65000],
			["A3L_BMW135Red",65000],




			["A3L_EvoXDarkGreen",75000],
			["A3L_OffGreen",75000],
			["A3L_EvoXOffYellow",75000],
			["A3L_EvoXYellow",75000],
			["A3L_EvoXPink",75000],
			["A3L_EvoXPurple",75000],
			["A3L_EvoXWhite",75000],
			["A3L_EvoXBlack",75000],
			["A3L_EvoXRed",75000],
			["S_Vantage_Red",50000],
			["S_Vantage_Blue",50000],
			["S_Vantage_Black",50000],
			["S_Vantage_Yellow",50000],
			["S_Vantage_LightBlue",50000],
			["S_Vantage_Purple",50000],
			["S_Vantage_White",50000],
			["A3L_EvoXrally_green",85000],
			["A3L_EvoXrally_white",85000],
			["A3L_EvoXrally_red",85000],
			["A3L_EvoXrally_blue",85000],
			["A3L_Ferrari458black",90000],
			["A3L_Ferrari458white",90000],
			["A3L_Ferrari458blue",90000],
			["S_PorscheRS_Black",45000],
			["S_PorscheRS_Yellow",45000],
			["S_PorscheRS_White",45000],


						//HOLDENS
			["AM_Holden_White",85000],
			["AM_Holden_Black",85000],
			["AM_Holden_Green",85000],
			["AM_Holden_DarkGreen",85000],
			["AM_Holden_OffGreen",85000],
			["AM_Holden_blue",85000],
			["AM_Holden_OffYellow",85000],
			["AM_Holden_Pink",85000],
			["AM_Holden_Purple",85000],
			["AM_Holden_Yellow",85000],
			
			["S_McLarenP1_Black",80000],
			["S_McLarenP1_Blue",85000],
			["S_McLarenP1_Orange",85000],
			["S_McLarenP1_White",85000],
			["S_McLarenP1_Yellow",85000],
			["S_McLarenP1_Silver",85000],
			["A3L_Veyron",50000],
			["A3L_Veyron_red",50000],
			["A3L_Veyron_black",50000],
			["A3L_Veyron_white",50000],
			["A3L_Veyron_orange",50000],


			//Holden racing
			["AM_Holden_RBlue",98500],			
			["AM_Holden_RRed",98500],
			["AM_Holden_RWhite",98500],
			["AM_Holden_RBlack",98500],

			["CG_Lamborghini_Aventador_Red", 100000],
			["CG_Lamborghini_Aventador_Black", 100000],
			["CG_Lamborghini_Aventador_Blue", 100000],
			["CG_Lamborghini_Aventador_Green", 100000],
			["CG_Lamborghini_Aventador_Orange", 100000],
			["CG_Lamborghini_Aventador_Purple", 100000],
			["CG_Lamborghini_Aventador_White", 100000],
			["IVORY_PRIUS",11000],
			["IVORY_R8",45000],
			["IVORY_R8SPYDER",44000],
			["IVORY_REV",40000]


];
__CONST__(life_garage_sell,life_garage_sell);
