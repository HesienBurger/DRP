/*
Search Words: 
pizza
*/
if(KWEFookxWQOk < 9869) exitWith { titleText["PIZZA GUY: Not enough money, I need $7500 for this riperino pizza.","PLAIN"]; };

_price = 9869;

KWEFookxWQOk = KWEFookxWQOk - _price;

life_hunger = 100;
life_pizza = false;
sleep 1.5;
life_pizza = true;

_numy = 2550;
titleText["Mmm, Riperino Pizza... you now heal over time for 45 minutes.","PLAIN"];

while {life_pizza && _numy > 0} do {
	sleep 1;
	_numy = _numy - 1;	
	if(_numy == 120) then {
		titleText["Riperino Pizza has 2 minutes left!","PLAIN"];
	};
	if(_numy == 60) then {
		titleText["Riperino Pizza has 1 minute left!","PLAIN"];
	};
};

hint "Riperino Pizza has run out... you now take normal damage.";

life_pizza = false;