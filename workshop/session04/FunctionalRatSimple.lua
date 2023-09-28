-- Easiest Way to use RAT
local rat1=RAT:New( "RAT_YAK" )
rat1:Spawn(10)

-- Fixed departure
local rat2=RAT:New( "RAT_A10C" )
rat2:SetDeparture( {"Sochi-Adler", "Gudauta"} )
rat2:SetDestination( {"Krymsk", "Gelendzhik"} )
rat2:SetTakeoff("hot")
rat2:Spawn(3)

local rat3=RAT:New( "RAT_F15C" )
rat3:SetDeparture("Batumi")
rat3:SetDestination("Kobuleti")
rat3:Commute() -- From Batumi to Kobuleti and back to Batumi
rat3:Spawn(2)

MESSAGE:New( "Moose Framework loaded successfully", 25, "INFO" ):ToAll():ToLog()
