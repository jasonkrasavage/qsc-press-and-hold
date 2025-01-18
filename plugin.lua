
--Pluging Created by Jason Krasavage

-- Information block for the plugin
--[[ #include "info.lua" ]]

-- Define the color of the plugin object in the design
function GetColor(props)
  return { 0, 87, 150 }
end

-- The name that will initially display when dragged into a design
function GetPrettyName(props)
  return "Press and Hold w/ Gauge Fill " .. PluginInfo.BuildVersion
end

function GetProperties()
  local props = {}
  --[[ #include "properties.lua" ]]
  return props
end

-- Defines the Controls used within the plugin
function GetControls(props)
  local controls = {}
  --[[ #include "controls.lua" ]]
  return controls
end

--Layout of controls and graphics for the plugin UI to display
function GetControlLayout(props)
  local layout = {}
  local graphics = {}
  --[[ #include "layout.lua" ]]
  return layout, graphics
end

--Start event based logic
if Controls then
  --[[ #include "runtime.lua" ]]
end
