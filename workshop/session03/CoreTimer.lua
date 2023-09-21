local function msg( timerNo )
  MESSAGE:New( string.format("Timer No: %s (%s)", timerNo , timer.getTime() ) ):ToAll():ToLog()
end
TIMER:New( msg, 1 ):Start(5)

local mytimer2 = TIMER:New(
  function( timerNo )
    MESSAGE:New( string.format("Timer No: %s (%s)", timerNo , timer.getTime() ) ):ToAll():ToLog()
  end , 2
)

mytimer2:Start(3, 2.0, 10) -- After 3 sec, then every 2.0 sec for 10 sec.

local mytimer3 = TIMER:New( msg, 3 ) -- After 25.5 sec, every 2.5 sec 4 times
mytimer3:SetMaxFunctionCalls(4):Start(25.5, 2.5)

MESSAGE:New( "Script loaded successfully" ):ToAll():ToLog()
