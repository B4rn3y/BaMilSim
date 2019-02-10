class DefaultEventhandlers;
class CfgPatches
{
	class data_server
	{
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {};
		fileName = "data_server.pbo";
		author[]= {"Barney"};
	};
};

class CfgFunctions
{
	class MAIN_Server
	{
		tag = "BaMilSim";

		class functions
		{
			file = "\data_server\main";
			class initServer {postinit = 1;};
			class db_sync {};
			class insert_player {};
			class logToDB {};
			class player_data_request {};
			class vars {};
			class mresArray {};
			class mresString {};
			class mToArray {};
			class numbersafe {};
			class bool {};
			class step_update_DB {};
			class syncPlayerToDB {};
			class init_map {};
			class time_module {ext = ".fsm";};
			// persistent Vehicles start
			class clear_vehicle {};
			class getVehicleCargo {};
			class getVehicleDamage {};
			class getVehiclePosandFuel {};
			class init_vehicles {};
			class insert_vehicle {};
			class loadVehicleCargo {};
			class setVehicleDamage {};
			class persistent_vehicle_monitoring {ext = ".fsm";};
			class saveVehicleComplete {};
			class vehicleDelete {};
			// persistent Vehicles end
		};
	};
};