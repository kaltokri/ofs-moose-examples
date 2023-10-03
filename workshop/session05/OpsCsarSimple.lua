-- Based on "CSAR 100 - Caucasus"
local csarRed = CSAR:New( coalition.side.RED, "Downed Pilot", "Blue Cross" )
csarRed.immortalcrew = true -- Downed pilot spawn is immortal
csarRed.verbose = 2
csarRed:__Start(5)

function Spawn_CSAR(csarRed)
  csarRed:_SpawnCsarAtZone( "CSAR_Start_1", coalition.side.RED,"Pilot Maulwurf", true )
  csarRed:_SpawnCsarAtZone( "CSAR_Start_2", coalition.side.RED,"Pilot Schnake", true )
  csarRed:_SpawnCsarAtZone( "CSAR_Start_3", coalition.side.RED,"Pilot Chickendog", true )
  csarRed:_SpawnCsarAtZone( "CSAR_Start_4", coalition.side.RED,"Pilot Wagner", true )
end

local csar_timer = TIMER:New(Spawn_CSAR,csarRed)
csar_timer:Start(5)
MESSAGE:New( "CSAR mission started", 25, "INFO" ):ToAll():ToLog()
