-- Join as GAME MASTER blue first and wait for the message.
-- Switch to client (Su-25T).
-- Fly over waypoint 1. No missle from first SAM will damage you.
-- Fly to waypoint 2. Missles from second SAM will kill you.
-- Change client to another aircraft in mission editor as required.

-- Create a new missile trainer object.
fox=FOX:New()

-- Add training Launch zones. Only launches from these zones are handled, if defined
fox:AddLaunchZone( ZONE:New("FOX_Launch_Zone") )

-- Start missile trainer.
fox:Start()
MESSAGE:New( "FOX missile trainer started", 25, "INFO" ):ToAll():ToLog()
