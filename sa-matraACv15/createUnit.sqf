if (!isServer) exitWith {};

private ["_assignCompileKey", "_assignChecksum", "_assignPacketKey", "_rscParams", "_init"];

_assignCompileKey = param [0, "", [""]];
_assignChecksum = param [1, "", [""]];
_assignPacketKey = param [2, "", [""]];
_rscParams = param [3, "", [""]];
_payload = str (param [4, 0, [{}]]);

_init = "[this, ['" + _assignCompileKey + "', '" + _assignChecksum + "', '" + _assignPacketKey + "', " + _rscParams + ", " + _payload + "]] call compile preprocessFileLineNumbers 'server\antihack\manageUnit.sqf'";

"Logic" createUnit [[0,0,0], createGroup sideLogic, _init];
