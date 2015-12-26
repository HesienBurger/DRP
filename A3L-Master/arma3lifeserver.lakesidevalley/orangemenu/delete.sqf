hint "Click on the map to Teleport!";
liafu = true;
closeDialog 0;
openMap true;
onMapSingleClick "onMapSingleClick """";liafu = true; (vehicle player) setpos [_pos select 0, _pos select 1, 0]; openMap false;";