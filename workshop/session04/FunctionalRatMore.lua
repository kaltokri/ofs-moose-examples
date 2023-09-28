-- More examples
-- Fixed departure
local yak=RAT:New( "RAT_YAK" )
yak:SetDeparture({"Sochi-Adler", "Gudauta"})
yak:SetDestination({"Krymsk", "Gelendzhik"})
yak:ContinueJourney() -- From Destination to next Destination
yak:Spawn(3)

local yak2=RAT:New( "RAT_YAK" )
yak2:SetDeparture("Batumi")
yak2:SetDestination("Kobuleti")
yak2:Commute() -- From Batumi to Kobuleti and back to Batumi
yak2:Spawn(1)

MESSAGE:New( "Moose Framework loaded successfully", 25, "INFO" ):ToAll():ToLog()
