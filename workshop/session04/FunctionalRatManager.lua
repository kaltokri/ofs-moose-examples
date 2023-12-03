local a10c=RAT:New("RAT_A10C", "A-10C managed")
a10c:SetDeparture({"Batumi"})

local f15c=RAT:New("RAT_F15C", "F15C managed")
f15c:SetDeparture({"Kobuleti"})
f15c:DestinationZone()
f15c:SetDestination({"ZoneC"})

local av8b=RAT:New("RAT_AV8B", "AV8B managed")
av8b:SetDeparture({"ZoneC"})
av8b:SetTakeoff("air")
av8b:DestinationZone()
av8b:SetDestination({"ZoneA"})

local manager=RATMANAGER:New(25)
manager:Add(a10c, 5)
manager:Add(f15c, 5)
manager:Add(av8b, 5)
manager:Start(30)
manager:Stop(7200)

MESSAGE:New( "Moose Framework loaded successfully", 25, "INFO" ):ToAll():ToLog()
