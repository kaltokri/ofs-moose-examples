local groupBlue = GROUP:FindByName( "Blue" )
local groupRed =  GROUP:FindByName( "Red" )

local function msg( theRedGroup )
    if theRedGroup:IsAlive() then
        MESSAGE:New( "Red group is alive" ):ToAll():ToLog()
    else
        MESSAGE:New( "Red group is dead" ):ToAll():ToLog()
    end
end

TIMER:New( msg, groupRed ):Start(5, 3)

TIMER:New(
  function()
    groupBlue:OptionROEOpenFire()
    MESSAGE:New( "BLUE Open Fire!!!", 10 ):ToAll():ToLog()
  end
):Start(10)

MESSAGE:New( "Script loaded successfully" ):ToAll():ToLog()
