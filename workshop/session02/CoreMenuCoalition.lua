-------------------------------------------------------------------------------
-- Simple example of the MENU_COALITION classes
-------------------------------------------------------------------------------
-- Example function
local function execMenuCmd( side )
  MESSAGE:New( "The " .. side .. " side will start their attack phase!", 25, "INFO" ):ToAll()
end

local menuRed = MENU_COALITION:New( coalition.side.RED, "Mission phases" )
MENU_COALITION_COMMAND:New( coalition.side.RED, "Start attack", menuRed , execMenuCmd, "red" )

local menuBlue = MENU_COALITION:New( coalition.side.BLUE, "Mission phases" )
MENU_COALITION_COMMAND:New( coalition.side.BLUE, "Start counter attack", nil , execMenuCmd, "blue" )

MESSAGE:New( "Mission script loaded successfully", 25, "INFO" ):ToAll()
