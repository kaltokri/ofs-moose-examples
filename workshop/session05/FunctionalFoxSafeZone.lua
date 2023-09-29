-- Join as GAME MASTER blue first and wait for the message.
-- Switch to client (Su-25T).
-- Fly over waypoint 1 and 2. 
-- As long as you are in the safe zone no missle will damage you.
-- Change client to another aircraft in mission editor as required.

-- Create a new missile trainer object.
fox=FOX:New()

SafeZone = ZONE:New( "FOX_Safe_Zone" )
    :DrawZone( -1, {1,0,0}, 1, {1,0,0}, 0.3, true )

-- Add training Safe zones.
fox:AddSafeZone( SafeZone )

-- Start missile trainer.
fox:Start()
MESSAGE:New( "FOX missile trainer started", 25, "INFO" ):ToAll():ToLog()
