_container = _this select 1;
BaMilSim_gear = [player] call BaMilSim_fnc_gear_to_var;


[0] call BaMilSim_fnc_step_update;

if(_container iskindof "Landvehicle" || _container iskindof "AIR" || _container iskindof "SHIP") then {
	_var = _container getvariable "Update_this";
	if(isnil "_var") then {
		_container setvariable["Update_this",true,true];
	};
};