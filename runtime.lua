--SVG LOGIC
rapidjson = require("rapidjson")
EzSVG = require "EzSVG"
local FillDirection = ""
local CornerRadius = 0
local CurrentTimer = nil
local TimeElapsed = 0

if Controls.IsVertical.Boolean then 
  FillDirection = "vertical"
else
  FillDirection = "horizontal"
end

Controls.IsVertical.EventHandler = function()
  if Controls.IsVertical.Boolean then 
    FillDirection = "vertical"
  else
    FillDirection = "horizontal"
  end
end

function draw(percentage)
  local docWidth = Controls.ButtonWidth.Value
  local docHeight = Controls.ButtonHeight.Value
  local doc = EzSVG.Document(docWidth, docHeight)
  
  local padding = 0
  local barWidth = docWidth - (padding * 2)
  local barHeight = docHeight - (padding * 2)
  
  -- Draw the background (empty) rectangle
  local background = EzSVG.Rect(
    padding,
    padding,
    barWidth,
    barHeight,
    CornerRadius,
    CornerRadius
  ):setStyle({
    fill = (Controls.BackgroundColor.String ~= "" and Controls.BackgroundColor.String) or "#E0E0E0",
    stroke = (Controls.StrokeColor.String ~= "" and Controls.StrokeColor.String) or "#808080",
    stroke_width = 2
  })
  doc:add(background)
  
  -- Draw the fill rectangle (progress)
  if percentage > 0 then
    local fillWidth = barWidth
    local fillHeight = barHeight
    local fillX = padding
    local fillY = padding
    
    if FillDirection == "horizontal" then
      fillWidth = barWidth * percentage
    else -- vertical
      fillHeight = barHeight * percentage
      fillY = padding + (barHeight * (1 - percentage))
    end
    
    local fill = EzSVG.Rect(
      fillX,
      fillY,
      fillWidth,
      fillHeight,
      CornerRadius,
      CornerRadius
    ):setStyle({
      fill = (Controls.FillColor.String ~= "" and Controls.FillColor.String) or "#4CAF50",
      fill_opacity = 1,
      stroke = "none"
    })
    doc:add(fill)
  end
  
  return doc:toString()
end

function updateGauge(control)
  TimeElapsed = TimeElapsed + 0.05  -- Increment by 50ms
  local percentage = math.min(TimeElapsed / GetHoldTime(), 1.0)
  
  control.Legend = rapidjson.encode({
    DrawChrome = false,
    IconData = Crypto.Base64Encode(draw(percentage))
  })
  
  if percentage >= 1.0 then
    stopGauge(control)
  end
end

function startGauge(control)
  stopGauge(control)
  TimeElapsed = 0
  CurrentTimer = Timer.New()
  CurrentTimer.EventHandler = function() updateGauge(control) end
  CurrentTimer:Start(0.05) -- Update every 50ms
end

function stopGauge(control)
  if CurrentTimer then
    CurrentTimer:Stop()
    CurrentTimer = nil
  end
  TimeElapsed = 0
  control.Legend = rapidjson.encode({
    DrawChrome = false,
    IconData = Crypto.Base64Encode(draw(0))
  })
end

-- PRESS AND HOLD LOGIC

local press = {}
local held = {}
local pressed = {}

for i = 1, 6 do
  table.insert(press, Controls.Buttons[i])
  table.insert(held, Controls.Held[i])
  table.insert(pressed, Controls.Pressed[i])
end


local busy = false
local timer = Timer.New()
local lastPressed = 0

-- Helpers
function GetPulseTime()
  if Controls.PulseTime.String ~= nil then
    return tonumber(Controls.PulseTime.String)
  else
    return 0.25
  end
end

function GetHoldTime()
  if Controls.HoldTime.Value ~= nil then
    return tonumber(Controls.HoldTime.String)
  else
    return 3
  end
end


--Events 
timer.EventHandler = function ()
  timer:Stop()
  busy = false
  held[lastPressed].Boolean = true
  Timer.CallAfter(function () held[lastPressed].Boolean = false end, GetPulseTime())
end

for i = 1, 6 do
  press[i].EventHandler = function (ctl)
    if ctl.Boolean == true then
      startGauge(Controls.SvgGraphics[i])
      busy = true
      lastPressed = i
      timer:Start(GetHoldTime())
    else
      stopGauge(Controls.SvgGraphics[i])
      if busy == true then
        busy = false
        timer:Stop()
        pressed[i].Boolean = true
        Timer.CallAfter(function () pressed[i].Boolean = false end, GetPulseTime())
      end
    end
  end
end