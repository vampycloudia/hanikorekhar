
dbk_initialize()
dbk_useKernelmodeOpenProcess()
dbk_useKernelmodeProcessMemoryAccess()
dbk_writesIgnoreWriteProtection(true)
getAutoAttachList().add("vampy々")
getMainForm().Caption='vampy々'
getApplication().Title='vampy々'
--darkMode()
--activateProtection()
local TRACK_IPAD    = 0x3FCC464
local GCupdateskip  = 0x104AE6
local GCdownloader  = 0xDE4F8
local HEADER_LIB_UE4     = "7F 45 4C 46 01 01 01 00 00 00 00 00 00 00 00 00 03 00 28 00 01 00 00 00 00 00 00 00 34 00 00 00 24 76 B5 07"                 		
local HEADER_LIB_ANOGS   = "7F 45 4C 46 01 01 01 00 00 00 00 00 00 00 00 00 03 00 28 00 01 00 00 00 00 00 00 00 34 00 00 00 E0 36 3D 00"
local HEADER_LIB_GCLOUD  = "7F 45 4C 46 01 01 01 00 00 00 00 00 00 00 00 00 03 00 28 00 01 00 00 00 00 00 00 00 34 00 00 00 E4 A0 37 00"
 
function vampy_bypass()
            pause()
		    Get_Anogs()					
            Get_Gcloud()
            ClearOutput()
 
         --//​🇦​🇳​🇴​🇬​🇸 
            local ANOGS_Integer = readInteger(ANOGS + 0x3435A);
            if ANOGS_Integer == 4213436437  then
			  			  
              writeBytes(ANOGS+0x28A494, vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x272012, vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x2721E8, vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x272A6E, vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x272A86, vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x33A34 , vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x34254 , vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x33868 , vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x33A70 , vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x33C14 , vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x336A8 , vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x271EDC, vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x271FBC, vampystr("00 20 70 47")); 
              writeBytes(ANOGS+0x347A6 , vampystr("0C F0 A9 FE")); 
              writeBytes(ANOGS+0x347AA , vampystr("0D F0 85 F9")); 
              writeBytes(ANOGS+0x347AE , vampystr("E7 E1")); 
              writeBytes(ANOGS+0x3432E , vampystr("4C 04")); 
              writeBytes(ANOGS+0x34A12 , vampystr("0C F0 73 FD")); 
              writeBytes(ANOGS+0x34A16 , vampystr("0D F0 4F F8")); 
              writeBytes(ANOGS+0x34494 , vampystr("33 F0 46 F8")); 
              writeBytes(ANOGS+0x3449A , vampystr("06 F0 3D F8")); 
              writeBytes(ANOGS+0x3484E , vampystr("0C F0 55 FE")); 
              writeBytes(ANOGS+0x3485C , vampystr("0D F0 2C B9")); 
		
              print(string.format("🇱​🇮​🇧​🇦​🇳​🇴​🇬​🇸​ 🇦​🇹​ 0x%X 🇫​🇺​🇨​🇰​🇪​🇩​", ANOGS))
            end
             
         --//🇺​🇪​4 	
            local UE4_Integer = readInteger(UE4 + TRACK_IPAD);
            if UE4_Integer == 1135869952  then
				
				
			  cheats()										
              print(string.format('🇱​🇮​🇧​🇺​🇪​4​ 🇦​🇹​ 0x%X 🇫​🇺​🇨​🇰​🇪​🇩​', UE4))				  
            end		
	
         --//🇬​🇨​🇱​🇴​🇺​🇩	
            local GCLOUD_Integer = readInteger(GCLOUD + GCupdateskip);
            if GCLOUD_Integer == 2969678091 then	
	          utilityg()
              print(string.format("🇱​🇮​🇧​🇬​🇨​🇱​🇴​🇺​🇩​​ 🇦​🇹​ 0x%X 🇫​🇺​🇨​🇰​🇪​🇩", GCLOUD))             
            end  	
		unpause()	
    end
 
function utilityg()
 
            if checkbox_getState(GCskipChk)== 1  then	
              writeBytes(GCLOUD+GCupdateskip, vampy("00 F0 8F BD"));
			end
            if checkbox_getState(GCdownChk)== 1  then	
              writeBytes(GCLOUD+GCdownloader, vampy("5F E2"));
			end
end
function cheats()
 
            if checkbox_getState(MobilelobbyChk)== 1  then	
              writeBytes(UE4+0x2714788  , vampystr("00 00 A0 E3 0E F0 A0 E1")); --emulator
              writeBytes(UE4+0x2CDC53C  , vampystr("00 00 A0 E3 0E F0 A0 E1")); --emulator
              --writeBytes(ANOGS+0x43214  , vampystr("78 E0")); --emulator
              writeBytes(ANOGS+0x5ACC6  , vampystr("74 E0")); --2 month fix	
              writeBytes(ANOGS+0x43192 , vampystr("00 20 70 47")); 		
			end
						
            if checkbox_getState(IpadViewChk)== 1  then			
              writeBytes(UE4+TRACK_IPAD, vampy("00 80 9F 43")); --ipad	
			end
 
			
            if checkbox_getState(UE4sideChk)== 1  then				
	
              writeBytes(UE4+0x18E8858 , vampystr("0E F0 A0 E1"));		
              writeBytes(UE4+0x18E7594 , vampystr("0E F0 A0 E1"));	
              writeBytes(UE4+0x179313C , vampystr("0E F0 A0 E1"));	
	          writeBytes(UE4+0x1607270 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x18E726C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x25C7070 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x25C7028 , vampystr("0E F0 A0 E1"));		  			  			  			  
			  writeBytes(UE4+0x1242C50 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1242DF0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1243744 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x12439A8 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1243D38 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1243E44 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x12441A4 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x12444A8 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1244854 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1244A2C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x12453E8 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1270C5C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1284BBC , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1284D5C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1284EE4 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x128524C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1285B88 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1286B68 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x128B6E0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x128C178 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x128C914 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x128CE00 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15DCA90 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15DDA80 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15DDB8C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15DDC90 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15DDE0C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15DE1F8 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15DE398 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15DE78C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15DEFD8 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15DFF40 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E0320 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E0E54 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E3D5C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E40C0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E5288 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E5400 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E61CC , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E6974 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E6A98 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E73EC , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E83B0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E8794 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E8A38 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E8CB0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E8F00 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E90D0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15E91DC , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15EB158 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x15EC0E4 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1BB42C8 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1BB4740 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1BB486C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1EC4330 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1F30A64 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1F3F94C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1F401F0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1F40840 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1FEFDC0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x2000FCC , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x2001360 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x2001760 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x2001808 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x20018B8 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x2001E60 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x20023D0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x20028F4 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x2002EF0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x2003458 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x2003624 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x2003804 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x20101D0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1794664 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x17943E4 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x17A58A4 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1600ECC , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1601170 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1601448 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1602238 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1605074 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1BBDA90 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1BBE8D0 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1BBED0C , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1BBFD38 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1BC0110 , vampystr("0E F0 A0 E1"));
	          writeBytes(UE4+0x1BC15D4 , vampystr("0E F0 A0 E1"));		 	  			
        	end	
end
 
 
 
function vampy(strbytes)
local retbyte = {}
    for hex in string.gmatch(strbytes, "%S+") do
      local size = #retbyte + 1
      retbyte[size] = tonumber(hex, 16)
    end
return retbyte
end
 
 
function ClearOutput()
GetLuaEngine().MenuItem5.doClick()
end
 
function getFK()
shellExecute('https://t.me/bravo6ixx')
end  	  
 
function paz()
pause()
end
 
function unpaz()
unpause()
end
 
 
function StartProcess(sender)
--ClearOutput()
sleep(500)
local ProcName = getRef(sender.Tag).EmuProcName
StartRange =getRef(sender.Tag).EmuRangeS
EndRange =getRef(sender.Tag).EmuRangeE
UE4END =getRef(sender.Tag).EmuUE4END
local p = io.popen('tasklist /fi "IMAGENAME eq '..ProcName..'.exe" /fi "MEMUSAGE gt 300000" /nh', 'r');
local procInfo = p:read('*a');
p:close();
local pid = procInfo:match('%d+');
piD = tonumber(pid);
if(piD == nil)then
messageDialog("🇵​🇱​🇪​🇦​🇸​🇪​ 🇷​🇪​🇸​🇹​🇦​🇷​🇹​ 🇹​🇭​🇪​ 🇬​🇦​🇲​🇪​",mtWarning,mbOK);
else
sleep(500)
print(string.format("Game PID: %d", piD))
openProcess(piD)
--enableDRM(piD)
pause()
FormEmu.hide()
GetUE4()
end
end
 
function GetUE4() 	 
UE4_Scan = createMemScan()
UE4_Scan.firstScan(soExactValue, vtByteArray, nil, HEADER_LIB_UE4, nil, StartRange, EndRange, '', nil, nil , true, nil, nil, nil)
UE4_Scan.waitTillDone()
LIB_UE4 = createFoundList(UE4_Scan)
LIB_UE4.initialize()
 
					 UE4 = tonumber(LIB_UE4[0], 16)
					  
					                
        local UE4_Integer = readInteger(UE4 + 0x20);
 
         if UE4_Integer == 129332772 then
									                 
	                  print(string.format('🇱​🇮​🇧​🇺​🇪​4 🇫​🇴​🇺​🇳​🇩​🇪​🇩​ 🇦​🇹​ 0x%X', UE4))
 
                     unpause()
                 vampyvipp()
						
            	          else
						  ClearOutput()
                             unpause()
	                   messageDialog("🇱​🇮​🇧​🇺​🇪​4 🇳​🇴​🇹​ 🇫​🇴​🇺​🇳​🇩​! 🇵​🇱​🇪​🇦​🇸​🇪​ 🇷​🇪​🇸​🇹​🇦​🇷​🇹​ 🇹​🇭​🇪​ 🇬​🇦​🇲​🇪​",mtWarning,mbOK);
								
		        FormEmu.show()
 	 return true
   end 
 end 
 
 
function Get_Anogs()
ANOGS_Scan = createMemScan()
ANOGS_Scan.firstScan(soExactValue, vtByteArray, nil, HEADER_LIB_ANOGS, nil, StartRange, EndRange, '', nil, nil , true, nil, nil, nil)
ANOGS_Scan.waitTillDone()
LIB_ANOGS = createFoundList(ANOGS_Scan)
LIB_ANOGS.initialize()  
             			
                      ANOGS = tonumber(LIB_ANOGS[0], 16)
						   local ANOGS_Integer = readInteger(ANOGS + 0x20);
 
         if ANOGS_Integer == 4011744 then
		 
	                  print(string.format('🇱​🇮​🇧​🇦​🇳​🇴​🇬​🇸​ 🇫​🇴​🇺​🇳​🇩​🇪​🇩​ 🇦​🇹​ 0x%X', ANOGS))
 
                                                       else
						
		 print(string.format('🇱​🇮​🇧​🇦​🇳​🇴​🇬​🇸​ 🇳​🇴​🇹​ 🇫​🇴​🇺​🇳​🇩​​', ANOGS))
                            return
  end
 end
 
function Get_Gcloud()
GCLOUD_Scan = createMemScan()
GCLOUD_Scan.firstScan(soExactValue, vtByteArray, nil, HEADER_LIB_GCLOUD, nil, StartRange, EndRange, '', nil, nil , true, nil, nil, nil)
GCLOUD_Scan.waitTillDone()
LIB_GCLOUD = createFoundList(GCLOUD_Scan)
LIB_GCLOUD.initialize()                 
 
 			      GCLOUD   = tonumber(LIB_GCLOUD[0], 16)
				local GCLOUD_Integer = readInteger(GCLOUD + 0x20);
         if GCLOUD_Integer == 3645668 then
                      print(string.format('🇱​🇮​🇧​🇬​🇨​🇱​🇴​🇺​🇩​​ 🇫​🇴​🇺​🇳​🇩​🇪​🇩​ 🇦​🇹​ 0x%X', GCLOUD))
					  
                        else
						        
                   print(string.format('🇱​🇮​🇧​🇬​🇨​🇱​🇴​🇺​🇩​​ 🇳​🇴​🇹​ 🇫​🇴​🇺​🇳​🇩​', GCLOUD))
                   return
  end	
 end
 
 
function GetMagic()
HIT_PART_Scan = createMemScan()
HIT_PART_Scan.firstScan(soExactValue, vtByteArray, nil, HEADER_HIT_PART, nil, UE4, UE4END, '', nil, nil , true, nil, nil, nil)
HIT_PART_Scan.waitTillDone()
HIT_PART = createFoundList(HIT_PART_Scan)
HIT_PART.initialize()											
              			      HIT_PART = tonumber(HIT_PART[0], 16)
				 HIT_PART_Integer = readInteger(HIT_PART);
         if HIT_PART_Integer == 184 then			
                        magicssStart()
                     else
         		messageDialog("🇧​🇦​🇸​🇪​ 🇦​🇩​🇩​🇷​🇪​🇸​🇸​ 🇳​🇴​🇹​ 🇫​🇴​🇺​🇳​🇩​!",mtWarning,mbOK);
        return
  end
end 
 
 
function resetinternet()
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'NetReset.bat'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."NetReset.bat"
 local vampyfile = shellExecute(vampy_name)
 
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'macreset.bat'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."macreset.bat"
 local vampyfile = shellExecute(vampy_name)
end
 
function opgloop()
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'Gameloop.exe'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'Active.sav'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'UserCustom.ini'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(1500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."Gameloop.exe"
 local vampyfile = shellExecute(vampy_name)
end
 
function fixlag()
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'fixlag.bat'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."fixlag.bat"
 local vampyfile = shellExecute(vampy_name)
end
 
function safeExit()   ---exit emu
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'exitemu.bat'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."exitemu.bat"
 local vampyfile = shellExecute(vampy_name)
end
 
 function resetgameloopid()   ---global reset id
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'idreseter.bat'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."idreseter.bat"
 local vampyfile = shellExecute(vampy_name)
end
 
function openpubgtw()
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'opentw.bat'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."opentw.bat"
 local vampyfile = shellExecute(vampy_name)
end
 
function openpubgglobal()
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'opengl.bat'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."opengl.bat"
 local vampyfile = shellExecute(vampy_name)
end
 
function openpubgkr()
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'openkr.bat'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."openkr.bat"
 local vampyfile = shellExecute(vampy_name)
end
 
function openpubgvn()
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'openvn.bat'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."openvn.bat"
 local vampyfile = shellExecute(vampy_name)
end
function openpubgbgmi()
local path = os.getenv("windir") .. "\\Temp\"
FILE = 'openind.bat'
findTableFile(FILE).saveToFile(path..'\\'..FILE)
sleep(500)
 local vampy = os.getenv("windir") .. "\\Temp\"
 local vampy_name = vampy.."openind.bat"
 local vampyfile = shellExecute(vampy_name)
end
--windows manager
-- lock()//
function DragIt0()
 Formlock.DragNow()
end
function formMinimize0()
 Formlock.WindowState = 'wsMinimized'
end
function formMaximize0()
 if x == 0 then
 Formlock.WindowState = 'wsMaximized'
 x = 1
 else
 Formlock.WindowState = 'wsNormal'
 local x = 0
 end
end
function formClose0()
Formlock.close()
closeCE()
 return caFree
end
--vampyvip()//
function DragIt()
 FormEmu.DragNow()
end
function formMinimize()
 FormEmu.WindowState = 'wsMinimized'
end
function formMaximize()
 if x == 0 then
 FormEmu.WindowState = 'wsMaximized'
 x = 1
 else
 FormEmu.WindowState = 'wsNormal'
 local x = 0
 end
end
function formClose()
FormEmu.close()
os.exit()
closeCE()
 return caFree
end
--vampy()// 
function DragIt1()
 FormMenu.DragNow()
end
function formMinimize1()
 FormMenu.WindowState = 'wsMinimized'
end
function formMaximize1()
 if x == 0 then
 FormMenu.WindowState = 'wsMaximized'
 x = 1
 else
 FormMenu.WindowState = 'wsNormal'
 local x = 0
 end
end
function formClose1()
FormMenu.close()
os.exit()
closeCE()
 return caFree
end
--goskin()//
function DragIt2()
 FormSkinHack.DragNow()
end
function formMinimize2()
 FormSkinHack.WindowState = 'wsMinimized'
end
function formMaximize2()
 if x == 0 then
 FormSkinHack.WindowState = 'wsMaximized'
 x = 1
 else
 FormSkinHack.WindowState = 'wsNormal'
 local x = 0
 end
end
function formClose2()
FormSkinHack.close()
os.exit()
closeCE()
 return caFree
end
 
function gomainm()
FormMenu.show()
FormSkinHack.close()
end
function goemus()
FormMenu.close()
FormEmu.show()
end
 
function vampyvip()
local x = 0
FormEmu = createForm(true)
FormEmu.Caption ='vampy々'
FormEmu.Width = 1024
FormEmu.Height = 576
FormEmu.Position = poScreenCenter
FormEmu.Color =0x190c1f
FormEmu.Font.Color= 255
FormEmu.BorderStyle=bsNone
FormEmu.onMouseDown = DragIt
FormEmu.fixDPI()
 
fTitle = createLabel(FormEmu)
fTitle.setPosition(100,0)
fTitle.Font.Color = '215'
fTitle.Font.Size = 15
fTitle.Font.Name = 'Verdana'
fTitle.Caption = 'T.ME/BRAVO6IXX'
fTitle.Anchors = '[akTop,akLeft]'
 
img_BtnMin = createLabel(FormEmu)
img_BtnMin.setSize(55,55)
img_BtnMin.setPosition(1000,4)
img_BtnMin.Stretch = true
img_BtnMin.Transparent = true
img_BtnMin.Cursor = -21
img_BtnMin.Anchors = '[akTop,akRight]'
img_BtnMin.onClick = formMinimize
img_BtnMin.Caption = '='
 
img_BtnMax = createLabel(FormEmu)
img_BtnMax.setSize(55,55)
img_BtnMax.setPosition(1010,4)
img_BtnMax.Stretch = true
img_BtnMax.Transparent = true
img_BtnMax.Cursor = -21
img_BtnMax.Anchors = '[akTop,akRight]'
img_BtnMax.onClick = formMaximize
img_BtnMax.Caption = 'O'
 
img_BtnClose = createLabel(FormEmu)
img_BtnClose.setSize(55,55)
img_BtnClose.setPosition(1020,4)
img_BtnClose.Stretch = true
img_BtnClose.Transparent = true
img_BtnClose.Cursor = -21
img_BtnClose.Anchors = '[akTop,akRight]'
img_BtnClose.onClick = formClose
img_BtnClose.Caption = 'X'
 
GameloopSel = createLabel(FormEmu)
GameloopSel.Left = 3
GameloopSel.Top = 230
GameloopSel.Width = 75
GameloopSel.Height = 25
GameloopSel.Caption = 'Gameloop'
GameloopSel = createButton(FormEmu)
GameloopParamData={}
GameloopParamData.EmuProcName = "aow_exe"
GameloopParamData.EmuRangeS = 0x39999999
GameloopParamData.EmuRangeE = 0x59999999
GameloopParamData.EmuUE4END = 0xA0000000
GameloopSel.Tag=createRef(GameloopParamData)
GameloopSel.Left = 100
GameloopSel.Top = 230
GameloopSel.Width = 15
GameloopSel.Height = 15
GameloopSel.onClick = StartProcess
GameloopSel.Color =255
 
SmartGaGaSel = createLabel(FormEmu)
SmartGaGaSel.Left = 3
SmartGaGaSel.Top = 250
SmartGaGaSel.Caption = 'SmartGaGa'
SmartGaGaSel = createButton(FormEmu)
SmartGaGaParamData={}
SmartGaGaParamData.EmuProcName = "AndroidProcess"
SmartGaGaParamData.EmuRangeS = 0x70000000
SmartGaGaParamData.EmuRangeE = 0x90000000
SmartGaGaParamData.EmuUE4END = 0xA0000000
SmartGaGaSel.Tag=createRef(SmartGaGaParamData)
SmartGaGaSel.Left = 100
SmartGaGaSel.Top = 250
SmartGaGaSel.Width = 15
SmartGaGaSel.Height = 15
SmartGaGaSel.onClick = StartProcess
 
LdPlayerSel = createLabel(FormEmu)
LdPlayerSel.Left = 3
LdPlayerSel.Top = 270
LdPlayerSel.Caption = 'Ld Player4'
LdPlayerSel = createButton(FormEmu)
LdPlayerParamData={}
LdPlayerParamData.EmuProcName = "LdVBoxHeadless"
LdPlayerParamData.EmuRangeS = 0x0000000000000000
LdPlayerParamData.EmuRangeE = 0x00007fffffffffff
LdPlayerParamData.EmuUE4END = 0x00007fffffffffff
LdPlayerSel.Tag=createRef(LdPlayerParamData)
LdPlayerSel.Left = 100
LdPlayerSel.Top = 270
LdPlayerSel.Width = 15
LdPlayerSel.Height = 15
LdPlayerSel.onClick = StartProcess
 
LdPlayer3Sel = createLabel(FormEmu)
LdPlayer3Sel.Left = 3
LdPlayer3Sel.Top = 290
LdPlayer3Sel.Caption = 'Ld Player3'
LdPlayer3Sel = createButton(FormEmu)
LdPlayer3ParamData={}
LdPlayer3ParamData.EmuProcName = "LdBoxHeadless"
LdPlayer3ParamData.EmuRangeS = 0x0000000000000000
LdPlayer3ParamData.EmuRangeE = 0x00007fffffffffff
LdPlayer3ParamData.EmuUE4END = 0x00007fffffffffff
LdPlayer3Sel.Tag=createRef(LdPlayer3ParamData)
LdPlayer3Sel.Left = 100
LdPlayer3Sel.Top = 290
LdPlayer3Sel.Width = 15
LdPlayer3Sel.Height = 15
LdPlayer3Sel.onClick = StartProcess
 
NoxSel = createLabel(FormEmu)
NoxSel.Left = 3
NoxSel.Top = 310
NoxSel.Caption = 'NoX'
NoxSel = createButton(FormEmu)
NoxParamData={}
NoxParamData.EmuProcName = "NoxVMHandle"
NoxParamData.EmuRangeS = 0x0000000000000000
NoxParamData.EmuRangeE = 0x00007fffffffffff
NoxParamData.EmuUE4END = 0x00007fffffffffff
NoxSel.Tag=createRef(NoxParamData)
NoxSel.Left = 100
NoxSel.Top = 310
NoxSel.Width = 15
NoxSel.Height = 15
NoxSel.onClick = StartProcess
 
MemuSel = createLabel(FormEmu)
MemuSel.Left = 3
MemuSel.Top = 330
MemuSel.Caption = 'Memu'
MemuSel = createButton(FormEmu)
MemuParamData={}
MemuParamData.EmuProcName = "MEmuHeadless"
MemuParamData.EmuRangeS = 0x0000000000000000
MemuParamData.EmuRangeE = 0x00007fffffffffff
MemuParamData.EmuUE4END = 0x00007fffffffffff
MemuSel.Tag=createRef(MemuParamData)
MemuSel.Left = 100
MemuSel.Top = 330
MemuSel.Width = 15
MemuSel.Height = 15
MemuSel.onClick = StartProcess
 
BluestacksSel = createLabel(FormEmu)
BluestacksSel.Left = 3
BluestacksSel.Top = 350
BluestacksSel.Caption = 'Bluestacks'
BluestacksSel = createButton(FormEmu)
BluestacksParamData={}
BluestacksParamData.EmuProcName = "HD-Player"
BluestacksParamData.EmuRangeS = 0x0000000000000000
BluestacksParamData.EmuRangeE = 0x00007fffffffffff
BluestacksParamData.EmuUE4END = 0x00007fffffffffff
BluestacksSel.Tag=createRef(BluestacksParamData)
BluestacksSel.Left = 100
BluestacksSel.Top = 350
BluestacksSel.Width = 15
BluestacksSel.Height = 15
BluestacksSel.onClick = StartProcess
 
info12 = createButton(FormEmu)
info12.Left = 1000
info12.Top = 250
info12.Width = 20
info12.Height = 20
info12.onClick = fixlag
info12.Caption ='!'
 
info13 = createLabel(FormEmu)
info13.Caption='FixLag'
info13.Left = 850
info13.Top = 250
info13.Font.Size= 10
info13.Font.Color= 255
 
info12 = createButton(FormEmu)
info12.Left = 1000
info12.Top = 270
info12.Width = 20
info12.Height = 20
info12.onClick = opgloop
info12.Caption ='!'
 
info13 = createLabel(FormEmu)
info13.Caption='StartGameLoop'
info13.Left = 850
info13.Top = 270
info13.Font.Color= 255
 
 
info13 = createLabel(FormEmu)
info13.Caption='Open Game'
info13.Left = 850
info13.Top = 290
info13.Font.Size= 10
info13.Font.Color= 255
 
info12 = createButton(FormEmu)
info12.Left = 1000
info12.Top = 290
info12.Width = 20
info12.Height = 20
info12.onClick = openpubgglobal
info12.Caption ='GL'
 
info12 = createButton(FormEmu)
info12.Left = 980
info12.Top = 290
info12.Width = 20
info12.Height = 20
info12.onClick = openpubgtw
info12.Caption ='TW'
 
info12 = createButton(FormEmu)
info12.Left = 960
info12.Top = 290
info12.Width = 20
info12.Height = 20
info12.onClick = openpubgvn
info12.Caption ='VN'
 
info12 = createButton(FormEmu)
info12.Left = 940
info12.Top = 290
info12.Width = 20
info12.Height = 20
info12.onClick = openpubgkr
info12.Caption ='KR'
 
info12 = createButton(FormEmu)
info12.Left = 920
info12.Top = 290
info12.Width = 20
info12.Height = 20
info12.onClick = openpubgbgmi
info12.Caption ='IN'
 
 
info13 = createLabel(FormEmu)
info13.Caption='Device_ID'
info13.Left = 850
info13.Top = 310
info13.Font.Color= 255
 
info12 = createButton(FormEmu)
info12.Left = 1000
info12.Top = 310
info12.Width = 20
info12.Height = 20
info12.onClick = resetgameloopid
info12.Caption ='!'
 
info13 = createLabel(FormEmu)
info13.Caption='Device_IP'
info13.Left = 850
info13.Top = 330
info13.Font.Size= 10
info13.Font.Color= 255
 
info12 = createButton(FormEmu)
info12.Left = 1000
info12.Top = 330
info12.Width = 20
info12.Height = 20
info12.onClick = resetinternet
info12.Caption ='!'
 
 
 
info12 = createButton(FormEmu)
info12.Left = 1000
info12.Top = 350
info12.Width = 20
info12.Height = 20
info12.onClick = safeExit
info12.Caption ='!'
 
info13 = createLabel(FormEmu)
info13.Caption='safeExit'
info13.Left = 850
info13.Top = 350
info13.Font.Size= 10
info13.Font.Color= 255
 
function attachBackground(wc)
  local p = createPicture()
  local int=getInternet()
local logostr=int.getURL("https://s6.uupload.ir/files/9o1wji_k1q0.jpg")
int.destroy()
local ss=createStringStream(logostr)
  p.loadFromStream(ss)
  wc.OnPaint = function(sender)
    local c = sender.getCanvas()
    local bitmap = p.getBitmap()
    c.draw(0,0,bitmap)
  end
end
attachBackground(FormEmu,[[bff.JPG]])
end
 
function vampyvipp()
local x = 0
FormMenu = createForm(true)
FormMenu.Caption ='vampy々'
FormMenu.Width = 1024
FormMenu.Height = 576
FormMenu.Position = poScreenCenter
FormMenu.Color =0x190c1f
FormMenu.BorderStyle=bsNone
FormMenu.onMouseDown = DragIt1
FormMenu.fixDPI()
attachBackground(FormMenu,[[bff.JPG]])
 
dg9 = createLabel(FormMenu)
dg9.Caption='T.ME/BRAVO6IXX'
dg9.Left = 0
dg9.Top = -1
dg9.Font.Size= 19
dg9.Font.Color=255
dg9.onClick = getFK
 
dg7 = createLabel(FormMenu)
dg7.Caption='ρłαч šмαят! ανøıđ Reρøят'
dg7.Left = 0
dg7.Top = 30
dg7.Font.Color=255
 
 
 
img_BtnMin = createLabel(FormMenu)
img_BtnMin.setSize(22,22)
img_BtnMin.setPosition(1000,4)
img_BtnMin.Stretch = true
img_BtnMin.Transparent = true
img_BtnMin.Cursor = -21
img_BtnMin.Anchors = '[akTop,akRight]'
img_BtnMin.onClick = formMinimize1
img_BtnMin.Caption = '='
img_BtnMin.Font.Color=0xff0000
 
img_BtnMax = createLabel(FormMenu)
img_BtnMax.setSize(22,22)
img_BtnMax.setPosition(1010,4)
img_BtnMax.Stretch = true
img_BtnMax.Transparent = true
img_BtnMax.Cursor = -21
img_BtnMax.Anchors = '[akTop,akRight]'
img_BtnMax.onClick = formMaximize1
img_BtnMax.Caption = 'O'
img_BtnMax.Font.Color=0xff0000
 
img_BtnClose = createLabel(FormMenu)
img_BtnClose.setSize(22,22)
img_BtnClose.setPosition(1020,4)
img_BtnClose.Stretch = true
img_BtnClose.Transparent = true
img_BtnClose.Cursor = -21
img_BtnClose.Anchors = '[akTop,akRight]'
img_BtnClose.onClick = formClose1
img_BtnClose.Caption = 'X'
img_BtnClose.Font.Color=255
 
chbf = createButton(FormMenu)
chbf.Left = 972
chbf.Top = 190
chbf.Width = 52
chbf.Height = 20
chbf.onClick = paz
chbf.Caption ='☠'
 
chbf = createButton(FormMenu)
chbf.Left = 920
chbf.Top = 190
chbf.Width = 52
chbf.Height = 20
chbf.onClick = unpaz
chbf.Caption ='▶'
 
chl = createLabel(FormMenu)
chl.Caption='Emu Selection'
chl.Left = 940
chl.Top = 40
chl.Font.Size= 10
chl.Font.Color=0xa503fc
 
anbf = createButton(FormMenu)
anbf.Left = 920
anbf.Top = 40
anbf.Width = 20
anbf.Height = 20
anbf.onClick = goemus
anbf.Caption ='☻'
 
chl = createLabel(FormMenu)
chl.Caption='ᴇхᴇᴄᴜᴛᴇ oɴ ʟᴏɢo'
chl.Left = 0
chl.Top = 44
chl.Font.Color= 255
 
chbf = createButton(FormMenu)
chbf.Left = 0
chbf.Top = 59
chbf.Width = 90
chbf.Height = 70
chbf.onClick = vampy_bypass
chbf.Caption ='BYPASS'
 
 
IpadViewChk = createCheckBox(FormMenu);
IpadViewChk.Left = 170
IpadViewChk.Top = 57
IpadViewChk.Focused = false
IpadViewChk.focus  = false
IpadViewChk.state  = 1
IpadViewlb = createLabel(FormMenu)
IpadViewlb.Caption = 'IpadView'
IpadViewlb.Left = IpadViewChk.Left+17
IpadViewlb.Top = IpadViewChk.Top+2
IpadViewlb.Font.Color = 0xfcdb03
 
UE4sideChk = createCheckBox(FormMenu);
UE4sideChk.Left = 170
UE4sideChk.Top = 72
UE4sideChk.Focused = false
UE4sideChk.focus  = false
UE4sideChk.state  = 1
UE4sidelb = createLabel(FormMenu)
UE4sidelb.Caption = 'UE4side'
UE4sidelb.Left = UE4sideChk.Left+17
UE4sidelb.Top = UE4sideChk.Top+2
UE4sidelb.Font.Color = 0xfcdb03
 
GCdownChk = createCheckBox(FormMenu);
GCdownChk.Left = 170
GCdownChk.Top = 87
GCdownChk.Focused = false
GCdownChk.focus  = false
GCdownChk.state  = 0
GCdownlb = createLabel(FormMenu)
GCdownlb.Caption = 'Map downloader'
GCdownlb.Left = GCdownChk.Left+17
GCdownlb.Top = GCdownChk.Top+2
GCdownlb.Font.Color = 0xfcdb03
 
GCskipChk = createCheckBox(FormMenu);
GCskipChk.Left = 170
GCskipChk.Top = 102
GCskipChk.Focused = false
GCskipChk.focus  = false
GCskipChk.state  = 1
GCskiplb = createLabel(FormMenu)
GCskiplb.Caption = 'Update skip'
GCskiplb.Left = GCskipChk.Left+17
GCskiplb.Top = GCskipChk.Top+2
GCskiplb.Font.Color = 0xfcdb03
 
MobilelobbyChk = createCheckBox(FormMenu);
MobilelobbyChk.Left = 170
MobilelobbyChk.Top = 117
MobilelobbyChk.Focused = false
MobilelobbyChk.focus  = false
MobilelobbyChk.state  = 1
Mobilelobbylb = createLabel(FormMenu)
Mobilelobbylb.Caption = 'MobileLobby'
Mobilelobbylb.Left = MobilelobbyChk.Left+17
Mobilelobbylb.Top = MobilelobbyChk.Top+2
Mobilelobbylb.Font.Color = 0xfcdb03
 
end
 
 vampyvip()
