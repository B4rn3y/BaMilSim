





0 spawn {


	_monitoring = {
	_vehicles = _this;
	while{isnil "BA_STOP_MONITORING"} do {
		{
			if!(isnull _x) then {
				_boat = _x;
				{
					if(_x distance _boat < 100) then {
						[_x, "Der Spieler ist zu nah an einem Boot der Küstenwache"] remoteexec["BaMilSim_fnc_admin_inform",-2];
					};
				} foreach playableUnits;
			};
		} foreach _this;
		sleep 15;
	};
};








	_boat1 = "O_Boat_Armed_01_hmg_F" createvehicle [0,0,100];
	_pos_B1 =
	[
		[2054.9,7967.92,-2.24447],
		[2055.31,7036.58,-2.18321],
		[926.516,7006.65,-2.29079],
		[897.343,7959.87,-2.15244]
	];
	_boat1 setposasl (_pos_B1 select (count _pos_B1 - 1));
	_group1 = createGroup civilian;
	_driver1 = _group1 createUnit ["B_Helipilot_F",[2574.4,6920.9,0.00179529],[],0,"FORM"];
	sleep 2;

	clearWeaponCargoGlobal _boat1;
	clearMagazineCargoGlobal _boat1;
	clearItemCargoGlobal _boat1;
	_boat1 setVehicleAmmo 0;

	_boat1 engineOn true;


	_driver1 moveinDriver _boat1;
	sleep 1;
	_driver1 assignAsDriver _boat1;


	{
		_wp = _group1 addwaypoint[_x,0];
		if((_foreachindex + 1) isEqualTo count _pos_B1) then {
			_wp setWaypointType "CYCLE";
		} else {
			_wp setWaypointType "MOVE";
		};
		_wp setWaypointBehaviour "CARELESS";


	} foreach _pos_B1;
//////////////////////////////////////////////////////////////////////
	_boat2 = "O_Boat_Armed_01_hmg_F" createvehicle [0,0,110];
	_pos_B2 = [[2006.32,8026.93,-2.19543],[2032.67,8937.63,-1.9458],[2960.39,8973.78,-1.96051]];
	_boat2 setposasl (_pos_B2 select (count _pos_B2 - 1));
	_group2 = createGroup civilian;
	_driver2 = _group2 createUnit ["B_Helipilot_F",[2574.4,6920.9,0.00179529],[],0,"FORM"];
	sleep 2;

	clearWeaponCargoGlobal _boat2;
	clearMagazineCargoGlobal _boat2;
	clearItemCargoGlobal _boat2;
	_boat2 setVehicleAmmo 0;

	_boat2 engineOn true;


	_driver2 moveinDriver _boat2;
	sleep 1;
	_driver2 assignAsDriver _boat2;


	{
		_wp = _group2 addwaypoint[_x,0];
		if((_foreachindex + 1) isEqualTo count _pos_B2) then {
			_wp setWaypointType "CYCLE";
		} else {
			_wp setWaypointType "MOVE";
		};
		_wp setWaypointBehaviour "CARELESS";


	} foreach _pos_B2;

	//////////////////////////////////////////////////////////////////////
	_boat3 = "O_Boat_Armed_01_hmg_F" createvehicle [0,0,120];
	_pos_B3 = [[1898.55,8112.86,-1.94283],[991.942,8082.29,-1.96107],[988.542,8982.27,-1.95329],[1871.53,8967.77,-1.94047]];
	_boat3 setposasl (_pos_B3 select (count _pos_B3 - 1));
	_group3 = createGroup civilian;
	_driver3 = _group3 createUnit ["B_Helipilot_F",[2574.4,6920.9,0.00179529],[],0,"FORM"];
	sleep 2;

	clearWeaponCargoGlobal _boat3;
	clearMagazineCargoGlobal _boat3;
	clearItemCargoGlobal _boat3;
	_boat3 setVehicleAmmo 0;

	_boat3 engineOn true;


	_driver3 moveinDriver _boat3;
	sleep 1;
	_driver3 assignAsDriver _boat3;


	{
		_wp = _group3 addwaypoint[_x,0];
		if((_foreachindex + 1) isEqualTo count _pos_B3) then {
			_wp setWaypointType "CYCLE";
		} else {
			_wp setWaypointType "MOVE";
		};
		_wp setWaypointBehaviour "CARELESS";


	} foreach _pos_B3;

		//////////////////////////////////////////////////////////////////////
	_boat4 = "O_Boat_Armed_01_hmg_F" createvehicle [0,0,120];
	_pos_B4 = [[2021.92,9449.33,-2.09352],[670.584,10640.3,-1.95803],[1417.02,11016.3,-1.9455],[1872.69,10618.1,-1.94849],[1359.59,10438.1,-1.95897],[2470.04,9970.96,-1.94902],[2006.71,9442.54,-1.95488]];
	_boat4 setposasl (_pos_B4 select (count _pos_B4 - 1));
	_group4 = createGroup civilian;
	_driver4 = _group4 createUnit ["B_Helipilot_F",[2574.4,6920.9,0.00179529],[],0,"FORM"];
	sleep 2;

	clearWeaponCargoGlobal _boat4;
	clearMagazineCargoGlobal _boat4;
	clearItemCargoGlobal _boat4;
	_boat4 setVehicleAmmo 0;

	_boat4 engineOn true;


	_driver4 moveinDriver _boat4;
	sleep 1;
	_driver4 assignAsDriver _boat4;


	{
		_wp = _group4 addwaypoint[_x,0];
		if((_foreachindex + 1) isEqualTo count _pos_B4) then {
			_wp setWaypointType "CYCLE";
		} else {
			_wp setWaypointType "MOVE";
		};
		_wp setWaypointBehaviour "CARELESS";


	} foreach _pos_B4;

	[_boat1,_boat2,_boat3,_boat4] spawn _monitoring;

	BS6 attachto[truck1,[-0.8,-2.6,-0.8]];BS6 setdir (getdir truck1 +90);
	sleep 5;
	BS6 attachto[truck1,[-0.8,-2.6,-0.8]];BS6 setdir (getdir truck1 +90);
};





