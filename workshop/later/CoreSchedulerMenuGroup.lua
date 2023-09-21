-------------------------------------------------------------------------------
-- Simple example of the MENU_GROUP classes
-------------------------------------------------------------------------------
-- Example function
local function infoToBlue( text )
  MESSAGE:New( text, 25, "INFO" ):ToBlue()
end

SCHEDULER:New( nil,
  function()
    local MyGroup = GROUP:FindByName( "a10c2" )
    if MyGroup and MyGroup:IsAlive() then
      MESSAGE:New( "Menu for a-10c2 prepared/refreshed", 25, "INFO" ):ToBlue()
      MENU_GROUP_COMMAND:New( MyGroup, "Begin CAS", nil, infoToBlue, "A-10CII starting CAS" )
      MENU_GROUP_COMMAND:New( MyGroup, "RTB",        nil, infoToBlue, "A-10CII returning to base" )
    end
  end, {}, 10, 10 )

SCHEDULER:New( nil,
  function()
    local MyGroup = GROUP:FindByName( "f16c" )
    if MyGroup and MyGroup:IsAlive() then
      MESSAGE:New( "Menu for f-16c prepared/refreshed", 25, "INFO" ):ToBlue()
      MENU_GROUP_COMMAND:New( MyGroup, "Begin SEAD", nil, infoToBlue, "F-16C starting SEAD" )
      MENU_GROUP_COMMAND:New( MyGroup, "RTB",        nil, infoToBlue, "F-16C returning to base" )
    end
  end, {}, 10, 10 )

MESSAGE:New( "Moose Framework and Mission script loaded successfully", 25, "INFO" ):ToAll()
