-- Modified version of "ZON-300 - Unit Zone" example mission
Apc = GROUP:FindByName( "APC" )
Truck = UNIT:FindByName( "TruckWithMovingZone" )
MovingZone = ZONE_UNIT:New( "MovingZone", Truck, 100 )

SCHEDULER:New( nil,
  function()
    Apc:MessageToAll( ( Apc:IsCompletelyInZone( MovingZone ) ) and "Inside Zone" or "Outside Zone", 1 )
    if Apc:IsCompletelyInZone( MovingZone ) then
      Apc:GetUnit(1):SmokeRed()
    end
  end, {}, 0, 1
)

SCHEDULER:New( nil,
  function()
    MovingZone:FlareZone( FLARECOLOR.White, 90, 60 ) -- Number Points, Azimuth
  end, {}, 0, 5
)
