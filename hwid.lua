

function usershanks()
userhwid="ACDEFEBFEFD"
 hwidres = all_trim(userhwid)
 hwidscaner = string.gsub(hwidres,'%A+','')
 local hwid_verifier = hardwareid
  if hwid_verifier ~= hwidscaner then
writeToClipboard(hardwareid)
showMessage("send me your HWid that was copyed to your clipboard  any question ??? mention me in our telegram group >> t.me/pubgvampy ///@bravo6ixx")
else
    bypass()
  end
end
function userEmad()
userhwid="CEAFAECFEADFB"
 hwidres = all_trim(userhwid)
 hwidscaner = string.gsub(hwidres,'%A+','')
 local hwid_verifier = hardwareid
  if hwid_verifier ~= hwidscaner then
usershanks()
else
    bypass()
  end
end
function user1()
userhwid="DDFEDAFAA"
 hwidres = all_trim(userhwid)
 hwidscaner = string.gsub(hwidres,'%A+','')
 local hwid_verifier = hardwareid
  if hwid_verifier ~= hwidscaner then
userEmad()
else
    bypass()
  end
end

user1()
