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
					http://www.defiancelife.com/
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Official Rules", 
				"
					http://www.defiancelife.com/
				"
		]
	];
	
