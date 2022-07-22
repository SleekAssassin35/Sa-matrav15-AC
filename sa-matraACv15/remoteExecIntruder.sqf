params [["_type","",[""]], ["_value",""]];

if (_type == "" || remoteExecutedOwner == clientOwner) exitWith {};

private _intruder = (allPlayers select {owner _x isEqualTo remoteExecutedOwner}) param [0, objNull];
if (!isPlayer _intruder) exitWith {};

[_intruder, _type, _value, _flagChecksum] call A3W_fnc_flagHandler;
[getPlayerUID _intruder, _flagChecksum] remoteExec ["A3W_fnc_clientFlagHandler", _intruder];
