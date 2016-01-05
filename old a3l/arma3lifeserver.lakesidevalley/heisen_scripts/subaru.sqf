/*
	Author: Heisen
	Description: Car Drive Test function.
	Vehicle: 'Subaru WRX STI'
	
	
	Simple version of script, edit later....
*/

private["_testdrive","_player","_car"];

_testdrive = true;
_player = player;
_car = vehicle player;

_player allowDamage false;

if (_testdrive) then {
	hint "Test drive starting in 5 Seconds.";
	sleep 5;
	_player action ["Eject",vehicle _player];
	_player setPos (getMarkerPos "drive_test_start");
	sleep 3;
	_veh = "ivory_wrx" createVehicle position _player;
	hint "Please enter your vehicle.";
	sleep 2;
	hint "Starting Test Drive now.";
	sleep 2;
	hint "";
	
}; 
/*
sleep 60; // test time , keep 60seconds
sleep 10; // test time , keep 60seconds
hint "50 Seconds Remain";
sleep 10;
hint "40 Seconds Remain";
sleep 10;
hint "30 Seconds Remain";
sleep 10;
hint "20 Seconds Remain";
sleep 10;
hint "10 Seconds Remain";
sleep 10;
hint "Time is up.";
*/

//_car addAction ["Force End","scripts/forceend.sqf"];

sleep 1;
hint "60";
sleep 1;
hint "59";
sleep 1;
hint "58";
sleep 1;
hint "57";
sleep 1;
hint "56";
sleep 1;
hint "55";
sleep 1;
hint "54";
sleep 1;
hint "53";
sleep 1;
hint "52";
sleep 1;
hint "51";
sleep 1;
hint "50";
sleep 1;
hint "49";
sleep 1;
hint "48";
sleep 1;
hint "47";
sleep 1;
hint "46";
sleep 1;
hint "45";
sleep 1;
hint "44";
sleep 1;
hint "43";
sleep 1;
hint "42";
sleep 1;
hint "41";
sleep 1;
hint "40";
sleep 1;
hint "39";
sleep 1;
hint "38";
sleep 1;
hint "37";
sleep 1;
hint "36";
sleep 1;
hint "35";
sleep 1;
hint "34";
sleep 1;
hint "33";
sleep 1;
hint "32";
sleep 1;
hint "31";
sleep 1;
hint "30";
sleep 1;
hint "29";
sleep 1;
hint "28";
sleep 1;
hint "27";
sleep 1;
hint "26";
sleep 1;
hint "25";
sleep 1;
hint "24";
sleep 1;
hint "23";
sleep 1;
hint "22";
sleep 1;
hint "21";
sleep 1;
hint "20";
sleep 1;
hint "19";
sleep 1;
hint "18";
sleep 1;
hint "17";
sleep 1;
hint "16";
sleep 1;
hint "15";
sleep 1;
hint "14";
sleep 1;
hint "13";
sleep 1;
hint "12";
sleep 1;
hint "11";
sleep 1;
hint "10";
sleep 1;
hint "9";
sleep 1;
hint "8";
sleep 1;
hint "7";
sleep 1;
hint "6";
sleep 1;
hint "5";
sleep 1;
hint "4";
sleep 1;
hint "3";
sleep 1;
hint "2";
sleep 1;
hint "1";
sleep 1;
hint "0";
sleep 1;
hint "Time is up.";

vehicle _player setfuel 0;
cutText ["","BLACK OUT"];
hint "Destroying vehicle.";
deleteVehicle (vehicle _player);
//vehicle _player setDamage 1;
//hint "";
//player action ["Eject",vehicle player];

_testdrive = false;

hint "Teleporting in 3 Seconds.";

sleep 3;

_player setPos (getMarkerPos "drive_test_finish");
hint "";
cutText ["","PLAIN"];
//vehicle _player enableSimulation true;
//_player enableSimulation true;
sleep 5;
_player allowDamage true;


// delete vehicle
// set pos to the car dealer