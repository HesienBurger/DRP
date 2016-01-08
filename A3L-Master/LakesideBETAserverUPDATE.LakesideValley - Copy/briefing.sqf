waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];


/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					http://deluxeliferp.enjin.com/forum/m/35820433/viewforum/6653110
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Official Rules", 
				"
					http://deluxeliferp.enjin.com/rules
				"
		]
	];
	
