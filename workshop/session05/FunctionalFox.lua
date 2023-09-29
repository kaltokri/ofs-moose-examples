-- Join as GAME MASTER blue first and wait for the message.
-- Switch to client (Su-25T).
-- Fly over waypoint 1. No missle will damage you.
-- Change client to another aircraft in mission editor as required.
-- Change fox parameters with F10 radio menu

-- Create a new missile trainer object.
fox=FOX:New()

-- Start missile trainer.
fox:Start()
MESSAGE:New( "FOX missile trainer started", 25, "INFO" ):ToAll():ToLog()
