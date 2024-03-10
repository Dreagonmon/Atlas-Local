@echo off

set "input=%~1"
set browser=true
set "taskBarLocation=Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
set "rootKey=SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband"

if "%input%" == "" (
	rem If Edge exists, pin it
	rem Otherwise, pin only File Explorer

	if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
		set "input=Microsoft Edge"
		set "favoritesResolve=E50200004C0000000114020000000000C000000000000046830080002000000013ECDA0121E0D901EA00DD0121E0D9014D038B7320E0D90186090000000000000100000000000000000000000000000052013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE120000001AA557D820E0D90158B7CE0121E0D901EA00DD0121E0D901140056003100000000002557E88D10005461736B42617200400009000400EFBE2557E88D2557E88D2E000000D4990100000006000000000000000000000000000000A8B26A005400610073006B0042006100720000001600C0003200860900002557698D20004D4943524F537E312E4C4E4B0000560009000400EFBE2557E88D2557E88D2E000000D6990100000004000000000000000000000000000000B37BD2004D006900630072006F0073006F0066007400200045006400670065002E006C006E006B0000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00120000002B00EFBEEA00DD0121E0D9011C001A0000001D00EFBE02004D005300450064006700650000001C0000009C0000001C000000010000001C0000002D000000000000009B0000001100000003000000BEE87AE81000000000433A5C55736572735C557365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C4D6963726F736F667420456467652E6C6E6B000060000000030000A058000000000000006465736B746F702D31646C64346430003AEC768D387A5741A7D5E116AEF015FA5831EF36144CEE11AE90000C29335CED3AEC768D387A5741A7D5E116AEF015FA5831EF36144CEE11AE90000C29335CED45000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D000000680000000048000000E3F2055EF8D5A6499004604854A49D84000000000000000000000000320300004C0000000114020000000000C0000000000000468300800020000000EA00DD0121E0D9015961DF0121E0D901A8B6C6DADDACD501970100000000000001000000000000000000000000000000A0013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE120000001AA557D820E0D90158B7CE0121E0D9015961DF0121E0D901140056003100000000002557E88D11005461736B42617200400009000400EFBE2557E88D2557E88D2E000000D4990100000006000000000000000000000000000000A7085A005400610073006B00420061007200000016000E01320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBE2557E88D2557E88D2E000000D8990100000007000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00120000002B00EFBE5961DF0121E0D9011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C0000009B0000001C000000010000001C0000002D000000000000009A0000001100000003000000BEE87AE81000000000433A5C55736572735C557365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C46696C65204578706C6F7265722E6C6E6B000060000000030000A058000000000000006465736B746F702D31646C64346430003AEC768D387A5741A7D5E116AEF015FA5931EF36144CEE11AE90000C29335CED3AEC768D387A5741A7D5E116AEF015FA5931EF36144CEE11AE90000C29335CED45000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D000000680000000048000000E3F2055EF8D5A6499004604854A49D84000000000000000000000000"
		set "favorites=00560100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE120000001AA557D820E0D90158B7CE0121E0D901EA00DD0121E0D901140056003100000000002557E88D10005461736B42617200400009000400EFBE2557E88D2557E88D2E000000D4990100000006000000000000000000000000000000A8B26A005400610073006B0042006100720000001600C4003200860900002557698D20004D4943524F537E312E4C4E4B0000560009000400EFBE2557E88D2557E88D2E000000D6990100000004000000000000000000000000000000B37BD2004D006900630072006F0073006F0066007400200045006400670065002E006C006E006B0000001C00120000002B00EFBEEA00DD0121E0D9011C001A0000001D00EFBE02004D005300450064006700650000001C00260000001E00EFBE0200530079007300740065006D00500069006E006E006500640000001C00000000A40100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE120000001AA557D820E0D90158B7CE0121E0D9015961DF0121E0D901140056003100000000002557E88D11005461736B42617200400009000400EFBE2557E88D2557E88D2E000000D4990100000006000000000000000000000000000000A7085A005400610073006B00420061007200000016001201320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBE2557E88D2557E88D2E000000D8990100000007000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00120000002B00EFBE5961DF0121E0D9011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C00260000001E00EFBE0200530079007300740065006D00500069006E006E006500640000001C000000FF"
	) else (
		set browser=false
		set "input=File Explorer"
		set "favoritesResolve=320300004C0000000114020000000000C0000000000000468300800020000000549E39A5246AD8012B113CA5246AD801A8B6C6DADDACD501970100000000000001000000000000000000000000000000A0013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE1200000056F21270246AD8010F37A185246AD8012B113CA5246AD80114005600310000000000B154E29B11005461736B42617200400009000400EFBEB154C69BB154E29B2E000000F4940100000001000000000000000000000000000000D5BA89005400610073006B00420061007200000016000E01320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBEB154E29BB154E29B2E00000097900100000002000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00120000002B00EFBE2B113CA5246AD8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C0000009B0000001C000000010000001C0000002D000000000000009A0000001100000003000000E4A63B761000000000433A5C55736572735C757365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C46696C65204578706C6F7265722E6C6E6B000060000000030000A058000000000000006465736B746F702D62356E36683339006E1A1EE27BFFA94ABB0361D86F25337E500764DB17D6EC11A598000C2907D6A06E1A1EE27BFFA94ABB0361D86F25337E500764DB17D6EC11A598000C2907D6A045000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D000000680000000048000000CE2181FCD4BF31408F25FF009E4345CA000000000000000000000000"
		set "favorites=00A40100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE1200000056F21270246AD8010F37A185246AD8012B113CA5246AD80114005600310000000000B154E29B11005461736B42617200400009000400EFBEB154C69BB154E29B2E000000F4940100000001000000000000000000000000000000D5BA89005400610073006B00420061007200000016001201320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBEB154E29BB154E29B2E00000097900100000002000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00120000002B00EFBE2B113CA5246AD8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C00260000001E00EFBE0200530079007300740065006D00500069006E006E006500640000001C000000FF"
	)
) else (
	rem Browser options
	rem No elseif or switch statement in batch :(
	if "%input%" == "Brave" (
		set "favoritesResolve=C40200004C0000000114020000000000C000000000000046830080002000000038DCEBF8DDE0D9018F25810DDEE0D9018F25810DDEE0D9017809000000000000010000000000000000000000000000003A013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE120000001AA557D820E0D90138DCEBF8DDE0D9018F25810DDEE0D9011400560031000000000026578C8210005461736B42617200400009000400EFBE26577C8226578C822E000000D499010000000C000000000000000000000000000000E3721D005400610073006B0042006100720000001600A80032007809000026578F82200042726176652E6C6E6B00440009000400EFBE26577C8226578F822E0000005E62060000000700000000000000000000000000000071751D00420072006100760065002E006C006E006B0000001800220000001E00EFBE02005500730065007200500069006E006E006500640000001800120000002B00EFBE8F25810DDEE0D9011800180000001D00EFBE020042007200610076006500000018000000930000001C000000010000001C0000002D00000000000000920000001100000003000000BEE87AE81000000000433A5C55736572735C557365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C42726176652E6C6E6B000060000000030000A058000000000000006465736B746F702D31646C64346430003AEC768D387A5741A7D5E116AEF015FAB2E44312214CEE11AE92000C29335CED3AEC768D387A5741A7D5E116AEF015FAB2E44312214CEE11AE92000C29335CED45000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D000000680000000048000000E3F2055EF8D5A6499004604854A49D84000000000000000000000000320300004C0000000114020000000000C0000000000000468300800020000000549E39A5246AD8012B113CA5246AD801A8B6C6DADDACD501970100000000000001000000000000000000000000000000A0013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE1200000056F21270246AD8010F37A185246AD8012B113CA5246AD80114005600310000000000B154E29B11005461736B42617200400009000400EFBEB154C69BB154E29B2E000000F4940100000001000000000000000000000000000000D5BA89005400610073006B00420061007200000016000E01320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBEB154E29BB154E29B2E00000097900100000002000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00120000002B00EFBE2B113CA5246AD8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C0000009B0000001C000000010000001C0000002D000000000000009A0000001100000003000000E4A63B761000000000433A5C55736572735C757365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C46696C65204578706C6F7265722E6C6E6B000060000000030000A058000000000000006465736B746F702D62356E36683339006E1A1EE27BFFA94ABB0361D86F25337E500764DB17D6EC11A598000C2907D6A06E1A1EE27BFFA94ABB0361D86F25337E500764DB17D6EC11A598000C2907D6A045000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D000000680000000048000000CE2181FCD4BF31408F25FF009E4345CA000000000000000000000000"
		set "favorites=003A0100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE120000001AA557D820E0D90138DCEBF8DDE0D9018F25810DDEE0D9011400560031000000000026578C8210005461736B42617200400009000400EFBE26577C8226578C822E000000D499010000000C000000000000000000000000000000E3721D005400610073006B0042006100720000001600A80032007809000026578F82200042726176652E6C6E6B00440009000400EFBE26577C8226578F822E0000005E62060000000700000000000000000000000000000071751D00420072006100760065002E006C006E006B0000001800120000002B00EFBE8F25810DDEE0D9011800180000001D00EFBE02004200720061007600650000001800220000001E00EFBE02005500730065007200500069006E006E006500640000001800000000A40100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE1200000056F21270246AD8010F37A185246AD8012B113CA5246AD80114005600310000000000B154E29B11005461736B42617200400009000400EFBEB154C69BB154E29B2E000000F4940100000001000000000000000000000000000000D5BA89005400610073006B00420061007200000016001201320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBEB154E29BB154E29B2E00000097900100000002000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00120000002B00EFBE2B113CA5246AD8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C00260000001E00EFBE0200530079007300740065006D00500069006E006E006500640000001C000000FF"
	) else (
		if "%input%" == "Firefox" (
			set "favoritesResolve=E20200004C0000000114020000000000C0000000000000468300800020000000C1EAB456F76CDA01C1EAB456F76CDA01CE99A8CBF66CDA01E1030000000000000100000000000000000000000000000056013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE12000000A8F97DA9776ADA018D804BF2F66CDA018D804BF2F66CDA01140056003100000000006258C3B910005461736B42617200400009000400EFBE62586DB96258C3B92E0000001E6B00000000030000000000000000000000000000005FE5D3005400610073006B0042006100720000001600C4003200E103000062584AB9200046697265666F782E6C6E6B00480009000400EFBE6258C7B96258C7B92E0000003C01000000000600000000000000000000000000000032BC4500460069007200650066006F0078002E006C006E006B0000001A00220000001E00EFBE02005500730065007200500069006E006E006500640000001A00120000002B00EFBE1E52B756F76CDA011A002E0000001D00EFBE0200330030003800300034003600420030004100460034004100330039004300420000001A000000950000001C000000010000001C0000002D00000000000000940000001100000003000000050CFEB61000000000433A5C55736572735C557365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C46697265666F782E6C6E6B000060000000030000A058000000000000006465736B746F702D627562766D6A340086BE4F893A62684A86310928B4B0051FF351BD4AEAD8EE118995000C2903292886BE4F893A62684A86310928B4B0051FF351BD4AEAD8EE118995000C2903292845000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D00000068000000004800000090BB989C2A392A46865DFC96152B921F000000000000000000000000320300004C0000000114020000000000C0000000000000468300800020000000549E39A5246AD8012B113CA5246AD801A8B6C6DADDACD501970100000000000001000000000000000000000000000000A0013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE1200000056F21270246AD8010F37A185246AD8012B113CA5246AD80114005600310000000000B154E29B11005461736B42617200400009000400EFBEB154C69BB154E29B2E000000F4940100000001000000000000000000000000000000D5BA89005400610073006B00420061007200000016000E01320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBEB154E29BB154E29B2E00000097900100000002000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00120000002B00EFBE2B113CA5246AD8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C0000009B0000001C000000010000001C0000002D000000000000009A0000001100000003000000E4A63B761000000000433A5C55736572735C757365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C46696C65204578706C6F7265722E6C6E6B000060000000030000A058000000000000006465736B746F702D62356E36683339006E1A1EE27BFFA94ABB0361D86F25337E500764DB17D6EC11A598000C2907D6A06E1A1EE27BFFA94ABB0361D86F25337E500764DB17D6EC11A598000C2907D6A045000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D000000680000000048000000CE2181FCD4BF31408F25FF009E4345CA000000000000000000000000"
			set "favorites=00560100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE12000000A8F97DA9776ADA018D804BF2F66CDA018D804BF2F66CDA01140056003100000000006258C3B910005461736B42617200400009000400EFBE62586DB96258C3B92E0000001E6B00000000030000000000000000000000000000005FE5D3005400610073006B0042006100720000001600C4003200E103000062584AB9200046697265666F782E6C6E6B00480009000400EFBE6258C7B96258C7B92E0000003C01000000000600000000000000000000000000000032BC4500460069007200650066006F0078002E006C006E006B0000001A00120000002B00EFBE1E52B756F76CDA011A002E0000001D00EFBE0200330030003800300034003600420030004100460034004100330039004300420000001A00220000001E00EFBE02005500730065007200500069006E006E006500640000001A00000000A40100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE1200000056F21270246AD8010F37A185246AD8012B113CA5246AD80114005600310000000000B154E29B11005461736B42617200400009000400EFBEB154C69BB154E29B2E000000F4940100000001000000000000000000000000000000D5BA89005400610073006B00420061007200000016001201320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBEB154E29BB154E29B2E00000097900100000002000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00120000002B00EFBE2B113CA5246AD8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C00260000001E00EFBE0200530079007300740065006D00500069006E006E006500640000001C000000FF"
		) else (
			if "%input%" == "LibreWolf" (
				set "favoritesResolve=EA0200004C0000000114020000000000C0000000000000468300800020000000529D8535B6E0D901529D8535B6E0D901529D8535B6E0D901B904000000000000010000000000000000000000000000005C013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE120000001AA557D820E0D90158B7CE0121E0D90117C3C83EABE0D901140056003100000000002657655C11005461736B42617200400009000400EFBE2557E88D2657665C2E000000D4990100000006000000000000000000000000000000AC6601005400610073006B0042006100720000001600CA003200B90400002657695C20004C69627265576F6C662E6C6E6B004C0009000400EFBE2657695C2657695C2E000000DA780000000008000000000000000000000000000000AE018D004C00690062007200650057006F006C0066002E006C006E006B0000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00120000002B00EFBE529D8535B6E0D9011C002E0000001D00EFBE0200380033004300310043003000460033004600410038003500320034004200310000001C000000970000001C000000010000001C0000002D00000000000000960000001100000003000000BEE87AE81000000000433A5C55736572735C557365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C4C69627265576F6C662E6C6E6B000060000000030000A058000000000000006465736B746F702D31646C64346430003AEC768D387A5741A7D5E116AEF015FAB13DA7E29E4CEE11AE93000C29335CED3AEC768D387A5741A7D5E116AEF015FAB13DA7E29E4CEE11AE93000C29335CED45000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D000000680000000048000000E3F2055EF8D5A6499004604854A49D84000000000000000000000000320300004C0000000114020000000000C0000000000000468300800020000000549E39A5246AD8012B113CA5246AD801A8B6C6DADDACD501970100000000000001000000000000000000000000000000A0013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE1200000056F21270246AD8010F37A185246AD8012B113CA5246AD80114005600310000000000B154E29B11005461736B42617200400009000400EFBEB154C69BB154E29B2E000000F4940100000001000000000000000000000000000000D5BA89005400610073006B00420061007200000016000E01320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBEB154E29BB154E29B2E00000097900100000002000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00120000002B00EFBE2B113CA5246AD8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C0000009B0000001C000000010000001C0000002D000000000000009A0000001100000003000000E4A63B761000000000433A5C55736572735C757365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C46696C65204578706C6F7265722E6C6E6B000060000000030000A058000000000000006465736B746F702D62356E36683339006E1A1EE27BFFA94ABB0361D86F25337E500764DB17D6EC11A598000C2907D6A06E1A1EE27BFFA94ABB0361D86F25337E500764DB17D6EC11A598000C2907D6A045000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D000000680000000048000000CE2181FCD4BF31408F25FF009E4345CA000000000000000000000000"
				set "favorites=005C0100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE120000001AA557D820E0D90158B7CE0121E0D90117C3C83EABE0D901140056003100000000002657655C11005461736B42617200400009000400EFBE2557E88D2657665C2E000000D4990100000006000000000000000000000000000000AC6601005400610073006B0042006100720000001600CA003200B90400002657695C20004C69627265576F6C662E6C6E6B004C0009000400EFBE2657695C2657695C2E000000DA780000000008000000000000000000000000000000AE018D004C00690062007200650057006F006C0066002E006C006E006B0000001C00120000002B00EFBE529D8535B6E0D9011C002E0000001D00EFBE0200380033004300310043003000460033004600410038003500320034004200310000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00000000A40100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE1200000056F21270246AD8010F37A185246AD8012B113CA5246AD80114005600310000000000B154E29B11005461736B42617200400009000400EFBEB154C69BB154E29B2E000000F4940100000001000000000000000000000000000000D5BA89005400610073006B00420061007200000016001201320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBEB154E29BB154E29B2E00000097900100000002000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00120000002B00EFBE2B113CA5246AD8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C00260000001E00EFBE0200530079007300740065006D00500069006E006E006500640000001C000000FF"
			) else (
				if "%input%" == "Google Chrome" (
					set "favoritesResolve=E60200004C0000000114020000000000C000000000000046830080002000000080E4020EB6E0D90180E4020EB6E0D9013AB600FBB5E0D901A0080000000000000100000000000000000000000000000054013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE120000001AA557D820E0D90158B7CE0121E0D90117C3C83EABE0D901140056003100000000002657185211005461736B42617200400009000400EFBE2557E88D265718522E000000D49901000000060000000000000000000000000000009CD11B015400610073006B0042006100720000001600C2003200A00800002657345C2000476F6F676C65204368726F6D652E6C6E6B00540009000400EFBE2657465C2657465C2E00000076780000000007000000000000000000000000000000C64BA80047006F006F0067006C00650020004300680072006F006D0065002E006C006E006B0000002000220000001E00EFBE02005500730065007200500069006E006E006500640000002000120000002B00EFBE80E4020EB6E0D90120001A0000001D00EFBE02004300680072006F006D0065000000200000009B0000001C000000010000001C0000002D000000000000009A0000001100000003000000BEE87AE81000000000433A5C55736572735C557365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C476F6F676C65204368726F6D652E6C6E6B000060000000030000A058000000000000006465736B746F702D31646C64346430003AEC768D387A5741A7D5E116AEF015FA933DA7E29E4CEE11AE93000C29335CED3AEC768D387A5741A7D5E116AEF015FA933DA7E29E4CEE11AE93000C29335CED45000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D000000680000000048000000E3F2055EF8D5A6499004604854A49D84000000000000000000000000320300004C0000000114020000000000C0000000000000468300800020000000549E39A5246AD8012B113CA5246AD801A8B6C6DADDACD501970100000000000001000000000000000000000000000000A0013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE1200000056F21270246AD8010F37A185246AD8012B113CA5246AD80114005600310000000000B154E29B11005461736B42617200400009000400EFBEB154C69BB154E29B2E000000F4940100000001000000000000000000000000000000D5BA89005400610073006B00420061007200000016000E01320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBEB154E29BB154E29B2E00000097900100000002000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00120000002B00EFBE2B113CA5246AD8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C0000009B0000001C000000010000001C0000002D000000000000009A0000001100000003000000E4A63B761000000000433A5C55736572735C757365725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C46696C65204578706C6F7265722E6C6E6B000060000000030000A058000000000000006465736B746F702D62356E36683339006E1A1EE27BFFA94ABB0361D86F25337E500764DB17D6EC11A598000C2907D6A06E1A1EE27BFFA94ABB0361D86F25337E500764DB17D6EC11A598000C2907D6A045000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D000000680000000048000000CE2181FCD4BF31408F25FF009E4345CA000000000000000000000000"
					set "favorites=00540100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE120000001AA557D820E0D90158B7CE0121E0D90117C3C83EABE0D901140056003100000000002657185211005461736B42617200400009000400EFBE2557E88D265718522E000000D49901000000060000000000000000000000000000009CD11B015400610073006B0042006100720000001600C2003200A00800002657345C2000476F6F676C65204368726F6D652E6C6E6B00540009000400EFBE2657465C2657465C2E00000076780000000007000000000000000000000000000000C64BA80047006F006F0067006C00650020004300680072006F006D0065002E006C006E006B0000002000120000002B00EFBE80E4020EB6E0D90120001A0000001D00EFBE02004300680072006F006D00650000002000220000001E00EFBE02005500730065007200500069006E006E006500640000002000000000A40100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE1200000056F21270246AD8010F37A185246AD8012B113CA5246AD80114005600310000000000B154E29B11005461736B42617200400009000400EFBEB154C69BB154E29B2E000000F4940100000001000000000000000000000000000000D5BA89005400610073006B00420061007200000016001201320097010000874F0749200046494C4545587E312E4C4E4B00007C0009000400EFBEB154E29BB154E29B2E00000097900100000002000000000000000000520000000000589C4400460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00120000002B00EFBE2B113CA5246AD8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C00260000001E00EFBE0200530079007300740065006D00500069006E006E006500640000001C000000FF"
				)
			)
		)
	)
)

:: If the "Volatile Environment" key exists, that means it is a proper user. Built in accounts/SIDs don't have this key.
for /f "usebackq tokens=2 delims=\" %%a in (`reg query "HKEY_USERS" ^| findstr /r /x /c:"HKEY_USERS\\S-.*" /c:"HKEY_USERS\\AME_UserHive_[^_]*"`) do (
	reg query "HKEY_USERS\%%a" | findstr /c:"Volatile Environment" /c:"AME_UserHive_" > nul && (
		echo]
		if "%%a"=="AME_UserHive_Default" (
			set "appdata=%systemdrive%\Users\Default\AppData\Roaming"
		) else (
			for /f "usebackq tokens=3* delims= " %%b in (`reg query "HKU\%%a\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "AppData" 2^>nul ^| findstr /r /x /c:".*AppData[ ]*REG_SZ[ ].*" 2^>nul`) do (
				set "appdata=%%b"
			)
		)

		if not defined appdata (
			echo Couldn't find AppData value!
		) else (
			echo Setting "%input%" taskbar shortcut for "%%a"...
			echo ------------------------------------------------------------------------------------------------------

			echo Clear current shortcuts and copy File Explorer
			rmdir /s /q "%appdata%\%taskBarLocation%" > nul
			mkdir "%appdata%\%taskBarLocation%" > nul
			copy /y "Shortcuts\File Explorer.lnk" "%appdata%\%taskBarLocation%" > nul

			echo Copy browser shortcut if applicable
			if "%browser%"=="true" copy /y "Shortcuts\%input%.lnk" "%appdata%\%taskBarLocation%" > nul

			echo Set in Registry
			reg add "HKU\%%a\%rootKey%" /v "FavoritesResolve" /t REG_BINARY /d "%favoritesResolve%" /f > nul
			reg add "HKU\%%a\%rootKey%" /v "Favorites" /t REG_BINARY /d "%favorites%" /f > nul
		)
	)
)