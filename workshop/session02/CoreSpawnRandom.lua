-------------------------------------------------------------------------------
-- Simple example of the SPAWN classes
-------------------------------------------------------------------------------
ZoneTable = { ZONE:New( "Zone1" ), ZONE:New( "Zone2" ), ZONE:New( "Zone3" ) }
TemplateTable = { "tplA", "tplB", "tplC" }

Spawn1 = SPAWN:New( "Ground2" )
  :InitLimit( 10, 10 )
  :InitRandomizeRoute( 1, 1, 200 )
  :InitRandomizeZones( ZoneTable )
  :InitRandomizeTemplate( TemplateTable )
  :SpawnScheduled( 5, .5 )
