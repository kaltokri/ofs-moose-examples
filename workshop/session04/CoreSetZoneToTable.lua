MyZoneTable = {}
MyZoneSet = SET_ZONE:New():FilterPrefixes( "MyZone" ):FilterOnce()

MyZoneSet:ForEachZone(
  function(_zone)
    table.insert( MyZoneTable,_zone )
  end
)

Spawn1 = SPAWN:New( "Attacker" )
  :InitLimit( 20, 20 )
  :InitRandomizeZones( MyZoneTable )
  :SpawnScheduled( 10, .5 )
