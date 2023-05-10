


-- lock()
function DiragItlock()
 vampylock.DragNow()
end
function formMinimizelock()
 vampylock.WindowState = 'wsMinimized'
end
function formMaximizelock()
 if x == 0 then
 vampylock.WindowState = 'wsMaximized'
 x = 1
 else
 vampylock.WindowState = 'wsNormal'
 local x = 0
 end
end
function formCloselock()
vampylock.close()
closeCE()
 return caFree
end

function  vampylockVIP()

        local x = 0
        vampylock = createForm(true)
        vampylock.Width = 240
        vampylock.Height = 125
        vampylock.Caption ='vampy々'
        vampylock.Color =0x190c1f
        vampylock.Font.Color= 255
        vampylock.Position = poScreenCenter
        vampylock.onMouseDown=DiragItlock
        vampylock.setLayeredAttributes(0x000100, 210, LWA_COLORKEY | LWA_ALPHA )
        vampylock.BorderStyle=bsNone
        vampylock.fixDPI()

        vampygetkey = createButton(vampylock)
        vampygetkey.Left = 10
        vampygetkey.Top = 100
        vampygetkey.Width = 70
        vampygetkey.Height = 24
        vampygetkey.Caption ='Get Key'
        vampygetkey.onClick = Get_Key

        vampyMinimizelock = createLabel(vampylock)
        vampyMinimizelock.setSize(22,22)
        vampyMinimizelock.setPosition(200,4)
        vampyMinimizelock.Stretch = true
        vampyMinimizelock.Transparent = true
        vampyMinimizelock.Cursor = -21
        vampyMinimizelock.Anchors = '[akTop,akRight]'
        vampyMinimizelock.onClick = formMinimizelock
        vampyMinimizelock.Caption = '='

        vampyMaximizelock = createLabel(vampylock)
        vampyMaximizelock.setSize(22,22)
        vampyMaximizelock.setPosition(210,4)
        vampyMaximizelock.Stretch = true
        vampyMaximizelock.Transparent = true
        vampyMaximizelock.Cursor = -21
        vampyMaximizelock.Anchors = '[akTop,akRight]'
        vampyMaximizelock.onClick = formMaximizelock
        vampyMaximizelock.Caption = 'O'

        vampyCloselock = createLabel(vampylock)
        vampyCloselock.setSize(22,22)
        vampyCloselock.setPosition(220,4)
        vampyCloselock.Stretch = true
        vampyCloselock.Transparent = true
        vampyCloselock.Cursor = -21
        vampyCloselock.Anchors = '[akTop,akRight]'
        vampyCloselock.onClick = formCloselock
        vampyCloselock.Caption = 'X'

local vampyinput = createEdit(vampylock)
        vampyinput.Height=24
        vampyinput.Left=25
        vampyinput.Top=25
        vampyinput.Width=100
        vampyinput.Text="abcdef"

local vampyexcute = createButton(vampylock)
        vampyexcute.Height=24
        vampyexcute.Left=145
        vampyexcute.Top=24
        vampyexcute.Width=70
        vampyexcute.caption="EXECUTE"

local vampytitle = createLabel(vampylock)
        vampytitle.Left=15
        vampytitle.Top=65
        vampytitle.caption="ENTER YOUR VIP KEY"
        vampytitle.Font.Style="fsBold"
        vampytitle.Font.Size=14

local vampytimer = createTimer(vampylock)
        vampytimer.Interval=2000
        vampytimer.Enabled=false
        vampytimer.OnTimer=function()



 password = all_trim(resultautolock)
 passscanner = string.gsub(password,'%A+','')
 local trainer_verifier = vampyinput.Text
  if trainer_verifier ~= passscanner then
 vampytitle.caption="key invalid!!"
 vampytimer.Enabled=false
   showMessage("Sorry Hitler, I could not let you pass...")
 vampylock.close()
 os.exit()
   closeCE()
   return caFree
  else
 vampytitle.caption="key Verified .."
 vampytimer.Enabled=false
 vampylock.hide()
 hideAllCEWindows()
 vampyEmuVIP()
    return
end
end

vampyexcute.OnClick=function() vampytimer.Enabled=true end

end




 
resultautolock="vampyasfggfhdfg"
 res="vampyauthsafasdasda"
 password = all_trim(result)
 passscanner = string.gsub(password,'%A+','')
 local trainer_verifier = res
  if trainer_verifier ~= passscanner then
   showMessage("Sorry Hitler, I could not let you pass...")
 vampylock.close()
 os.exit()
   closeCE()
   return caFree
  else
 hideAllCEWindows()
 vampylockVIP()
   return caFree
end
