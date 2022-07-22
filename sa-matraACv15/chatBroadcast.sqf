private ["_playerUID", "_sentChecksum", "_excludeGroup"];
_playerUID = param [1, "", [""]];
_sentChecksum = param [2, "", [""]];
_excludeGroup = param [3, false, [false]];

if (_sentChecksum == _flagChecksum && {_playerUID != getPlayerUID player} && {!_excludeGroup || {{getPlayerUID _x == _playerUID} count units player == 0}}) then
{
	player commandChat format ["%1", _this select 0];
};
