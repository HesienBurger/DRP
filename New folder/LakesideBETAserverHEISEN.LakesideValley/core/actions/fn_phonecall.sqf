/*
phone call
phonecall
*/
if(life_atmcash < 500) exitWith { hint "You dont have $5000 in your bank for this.."; };

life_atmcash = life_atmcash - 5000;
[] call fnc_opentablet;