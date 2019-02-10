


// Starting player monitoring for syncing player information to server/database
[] spawn BaMilSim_fnc_player_monitor;

0 spawn BaMilSim_fnc_init_ambient;





if(getNumber(missionConfigFile >> "BaMilSim_settings" >> "settings" >> "fatigue_enabled") isEqualTo 0) then {player enableFatigue false;} else {player enableFatigue true;};





player addEventHandler["InventoryClosed", {_this call BaMilSim_fnc_inventory_closed}];
player addEventHandler["GetOutMan",{_this call BaMilSim_fnc_GetOutMan}];




0 spawn{(findDisplay 46) displayAddEventHandler ["KeyDown",BaMilSim_fnc_keyhandler];};
0 spawn{(findDisplay 46) displayAddEventHandler ["KeyUp",BaMilSim_fnc_keyUp];};

0 spawn {
	BaMilSim_functions_started = true;
	sleep 10;
	BaMilSim_functions_started = nil;
};
