
private ["_action","_nearest_vehicles","_var"];
if!(isnil "EVH_ID_Vehicles") exitWith {};


if((typeof cursorObject iskindof "Landvehicle" || typeof cursorObject iskindof "Ship" || typeof cursorObject iskindof "Air" ) && player distance cursorObject < 7) exitWith {
	0 spawn {
		_action = [
			format["Möchtest du wirklich dieses Vehikel(%1) in die Datenbank inserten?",typeof cursorObject],
			"BESTÄTIGUNG",
			"JA",
			"NE"
		] call BIS_fnc_guiMessage;

		if(_action) then {
			[cursorObject,player] remoteexec["BaMilSim_fnc_insert_vehicle",2];
		};
	};
};





EVH_ID_Vehicles = addMissionEventHandler ["Draw3D", {




	_nearest_vehicles = nearestObjects[player,["Landvehicle","Ship","Air"],100];

	{
		//drawIcon3D [MISSION_ROOT  + "core\textures\icons\items\trap.paa", [1,1,1,1], [(_x select 0),(_x select 1), 1], 0.8, 0.8, 0, format["%1m", round (player distance _x)], 1, 0.025, "EtelkaMonospacePro"];
		_var = _x getvariable["DBID",-1];
		if(_var isEqualTo -1) then {
			drawIcon3D ["", [0.875,0.004,0.004,1], [(getposatl _x) select 0,(getposatl _x) select 1, ((getposatl _x) select 2) +4], 0.8, 0.8, 0, format["NOT PERSISTENT %1m", round (player distance _x)], 1, 0.025, "EtelkaMonospacePro"];
		} else {
			drawIcon3D ["", [0.016,0.706,0.192,1], [(getposatl _x) select 0,(getposatl _x) select 1, ((getposatl _x) select 2)+4], 0.8, 0.8, 0, format["PERSISTENT(DB-ID: %2) %1m", round (player distance _x),_var], 1, 0.025, "EtelkaMonospacePro"];
		};
	} foreach _nearest_vehicles;
}];












