local unitBlue = UNIT:FindByName( "Blue-1" )
local unitRed =  UNIT:FindByName( "Red-1" )

unitRed:HandleEvent( EVENTS.Dead )

function unitRed:OnEventDead( EventData )
    MESSAGE:New( "Red-1 is dead" ):ToAll():ToLog()
end

TIMER:New(
    function()
        unitBlue:OptionROEOpenFire()
        MESSAGE:New( "BLUE Open Fire!!!", 10 ):ToAll():ToLog()
    end
):Start(10)

MESSAGE:New( "Script loaded successfully" ):ToAll():ToLog()
