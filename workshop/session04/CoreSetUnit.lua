MyTanksUsSet = SET_UNIT:New()
    :FilterPrefixes( "Tank" )
    :FilterCoalitions( "blue" )
    :FilterOnce()

function StartAttack()
    MESSAGE:New( "US tanks stating the attack!" ):ToAll():ToLog()
    MyTanksUsSet:ForEachUnit(
        function(_unit)
            _unit:OptionROEOpenFire()
        end
    )
end

TIMER:New( StartAttack ):Start( 5 )

MESSAGE:New( "Moose Framework loaded successfully", 25, "INFO" ):ToAll():ToLog()
