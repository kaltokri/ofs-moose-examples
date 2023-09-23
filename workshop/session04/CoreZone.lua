
GroupInside = GROUP:FindByName( "Ground1" )

ZoneA = ZONE:New( "ZoneA" )
ZoneA:SmokeZone( SMOKECOLOR.White, 90 )

TIMER:New(
  function()
    if GroupInside:IsCompletelyInZone( ZoneA ) then
      GroupInside:MessageToAll( "Inside Zone A", 1 )
      GroupInside:GetUnit(1):SmokeRed()
    end
  end
):Start( 1, 1)
