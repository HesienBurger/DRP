
class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};

class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
	};
	
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
		class adminSpectate {};
		class adminTeleport {};
		class adminTpHere {};
		class adminDebugCon {};
		class adminGodMode {};
		class adminFreeze {};
		class adminMarkers {};
	};
	
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class stitchSelf {};
		class bandageSelf {};
		class windShield {};
		class splintSelf {};
		class epipenSelf {};
		class stitchPlayer {};
		class bandagePlayer {};
		class splintPlayer {};
		class healperson {};
		class healself {};
		class heatPlayer {};
		class coolPlayer {};
		class antiviralPlayer {};
		class painkillerPlayer {};
		class hydratePlayer {};
		class sheatPlayer {};
		class scoolPlayer {};
		class santiviralPlayer {};
		class spainkillerPlayer {};
		class shydratePlayer {};		
		class epipenPlayer {};
		class revivePlayer {};
		class CPRPlayer {};
		class revived {};
		class medicMarkers {};
		class medicMarkers2 {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicSirenLights {};
		class medicLights {};
		class medicSiren {};
	};
	
	class Actions
	{
		file = "core\actions";
		class bankalarmsound {};
		class windShield {};
		class AntiSpam {};
		class tieingActionb {};
		class tieingAction {};
		class breakout {};
		class createEvidence {};
		class destroyEvidence {};
		class gatherEvidence {};
		class lawyerSignup {};
		class shovelwork {};
		class seatbelt {};
		class shank {};
		class rope {};	
		class takeashit {};
		class middlefinger {};
		class punchSystem {};
		class skyDive {};
		class skyDive2 {};
		class gatherMDMA {};
		class gatherMeth {};
		class gatherCoke {};
		class packupRoadcones {};
		class packupRoadblock {};
		class packupBarGate {};
		class buyLicense {};
		class doubleCharge {};
		class rechargePhone {};
		class standardPhone {};
		class healHospital {};
		class pushVehicle {};
		class pushVehicle2 {};
		class pushVehicle3 {};
		class pushVehicle4 {};
		class repairTruck {};
		class serviceChopper {};
		class rechargestand {};
		class grabshovel {};
		class pizza {};
		class electricchair {};
		class electricchairdo {};
		class catchFish {};
		class sellBag {};
		class playSound2 {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class getDPMission {};
		class postBail {};
		class phonecall {};
		class processAction {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class civpulloutAction {};
		class emspulloutAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupItem2 {};
		class pickupMoney {};
		class ticketAction {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class captureHideout {};
		class gather {};

		class lockvault {}; 
		class openvault {}; 
		class closevault {}; 
		class hackvault {}; 
		
		class robShops {}; //Lakeside General
		class robLM {}; //Lakeside Market 
		class robLG {}; //LosDiablos General
		class robLDM {}; //LosDiablos Market    
		class robMG {}; //Morrison General
		class robMM {}; //Morrison Market 
		class surrender {};
	};
	

	class Paintball
	{
		file = "core\paintball";
		class pb_response {};
		class ryn_message {};
	};


	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class housePrice {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class prostitute {};
		class givekey1 {};
		class givekey2 {};
		class givekey3 {};
		class givekey4 {};
		class givekey5 {};
		class wipekeys {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
	};
	
	class Drugs
	{
		file = "core\drugs";
		class useMarijuana {};
		class useMeth {};
		class useMDMA {};
		class useCoke {};
		class useHeroin {};
		class useCigarette {};
		class useBEC {};
	};

	class Config
	{
		file = "core\config";
		class licensePrice {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehicleListCfg {};
		class licenseType {};
		class eatFood {};
		class varHandle {};
		class varToStr {};
		class impoundPrice {};
		class itemWeight {};
		class taxRate {};
		class virt_shops {};
		class vehShopLicenses {};
		class vehicleAnimate {};
		class weaponShopCfg {};
		class vehicleWeightCfg {};
		class houseConfig {};
		
		//Clothing Store Configs
		class clothing_cop {};
		class clothing_ems {};
		class clothing_bruce {};
		class clothing_reb {};
		class clothing_dive {};
		class clothing_kart {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
		class revokeLicense {};
	};
	
	class Functions
	{
		file = "core\functions";
		class A3L_bankrobbery {};
		class pettycash {};
		class A3L_PlantCharge {};
		class calWeightDiff {};
		class seizeObjects {};
		class untie {};
		class untieb {};
		class electric {};
		class fetchCfgDetails {};
		class hh {};
		class handleInv {};
		class medWatch {};
		class hudSetup {};

		class stage1pain {};
		class stage2pain {};
		class stage3pain {};
		
		class hudUpdate {};
		class koilcombat {};
		class pickupitems {};
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class dropItems2 {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pullOutVeh {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class saveGear {};
		class loadGear {};
		class stripDownPlayer {};
		class enablecollisionwith {};
  		class disablecollisionwith {};
  		class fadeSound {};
  		class destroyComms {};
		class emptyFuel {};
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
		class say3D {};
	};
	
	class Civilian
	{
		file = "core\civilian";
		class removeWeapons {};
		class jailMe {};
		class tieing {};
		class throwcar {};
		class civescort {};
		class civstopescort {};
		class tieingb {};
		class jail {};
		class windShield {};
		class tazed {};
		class sharphit {};
		class blunthit {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class zoneCreator {};
		class demoChargeTimer {};
		class civLoadout {};
		class freezePlayer {}; //Admin Panel
	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
	};
	
	class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class windShield {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class civInteractionMenu {};
		class emsInteractionMenu {};
		class emsInteractionMenu2 {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class copLoadout {};
		class ticketPaid {};
		class testIntox {};	
		class testIntoxClient {};
		class intoxTestReturn {};
		class fastRope {};
		class removeWeaponAction {};
		class removeWeaponActionCiv {};
		class removeWeapons {};
		class teargas {};
		class soundloop {};
	};
	
	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
	};
	
	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class stretcherpls {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class vehicleShopPreview {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
		class slotmachine {};
		class BJbet {};
		class BJhit {};
		class BJstay {};
		class blackjack {};
		class slotSpin {};
	};
	
	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class spikeStrip {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBox {};
		class RoadBlockWood {};
		class RoadBlockConc {};
		class RoadBlockRebel {};
		class RoadCone {};
		class RoadConeStrip {};
		class RoadConeB {};
		class RoadConeStripB {};
		class bankalarmsound {};
	};
	
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
	};
	
		class Cam
	{
	   file ="core";
	   class IntroCam {};
	};
};