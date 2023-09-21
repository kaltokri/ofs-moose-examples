-------------------------------------------------------------------------------
-- Simple example of the MENU_MISSION class
-------------------------------------------------------------------------------
-- Example function
local function execMenuCmd( name )
  MESSAGE:New( "Menu entry " .. name .. " selected", 25, "INFO" ):ToAll()
end

local MenuTop = MENU_MISSION:New( "Menu for all players" )
local MenuSub1 = MENU_MISSION:New( "Menu Selection 1", MenuTop )
MENU_MISSION_COMMAND:New( "Cmd1", MenuSub1, execMenuCmd, "Cmd1" )
MENU_MISSION_COMMAND:New( "Cmd2", MenuSub1, execMenuCmd, "Cmd2" )

BASE:I("Moose Framework and Mission script loaded successfully")
MESSAGE:New( "Moose Framework and Mission script loaded successfully", 25, "INFO" ):ToAll()
