-------------------------------------------------------------------------------
-- Simple example of the Core.Scheduler classes
-------------------------------------------------------------------------------
local function msg()
  local myDrone = GROUP:FindByName( "Drone1" )
  local agl = math.floor( myDrone:GetAltitude( true ) )
  local msl = math.floor( myDrone:GetAltitude( false ) )
  local fuel = math.floor( myDrone:GetFuel() * 100 )
  local dhg = math.floor( myDrone:GetHeading() )
  local ias = math.floor( myDrone:GetAirspeedIndicated() )
  local tas = math.floor( myDrone:GetAirspeedTrue() )
  MESSAGE:New( "Drone data: AGL=" .. agl .. "m MSL=" .. msl .. "m FUEL=" .. fuel ..
    "% HEAD=" .. dhg .. "° IAS=" .. ias .. "m/s TAS=" .. tas .."m/s", 10, "INFO" ):ToBlue()
end

SCHEDULER:New( nil, msg, {}, 2, 5 )
MESSAGE:New( "Script loaded successfully", 25, "INFO" ):ToAll()
