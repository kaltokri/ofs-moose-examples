-------------------------------------------------------------------------------
-- Simple example of the Core.Scheduler classes
-------------------------------------------------------------------------------
local function msg()
  MESSAGE:New( "Script loaded 10 seconds ago", 25, "INFO" ):ToAll()
end

SCHEDULER:New( nil, msg, {}, 10 )

SCHEDULER:New( nil,
  function()
    MESSAGE:New( "Script loaded 20 seconds ago", 25, "INFO" ):ToAll()
  end,
{}, 20 )

MESSAGE:New( "Script loaded successfully", 25, "INFO" ):ToAll()
