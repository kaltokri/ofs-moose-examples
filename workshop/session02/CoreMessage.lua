-------------------------------------------------------------------------------
-- Simple examples of the MESSAGE class
-------------------------------------------------------------------------------
-- Shows this message with prefix INFO: to all players
MESSAGE:New( "Moose Framework loaded successfully", 25, "INFO" ):ToAll()

-- Shows the message to all RED players for 30 seconds
-- No prefix JTAC:, because no known category and deletes all prior messages
MESSAGE:New( "We need support.", 30, "JTAC", true ):ToRed()

-- You can define the message first and send it later
-- And send it to the log file, too.
local myMsg = MESSAGE:New( "JTAC: We need help. ASAP!" )
myMsg:ToRed()
myMsg:ToLog()

-- The same as ToBlue()
MESSAGE:New( "RED Players have won!", 30 ):ToCoalition( coalition.side.BLUE )
