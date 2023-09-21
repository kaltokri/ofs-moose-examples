local factory = STATIC:FindByName( "factory" )
local pilot =   STATIC:FindByName( "pilot" )

TIMER:New(
  function()
    factory:Explode( 2000, 5 )
    MESSAGE:New( "Factory will be destroy by C4 in 5 seconds!", 10 ):ToAll():ToLog()
  end
):Start(5)

TIMER:New(
  function()
    pilot:FlareYellow()
    MESSAGE:New( "A pilot needs rescue. Search the flares for his position!", 10 ):ToAll():ToLog()
  end
):Start(15, 5, 40)

MESSAGE:New( "Script loaded successfully" ):ToAll():ToLog()
