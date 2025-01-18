table.insert(controls,{
  Name          = "HoldTime",
  ControlType   = "Knob",
  ControlUnit   = "Float",
  Min           = 1,
  Max           = 60,
  UserPin       = true,
  PinStyle      = "Input",
  Count         = 1
})
table.insert(controls,{
  Name          = "PulseTime",
  ControlType   = "Knob",
  ControlUnit   = "Float",
  Min           = 1,
  Max           = 6,
  UserPin       = true,
  PinStyle      = "Input",
  Count         = 1
})
table.insert(controls,{
  Name          = "ButtonWidth",
  ControlType   = "Knob",
  ControlUnit   = "Integer",
  Min           = 1,
  Max           = 2000,
  UserPin       = true,
  PinStyle      = "Input",
  Count         = 1
})
table.insert(controls,{
  Name          = "ButtonHeight",
  ControlType   = "Knob",
  ControlUnit   = "Integer",
  Min           = 1,
  Max           = 2000,
  UserPin       = true,
  PinStyle      = "Input",
  Count         = 1
})
table.insert(controls, {
  Name = "IsVertical",
  ControlType = "Button",
  ButtonType = "Toggle",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(controls, {
  Name = "BackgroundColor",
  ControlType = "Text",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(controls, {
  Name = "FillColor",
  ControlType = "Text",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(controls, {
  Name = "StrokeColor",
  ControlType = "Text",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(controls, {
  Name = "Buttons",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 6,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(controls, {
  Name = "SvgGraphics",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 6,
  UserPin = false,
  PinStyle = "None"
})
table.insert(controls,{
  Name          = "Pressed",
  ControlType   = "Indicator",
  IndicatorType = "LED",
  PinStyle      = "Output",
  UserPin       = true,
  Count         = 6
})
table.insert(controls,{
  Name          = "Held",
  ControlType   = "Indicator",
  IndicatorType = "LED",
  PinStyle      = "Output",
  UserPin       = true,
  Count         = 6
})
