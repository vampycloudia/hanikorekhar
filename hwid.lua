

function user1()
userhwid="DDFEDAFAA"
 hwidres = all_trim(userhwid)
 hwidscaner = string.gsub(hwidres,'%A+','')
 local hwid_verifier = hardwareid
  if hwid_verifier ~= hwidscaner then
user2()  
else
    bypass()
  end
end

function user2()
userhwid="DDFEDAFAB"
 hwidres = all_trim(userhwid)
 hwidscaner = string.gsub(hwidres,'%A+','')
 local hwid_verifier = hardwareid
  if hwid_verifier ~= hwidscaner then
writeToClipboard(hardwareid)
showMessage("please register as vip member baby ///send me your hwid copyed to your clipboard  ///@bravo6ixx")
else
    bypass()
  end
end

user1()
