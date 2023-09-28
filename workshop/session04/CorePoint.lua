Zone = ZONE:New( "ZoneScenery" )
Zone:Scan( Object.Category.SCENERY )

for SceneryTypeName, SceneryData in pairs( Zone:GetScannedScenery() ) do
  for SceneryName, ScenObj in pairs( SceneryData ) do
    -- Small TriggerZone at Kobuletti Tower (size 16). Just move it to another Scenery Object.
    MESSAGE:New( "Destroy static target LLDMS: " .. ScenObj:GetCoordinate():ToStringLLDMS() ):ToAll():ToLog()
  end
end

Apc = UNIT:FindByName( "APC" )

TIMER:New(
    function()
        MESSAGE:New( "Destroy moving target MGRS: " .. Apc:GetCoordinate():ToStringMGRS() ):ToAll():ToLog()
    end
):Start(5, 5)
