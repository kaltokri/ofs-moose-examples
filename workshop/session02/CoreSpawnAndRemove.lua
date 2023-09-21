-------------------------------------------------------------------------------
-- Simple example of the SPAWN classes
-------------------------------------------------------------------------------
Luv = nil

local function spawnIt()
  Luv = SPAWN:New( 'Ground1' ):Spawn()
  MESSAGE:New( "LUV spawed", 25, "INFO" ):ToAll()
end

local function removeIt()
  Luv:Destroy()
  MESSAGE:New( "LUV removed", 25, "INFO" ):ToAll()
end

MENU_MISSION_COMMAND:New( "Spawn unit", nil, spawnIt )
MENU_MISSION_COMMAND:New( "Remove unit", nil, removeIt )

MESSAGE:New( "Mission script loaded successfully", 25, "INFO" ):ToAll()
