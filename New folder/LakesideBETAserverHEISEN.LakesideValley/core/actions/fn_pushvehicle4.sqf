/*
	File: push the vehicle brahs

*/

_vehicle = cursortarget; 
_vehicle allowdamage false;
_vel = velocity _vehicle;  
_dir = direction player; 
_speed = 9;
_vehicle setVelocity [   (_vel select 0) + (sin _dir * _speed),    (_vel select 1) + (cos _dir * _speed),    (_vel select 2)  ];
uiSleep 2;
_vehicle allowdamage true;