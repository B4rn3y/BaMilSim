/*

private ["_move_array","_agent1","_agent2","_agent3","_agent4"];


_traders = [];
_move_array = [[7325.29,9264.69,0.000854492],[7284.57,9270.38,0.00161743],[7320.52,9252.86,0.00189209],[7299.58,9243.37,0.00164795],[7287.01,9259.76,0.00119019]];
_agent1 = createAgent ["CUP_C_C_Woodlander_01", [0,0,0], [], 0, "FORM"];
_agent1 setposatl [7284.57,9270.38,0.00161743];
_agent1 setdir 162.712;
_traders pushback _agent1;



{_agent1 disableAI _x} foreach ["FSM","AIMINGERROR","SUPPRESSION","AUTOTARGET","TARGET","COVER","SUPPRESSION","AUTOCOMBAT","CHECKVISIBLE"];

_agent1 setCombatMode "BLUE";
_agent1 setBehaviour "CARELESS";
_agent1 allowdamage false;
_agent1 removeAllEventHandlers "handleDamage";
[_agent1,_move_array] spawn valor_fnc_agentMonitoring;


_agent2 = createAgent ["babe_raptor_2_F", [0,0,0], [], 0, "FORM"];
_agent2 setposatl [7286.92,9274,0.0017395];
_agent2 setdir 177.754;



{_agent2 disableAI _x} foreach ["FSM","AIMINGERROR","SUPPRESSION","AUTOTARGET","TARGET","COVER","SUPPRESSION","AUTOCOMBAT","CHECKVISIBLE"];

_agent2 setCombatMode "BLUE";
_agent2 setBehaviour "CARELESS";
_agent2 allowdamage false;
_agent2 removeAllEventHandlers "handleDamage";
[_agent2,_agent1,[-3.5,-2,0]] spawn valor_fnc_animalMonitoring;






_move_array = [[7290.27,9270.31,0.00167847],[7286.35,9258.88,0.0017395],[7293.62,9247.7,0.00158691],[7300.3,9261.22,0.00112915],[7277.16,9279.43,0.00140381]];
_agent3 = createAgent ["CUP_C_C_Villager_03", [0,0,0], [], 0, "FORM"];
_agent3 setposatl [7297.37,9280.71,0.00170898];
_agent3 setdir 207.712;
_traders pushback _agent3;


{_agent3 disableAI _x} foreach ["FSM","AIMINGERROR","SUPPRESSION","AUTOTARGET","TARGET","COVER","SUPPRESSION","AUTOCOMBAT","CHECKVISIBLE"];

_agent3 setCombatMode "BLUE";
_agent3 setBehaviour "CARELESS";
_agent3 allowdamage false;
_agent3 removeAllEventHandlers "handleDamage";
[_agent3,_move_array] spawn valor_fnc_agentMonitoring;









_move_array = [[7273.24,9259.37,0.0012207],[7284.73,9255.47,0.00140381],[7295.23,9251.67,0.00149536],[7298.22,9260.46,0.0010376],[7319.44,9248.65,0.00180054]];
_agent4 = createAgent ["CUP_C_C_Worker_05", [0,0,0], [], 0, "FORM"];
_agent4 setposatl [7272.51,9253.67,0.00131226];
_agent4 setdir 46.712;
_traders pushback _agent4;


{_agent4 disableAI _x} foreach ["FSM","AIMINGERROR","SUPPRESSION","AUTOTARGET","TARGET","COVER","SUPPRESSION","AUTOCOMBAT","CHECKVISIBLE"];

_agent4 setCombatMode "BLUE";
_agent4 setBehaviour "CARELESS";
_agent4 allowdamage false;
_agent4 removeAllEventHandlers "handleDamage";
[_agent4,_move_array] spawn valor_fnc_agentMonitoring;




{
    _x setvariable["CAn_speak_to",true,true];

} foreach _traders;


*/









