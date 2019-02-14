// ================================================================================
// \core\modules\siren\fn_sirenLightsCfg.sqf
// ================================================================================

// --------------------------------------------------------------------------------
// Parameter
// --------------------------------------------------------------------------------
private ["_vehicleclass","_ret","_lightColorWest","_lightColorEast","_lightColorInd","_lightColorCiv"];
// --------------------------------------------------------------------------------
_vehicleclass = param [0,"",[""]];
_ret = [];
// --------------------------------------------------------------------------------
if (_vehicleclass == "") exitWith {hint "Kein Fahrzeug!"};
if (vehicle player == player) exitWith {};
// --------------------------------------------------------------------------------

// --------------------------------------------------------------------------------
// Police
// --------------------------------------------------------------------------------
_lightColorWest = [[20, 0.1, 0.1],[0.1, 0.1, 20]]; // RED, BLUE
// --------------------------------------------------------------------------------

// --------------------------------------------------------------------------------
// Security
// --------------------------------------------------------------------------------
_lightColorEast = [[20, 0.1, 0.1],[0.1, 0.1, 20]]; // RED, YELLOW
// --------------------------------------------------------------------------------

// --------------------------------------------------------------------------------
// Medic
// --------------------------------------------------------------------------------
_lightColorInd = [[20, 0.1, 0.1],[0.1, 0.1, 20]]; // BLUE, BLUE
// --------------------------------------------------------------------------------

// --------------------------------------------------------------------------------
// Civilian
// --------------------------------------------------------------------------------
_lightColorCiv = [[20, 0.1, 0.1],[0.1, 0.1, 20]]; // YELLOW, YELLOW
// --------------------------------------------------------------------------------

// --------------------------------------------------------------------------------
// Vehicle Class
// --------------------------------------------------------------------------------
switch (_vehicleclass) do
{
// --------------------------------------------------------------------------------
	// Quadbike
	case "B_Quadbike_01_F": {
		_ret = ["B_Quadbike_01_F",[WEST,independent,east],[[-0.3, 0.9, -0.65], [0.3, 0.9, -0.65]]];
	};
// --------------------------------------------------------------------------------
	// Offroad
	case "C_Offroad_01_F": {
		_ret = ["C_Offroad_01_F",[WEST,independent,east],[[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]];
	};
// --------------------------------------------------------------------------------
	// Offroad Repair
	case "I_G_Offroad_01_F": {
		_ret = ["I_G_Offroad_01_F",[CIVILIAN],[[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]];
	};
// --------------------------------------------------------------------------------
// Zamak COP
	case "O_Truck_02_Ammo_F": {
		_ret = ["O_Truck_02_Ammo_F",[WEST],[[0.7,3,0.5], [-0.7,3,0.5]]];
	};
// --------------------------------------------------------------------------------
	// Hatchback normal
	case "C_Hatchback_01_F": {
		_ret = ["C_Hatchback_01_sport_F",[WEST,independent,east],[[-0.8, 1.6, -0.48], [0.76, 1.6, -0.48]]];
	};
// --------------------------------------------------------------------------------
	// Hatchback sport
	case "C_Hatchback_01_sport_F": {
		_ret = ["C_Hatchback_01_sport_F",[WEST,independent,east],[[-0.8, 1.6, -0.48], [0.76, 1.6, -0.48]]];
	};
// --------------------------------------------------------------------------------
	// SUV
	case "C_SUV_01_F": {
		_ret = ["C_SUV_01_F",[WEST,independent,east],[[-0.4, 2.3, -0.5], [0.4, 2.3, -0.5]]];
	};
// --------------------------------------------------------------------------------
	// Truck Boxer
	case "C_Van_01_box_F": {
		_ret = ["C_Van_01_box_F",[WEST,independent,east],[[0.61, 0.0, 1.3], [-0.65, 0.0, 1.3]]];
	};
// --------------------------------------------------------------------------------
	// HEMTT Abschlepper
	case "B_Truck_01_mover_F": {
		_ret = ["B_Truck_01_mover_F",[independent,east],[[0.85, 4.3, 0.75], [-0.8, 4.3, 0.75]]];
	};
// --------------------------------------------------------------------------------
	// HEMTT Sanitätsfahrzeug
	case "B_Truck_01_medical_F": {
		_ret = ["B_Truck_01_medical_F",[independent,east],[[0.6, 5.1, -0.5], [-0.9, 5.1, -0.5]]];
	};
// --------------------------------------------------------------------------------
	// Tempest Sanitätsfahrzeug
	case "O_Truck_03_medical_F": {
		_ret = ["O_Truck_03_medical_F",[independent,east],[[1.05, 3.5, 0.75], [-0.9, 3.5, 0.75]]];
	};
// --------------------------------------------------------------------------------
	// Zamak Sanitätsfahrzeug
	case "I_Truck_02_medical_F": {
		_ret = ["I_Truck_02_medical_F",[independent,east],[[0.82, 3.3, 0.45], [-0.87, 3.3, 0.45]]];
	};
// --------------------------------------------------------------------------------
	// Zamak Organtransporter
	case "I_Truck_02_box_F": {
		_ret = ["I_Truck_02_box_F",[independent,east],[[0.82, 3.45, 0.45], [-0.87, 3.45, 0.45]]];
	};

	// --------------------------------------------------------------------------------
	// Transport
	case "C_Van_02_transport_F": {
		_ret = ["C_Van_02_transport_F",[west],[[-1,4.2,-0.3], [1,4.2,-0.3]]];
	};


// --------------------------------------------------------------------------------
	// Vehicle
	case "C_Van_02_vehicle_F": {
		_ret = ["C_Van_02_vehicle_F",[west],[[-1,4.2,-0.3], [1,4.2,-0.3]]];
	};

	// --------------------------------------------------------------------------------
	// Service
	case "C_Van_02_service_F": {
		_ret = ["C_Van_02_service_F",[west],[[-1,4.2,-0.3], [1,4.2,-0.3]]];
	};

	// --------------------------------------------------------------------------------
	// Medevac
	case "C_Van_02_medevac_F": {
		_ret = ["C_Van_02_medevac_F",[independent],[[-1,4.2,-0.3], [1,4.2,-0.3]]];
	};

	// --------------------------------------------------------------------------------
	// Gendarmerie
	case "B_GEN_Van_02_transport_F": {
		_ret = ["B_GEN_Van_02_transport_F",[west],[[-1,4.2,-0.3], [1,4.2,-0.3]]];
	};

// --------------------------------------------------------------------------------
	// Hunter
	case "B_MRAP_01_F": {
		_ret = ["B_MRAP_01_F",[WEST,independent,east],[[-1, -2.8, 0.55], [1, -2.8, 0.55]]];
	};
// --------------------------------------------------------------------------------
	// Hunter HMG
	case "B_MRAP_01_hmg_F": {
		_ret = ["B_MRAP_01_hmg_F",[WEST,east],[[-1, -2.8, 0.55], [1, -2.8, 0.55]]];
	};
// --------------------------------------------------------------------------------
	// Strider
	case "I_MRAP_03_F": {
		_ret = ["I_MRAP_03_F",[EAST,east],[[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]];
	};
// --------------------------------------------------------------------------------
	// Strider HMG
	case "I_MRAP_03_hmg_F": {
		_ret = ["I_MRAP_03_hmg_F",[WEST,EAST,east],[[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]];
	};
// --------------------------------------------------------------------------------
	// Marshall
	case "B_APC_Wheeled_01_cannon_F": {
		_ret = ["B_APC_Wheeled_01_cannon_F",[WEST,east],[[-1, -2.8, 0.55], [1, -2.8, 0.55]]];
	};
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
	// M900
	case "C_Heli_Light_01_civil_F": {
		_ret = ["C_Heli_Light_01_civil_F",[WEST,independent,east],[[-0.52, 1.29, 0.0], [0.52, 1.29, 0.0]]];
	};
// --------------------------------------------------------------------------------
	// MH-9 Hummingbird
	case "B_Heli_Light_01_F": {
		_ret = ["B_Heli_Light_01_F",[WEST,independent,east],[[-0.52, 0.45, -0.75], [0.52, 0.45, -0.75]]];
	};
// --------------------------------------------------------------------------------
	// PO-30 Orca
	case "O_Heli_Light_02_unarmed_F": {
		_ret = ["O_Heli_Light_02_unarmed_F",[WEST,independent,east],[[-0.65, 1.25, -1.9], [0.65, 1.25, -1.9]]];
	};
// --------------------------------------------------------------------------------
	// CH-49 Mohawk
	case "I_Heli_Transport_02_F": {
		_ret = ["I_Heli_Transport_02_F",[WEST,independent,east],[[-1.75, 0.2, -2.9], [1.75, 0.2, -2.9]]];
	};
// --------------------------------------------------------------------------------
	// Mi-290 Taru Transport
	case "O_Heli_Transport_04_covered_F": {
		_ret = ["O_Heli_Transport_04_covered_F",[WEST,independent,east],[[-3.47, -0.12, -1.07], [3.47, -0.12, -1.07]]];
	};
// --------------------------------------------------------------------------------
	// Ghosthawk
	case "B_Heli_Transport_01_F": {
		_ret = ["B_Heli_Transport_01_F",[WEST,east],[[-0.5, 0.0, 0.96], [0.5, 0.0, 0.96]]];
	};
// --------------------------------------------------------------------------------
	// Hellcat
	case "I_Heli_light_03_unarmed_F": {
		_ret = ["I_Heli_light_03_unarmed_F",[WEST,east],[[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]];
	};

	// MB4WD Offroad // Apex
	case "I_C_Offroad_02_unarmed_F": {
		_ret = ["I_C_Offroad_02_unarmed_F",[WEST,independent,east],[[-0.4, 2.3, -0.5], [0.4, 2.3, -0.5]]]; // Lightpos anpassen
	};
// --------------------------------------------------------------------------------
// Prowler Unarmed // Apex
	case "B_LSV_01_unarmed_F": {
		_ret = ["B_LSV_01_unarmed_F",[WEST,east],[[-0.5, 2.3, -1], [0.5, 2.3, -1]]]; // Lightpos anpassen
	};
	case "B_T_LSV_01_armed_F": {
		_ret = ["B_T_LSV_01_armed_F",[WEST,east],[[-0.5, 2.3, -1], [0.5, 2.3, -1]]]; // Lightpos anpassen
	};
// --------------------------------------------------------------------------------
// Quilin Unarmed/Armed // Apex
	case "O_T_LSV_02_unarmed_F": {
		_ret = ["O_T_LSV_02_unarmed_F",[WEST,east],[[-0.5, 2.3, -1], [0.5, 2.3, -1]]];
	};
	case "O_T_LSV_02_armed_viper_F": {
		_ret = ["O_T_LSV_02_armed_viper_F",[WEST,east],[[-0.5, 2.3, -1], [0.5, 2.3, -1]]];
	};
// --------------------------------------------------------------------------------
	// Flugzeug Apex
	case "C_Plane_Civil_01_racing_F": {
		_ret = ["C_Plane_Civil_01_racing_F",[WEST,east],[[-5,0.4,-.6], [5,0.4,-.6]]];
	};
//---------------------------------------------------------------------------------
	//Strider
	case "I_MRAP_03_F": {
		_ret = ["I_MRAP_03_F",[WEST,east],[[1.0,2.3,-0.3], [-1.0,2.3,-0.3]]];
	};
// --------------------------------------------------------------------------------
	//Taru
	case "O_Heli_Transport_04_F": {
		_ret = ["O_Heli_Transport_04_F",[WEST,independent,east],[[-3.47, -0.12, -1.07], [3.47, -0.12, -1.07]]];
	};
// --------------------------------------------------------------------------------
	//Taru Bank
	case "O_Heli_Transport_04_bench_F": {
		_ret = ["O_Heli_Transport_04_bench_F",[WEST,independent,east],[[-3.47, -0.12, -1.07], [3.47, -0.12, -1.07]]];
	};
// --------------------------------------------------------------------------------
};
// --------------------------------------------------------------------------------

// --------------------------------------------------------------------------------
// Add LightColor
// --------------------------------------------------------------------------------
switch (PlayerSide) do
{
	case WEST:
	{
		_ret pushBack _lightColorWest;
	};
	case EAST:
	{
		_ret pushBack _lightColorEast;
	};
	case independent:
	{
		_ret pushBack _lightColorInd;
	};
	case civilian:
	{
		_ret pushBack _lightColorCiv;
	};
};
// --------------------------------------------------------------------------------
_ret;
