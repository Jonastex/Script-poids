/**
 * @author John 
 * @email Jonastex#2733
 * @create date 2020-11-28
 * @modify date 2020-11-28
 * @desc [description]
*/
private _choix = param [0];
switch (_choix)
	do {
		case 0 : {
			private _poids = (findDisplay 2811) displayCtrl 032811;
			_poids ctrlSetText format ["Votre poids : %1", (round (25 /(poids - 0.74 )))];
		};

		case 1 : {
			player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
			closeDialog 0;
			sleep 15.733;
			if (poids >= 1.15) exitwith {hint "vous êtes au maximum de votre santé";};
			poids = poids + 0.01;
			
			player setAnimSpeedCoef poids;
		};

		case 2 : {
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBenda";
			closeDialog 0;
			sleep 5.813;
			if (poids >= 1.15) exitwith {hint "vous êtes au maximum de votre santé";};
			poids = poids + 0.01;
			player setAnimSpeedCoef poids;
		};

		case 3 : {
			sleep 300;
			[1, getPlayerUID player, poids] remoteExecCall ["DB_fnc_poids", 2];
			[3] spawn john_fnc_gros;
		};

		case 4 : {
			poids = (param [1]) select 0;
			player setAnimSpeedCoef poids;
		};

		case 5 : {
			closedialog 0;
			sleep 0.01;
			createdialog "menu_action";
		};
	};
