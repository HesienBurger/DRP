/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Hanne´s Fancy Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
//TYRK added
		["TRYK_SUITS_BLK_F","Tailored BL Suit",20000],
		["TRYK_SUITS_BR_F","Tailored BR Suit",25000],
		["TRYK_U_B_Denim_T_BK","Grey Jeans (Black)",5000],
		["TRYK_U_B_Denim_T_WH","Grey Jeans (White)",5000],
		["TRYK_U_B_BLKTAN_CombatUniform","Black T Tan P",5000],
		["TRYK_U_B_PCUGs_BLK","Blue Jeans Black Hood",5000],
//A3L added
		["A3L_Suit_Uniform","Suit",17500],
		["A3L_Priest_Uniform","Priest Uniform",5000],
		["A3L_Character_Uniform","Life Uniform",5000],
		["A3L_Dude_Outfit","Dude outfit",20000],
		["A3L_Farmer_Outfit","Farmer Outfit",20000],
		["A3L_Worker_Outfit","Worker Outfit",20000],
		["A3LShirt","ArmA 3 Life Shirt",250],
		["A3L_A3LogoPants","A3L Logo Pants",150],
		["pervt_uni","Pervert Shirt",175],
		["A3L_Poop2day","I Pooped Today!",420],
		["BluePlaid_uni","A3L Plaid (Blue)",125],
		["OrangePlaid_uni","A3L Plaid (Orange)",350],
		["PinkPlaid_uni","A3L Plaid (Pink)",350],
		["RedPlaid_uni","A3L Plaid (Red)",350],
		["YellowPlaid_uni","A3L Plaid (Yellow)",350],
		["checkered_uni","A3L Polo (Checkered)",350],
		["GbGyBr_uni","A3L Polo (GB-GY-BR)",350],
		["GnBlBr_uni","A3L Polo (GN-BL-BR)",350],
		["GnGyBr_uni","A3L Polo (GN-GN-GY)",350],
		["GyBlBr_uni","A3L Polo (GY-BL-BR)",350],
		["kingfish_uni","A3L Polo (Kingfish)",350],
		["mothertrucker_uni","A3L Polo (Mothertrucker)",350],
		["OrBlBr_uni","A3L Polo (OR-BL-BR)",350],
		["OrGnGy_uni","A3L Polo (OR-GN-GY)",350],
		["OrGyBr_uni","A3L Polo (OR-GY-BR)",350],
		["PkGnGy_uni","A3L Polo (PK-GN-GY)",350],
		["PkGyBr_uni","A3L Polo (PK-GY-BR)",350],
		["RdBlBr_uni","A3L Polo (RD-BL-BR)",350],
		["RdGnGy_uni","A3L Polo (RD-GN-GY)",350],
		["RdGyBr_uni","A3L Polo (RD-GY-BR)",350],
		["sohoku_uni","A3L Polo (Sohoku)",350],
		["WhBlBr_uni","A3L Polo (WH-BL-BR)",350],
		["WhGyBr_uni","A3L Polo (WH-GY-BR)",350],
		["YlBlBr_uni","A3L Polo (YL-BL-BR)",350],
		["YlGnGy_unI","A3L Polo (YL-GN-GY)",350],
		["YlGyBr_uni","A3L Polo (YL-GY-BR)",350],
		["racer_uni","A3L Racer Uniform",350],
		["taxi_uni","A3L Taxi Uniform",350],
		["arma3","ArmA 3 Polo",350],
		["arma3black","ArmA 3 Polo (Black)",350],
		["ATI","ATI Enthusiast",350],
		["tacobell","Delgado Shirt",350],
		["dutch","Dutch Shirt",350],
		["hanacd","Hannes Academy",350],
		["nvidia","Nvidia Enthusiast",350],
		["SFG","SF Giant",350],
		["walkingdead","The Walking Dead",350],
		["demian2435_criminal_shirt","Elegantly criminal",450],
		["U_C_Poor_1","Elegantly poor",2],
		["A3L_Bikini_Girl","Bikini",10000],
		["A3L_SpookyMummy","Spooky Mummy",45000],
		["A3L_Zombie","Zombie",60000],
		["U_C_Scientist","Hazmat Body",10000]
		];
	};
	
	//Hats
	case 1:
	{
		[
     //TYRK added
	  ["Kio_Santa_Hat","Santa Hat",0], // added by heisen
	  ["DIS_Camo_Flames_Mask","Camo Flame Mask",5500],
	  ["DIS_Smiley_Mask","The Smiling",6000],
	  ["kio_vfv_mask","Anonymous",2500],
      ["Kio_Capital_Hat","Top Hat Monacle",1000],
      ["a3l_hardhat","Hard Hat",200],
      ["Kio_Afro_Hat","Brown Afro",200],
      ["H_Beret_blk","Black Beret",200],
      ["Kio_No1_Hat","#1 Hat",200],
      ["Kio_Pirate_Hat","Pirate Hat",50000],
      ["Kio_Santa_Hat","Santa Hat",200],
      ["Kio_Spinning_Hat","Spinning Hat",200],
      ["Kio_Hat","Cute Warm Hat",200],
      ["TRYK_H_Bandana_H","Ninja Bandana",100],
      ["TRYK_H_Bandana_wig","Ninja Bandana II",200],
      ["TRYK_H_EARMUFF","Ear Protectors",200],
      ["TRYK_H_headsetcap_blk","Black Hat",100],
      ["TRYK_H_headsetcap","White Hat",100],
      ["TRYK_H_pakol2","Mid East Hat",5000],
      ["TRYK_R_CAP_BLK","Reverse Black",1000],
      ["TRYK_R_CAP_TAN","Reverse White",1000],
      ["TRYK_H_wig","Real Hair Wig",7000],
      ["TRYK_H_woolhat","Slick Beanie",4000],

          
		  
		  //A3L added
		    ["A3L_Legoman","Lego Helmet",10000],
			["A3L_soa_helmet","Biker Helmet",4000],	
			["A3L_gangster_hat","Gangster Mask",1000],
			["A3L_Mask","Mask",1000],				
			["A3L_longhairblack","Long Hair Black",120],
			["A3L_longhairblond","Long Hair Blond",120],
			["A3L_longhairbrown","Long Hair Brown",120],
			["A3L_Crown","Crown",120],
			["cowboyhat","Cowboyhat",120],
			["A3L_mexicanhat","Mexican Hat",120],
			["santahat","Santa hat",120],
			["A3L_Sombrero","Sombrero",120],
			["turban","Turban",120],
			["A3L_russianhat","Russianhat",120],
			["H_Cap_tan",nil,120],
			["H_Cap_blk",nil,120],
			["H_Cap_blk_CMMG",nil,120],
			["H_Cap_brn_SPECOPS",nil,120],
			["H_Cap_tan_specops_US",nil,120],
			["H_Cap_khaki_specops_UK",nil,120],
			["H_Cap_grn",nil,120],
			["H_Cap_grn_BI",nil,120],
			["H_Cap_blk_Raven",nil,120],
			["H_Cap_blk_ION",nil,120],
			["H_PilotHelmetFighter_B","Hazmat Head",5000]

		];
	};
	
	//Glasses
	case 2:
	{
		[
			//TYRK beards
			["SFG_Tac_smallBeardB",nil,25],
			["SFG_Tac_smallBeardD",nil,25],
			["SFG_Tac_smallBeardG",nil,25],
			["SFG_Tac_smallBeardO",nil,25],
			["SFG_Tac_BeardB",nil,25],
			["SFG_Tac_BeardD",nil,25],
			["SFG_Tac_BeardG",nil,25],
			["SFG_Tac_BeardO",nil,25],
			["SFG_Tac_chinlessbB",nil,25],
			["SFG_Tac_chinlessbD",nil,25],
			["SFG_Tac_chinlessbG",nil,25],
			["SFG_Tac_chinlessbO",nil,25],
			["SFG_Tac_moustacheB",nil,25],
			["SFG_Tac_moustacheD",nil,25],
			["SFG_Tac_moustacheG",nil,25],
			["SFG_Tac_moustacheO",nil,25],
			["SFG_Tac_ChopsB",nil,25],
			["SFG_Tac_ChopsD",nil,25],
			["SFG_Tac_ChopsG",nil,25],
			["SFG_Tac_ChopsO",nil,25],
			//beards end
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares","Squares",10],
			["G_Aviator","Aviator",100],
			["G_Lady_Mirror","Lady Mirror",150],
			["G_Lady_Dark","Lady Dark",150],
			["G_Lady_Blue","Lady Blue",150],
			["G_Lowprofile","LowProfile",30],
			["G_Combat","Combat",55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		["cl3_gangcut_blank","Gang",2500],
		["cl3_gangcut_s7","Gang S7",3500],
		["cl3_gangcut_ismc","Gang IS",3500],
		["V_Press_F",nil,2500],
		["A3L_SpiderVest",nil,2500],
		["A3L_SpookyVest",nil,2500],
		["V_RebreatherIA","Hazmat Breather",2500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cl3_civ_tacticalbelt","Civ Tactical Belt",2500],
			["koilbp_2","Adidas",4500],
			["kaelmario","Mister Mario",3500],
			["koilsponge_1","SpongeBob Pack",5000],
			["koilturtles_1","Turtle Power",3000],
			["koilcat","Cool Cat",2500],
			["koilgraf_1","Graffiti 1",4500],
			["koilbp_3","Graffiti 2",3500],
			["B_AssaultPack_cbr","Assault Pack",2500],
			["B_Kitbag_mcamo","Kitbag Camo",4500],
			["B_TacticalPack_oli","Tact Pack",3500],
			["B_FieldPack_ocamo","Field Pack",3000],
			["B_Bergen_sgg","Bergen",4500],
			["B_Kitbag_cbr","Kitbag CBR",4500],
			["B_Carryall_oli","Carryall OLI",5000],
			["B_Carryall_khk","Carryall KNK",5000]
		];
	};
};
