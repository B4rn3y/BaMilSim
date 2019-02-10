private ["_array","_primWeapon","_secWeapon","_handgun","_foreachindex","_X"];
_array = param[0,[],[[]]];
if(_array isEqualTo []) exitWith {};
0 call BaMilSim_fnc_clearPlayerInventory;
_primWeapon = "";
_secWeapon = "";
_handgun = "";


{
	switch (_foreachindex) do
	{
		case 0:
		{
			if!(_x isEqualTo "") then {
				player forceaddUniform _x;
			};
		};

		case 1:
		{
			if!(_x isEqualTo "") then {
				player addBackpack _x;
			};
		};

		case 2:
		{
			if!(_x isEqualTo "") then {
				player addWeapon _x;
				_primWeapon = _X;
			};
		};

		case 3:
		{
			{
				if!(_x isEqualTo "") then {
					player addPrimaryWeaponItem _x;
				};
			} foreach _x;
		};

		case 4:
		{
			{
				if!(_x isEqualTo "") then {
					player addPrimaryWeaponItem _x;
				};
			} foreach _x;
		};

		case 5:
		{
			if!(_x isEqualTo "") then {
				player addWeapon _x;
				_secWeapon = _X;
			};
		};

		case 6:
		{
			{
				if!(_x isEqualTo "") then {
					player addsecondaryWeaponItem _x;
				};
			} foreach _x;
		};

		case 7:
		{
			{
				if!(_x isEqualTo "") then {
					player addsecondaryWeaponItem _x;

				};
			} foreach _x;
		};

		case 8:
		{
			if!(_x isEqualTo "") then {
				player addWeapon _x;
				_handgun = _X;
			};
		};

		case 9:
		{
			{
				if!(_x isEqualTo "") then {
					player addhandgunItem _x;
				};
			} foreach _x;
		};

		case 10:
		{
			{
				if!(_x isEqualTo "") then {
					player addhandgunItem _x;

				};
			} foreach _x;
		};

		case 11:
		{
			{
				if!(_x isEqualTo "") then {
					player addItemToUniform _x;
				};
			} foreach _x;
		};

		case 12:
		{
			if!(_x isEqualTo "") then {
				player addvest _x;
			};
		};

		case 13:
		{
			{
				if!(_x isEqualTo "") then {
					player addItemTovest _x;
				};
			} foreach _x;
		};

		case 14:
		{
			if!(_x isEqualTo "") then {
				player addBackpack _x;
			};
		};

		case 15:
		{
			if!(_x isEqualTo "") then {
				player addHeadgear _x;
			};
		};

		case 16:
		{
			if!(_x isEqualTo "") then {
				player addgoggles _x;
			};
		};

		case 17:
		{
			{
				if!(_x isEqualTo "") then {
					player addItem _x;
					player assignItem _x;
				};
			} foreach _x;
		};

		case 18:
		{
			{
				if!(_x isEqualTo "") then {
					player addItemToBackpack _x;
				};
			} foreach _x;
		};


	};
} foreach _array;






0 spawn {
	BaMilSim_gear_loaded = true;
	sleep 3;
	BaMilSim_gear_loaded = nil;
};








