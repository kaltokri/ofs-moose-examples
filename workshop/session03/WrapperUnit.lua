local unitBlue = UNIT:FindByName( "Blue-1" )
local unitRed =  UNIT:FindByName( "Red-1" )

local function msg( theRedUnit )
    if theRedUnit:IsAlive() then
        MESSAGE:New( "Red-1 is alive" ):ToAll():ToLog()
    else
        MESSAGE:New( "Red-1 is dead" ):ToAll():ToLog()
    end
end
TIMER:New( msg, unitRed ):Start(5, 3)
TIMER:New(
  function()
    unitBlue:OptionROEOpenFire()
    MESSAGE:New( "BLUE Open Fire!!!", 10 ):ToAll():ToLog()
  end
):Start(10)

MESSAGE:New( "Script loaded successfully" ):ToAll():ToLog()
