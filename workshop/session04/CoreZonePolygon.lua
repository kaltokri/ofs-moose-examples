-- Modified version of "ZON-510 - ZONE_POLYGON declared in ME" example mission
Mover = GROUP:FindByName( "Mover" )

PolygonZone = ZONE_POLYGON:FindByName( "PolygonA" )
PolygonZone:SmokeZone( SMOKECOLOR.White, 20 )

TIMER:New(
  function()
    Mover:MessageToAll( ( Mover:IsCompletelyInZone( PolygonZone ) ) and "Inside PolygonA" or "Outside PolygonA", 1 )
    if Mover:IsCompletelyInZone( PolygonZone ) then
      Mover:GetUnit(1):SmokeRed()
    end
  end
):Start(0, 1)
