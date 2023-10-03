-- Based on "CTLD-100 - Basic.miz"
-- Disable default menue
--_SETTINGS:SetPlayerMenuOff()

-- Side blue, group prefix Helicargo, alias for logging "Air Transport Blue"
local ctld_blue = CTLD:New(coalition.side.BLUE,{"Helicargo"},"Air Transport Blue")
ctld_blue.forcehoverload = false
ctld_blue:__Start(5)

-- Define loadable stuff. Menu name, table of group names, type and amount of crates
ctld_blue:AddTroopsCargo("Troops",{"TROOPS"},CTLD_CARGO.Enum.TROOPS,3)
ctld_blue:AddTroopsCargo("Anti-Air",{"AA","AA2"},CTLD_CARGO.Enum.TROOPS,4)
ctld_blue:AddCratesCargo("Humvee",{"Humvee"},CTLD_CARGO.Enum.VEHICLE,2)
ctld_blue:AddCratesCargo("Forward Ops Base",{"FOB"},CTLD_CARGO.Enum.FOB,4)
ctld_blue:AddCratesCargo("AAA",{"AAA"},CTLD_CARGO.Enum.VEHICLE,3)

-- Generate needed zone types
-- Note: Since there are no blue flares, this will be a white flare when requested.
ctld_blue:AddCTLDZone("Loadzone",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
ctld_blue:AddCTLDZone("Dropzone",CTLD.CargoZoneType.DROP,SMOKECOLOR.Red,true,true)
ctld_blue:AddCTLDZone("Movezone",CTLD.CargoZoneType.MOVE,SMOKECOLOR.Orange,false,false)
ctld_blue:AddCTLDZone("Movezone2",CTLD.CargoZoneType.MOVE,SMOKECOLOR.White,false,true)

-- Manipulate unit capabilities for testing purposes
ctld_blue:UnitCapabilities("SA342L", true, true, 8, 8)
ctld_blue:UnitCapabilities("Ka-50", true, true, 8, 8)
ctld_blue:UnitCapabilities("Ka-50_3", true, true, 8, 8)
