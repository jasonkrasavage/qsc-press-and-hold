-- UI colors
Clear    = {0,0,0,0}
White    = {255,255,255}
Black    = {0,0,0}
Gray     = {105,105,105}
Red      = {223,0,36}
Blue     = {16,16,255}
LED      = {255,0,0}
LEDOff   = {124,0,0}
Faders   = {124,124,124}
Meters   = {110,198,241}
GBGray   = {230,230,230}
BoldText = {27,33,43}
MainText = {51,51,51}

local y = 0

-- Header
table.insert(graphics,{
  Type          = "GroupBox",
  Fill          = GBGray,
  CornerRadius  = 0,
  StrokeWidth   = 0,
  Position      = {0, 0},
  Size          = {482,58}
})
table.insert(graphics,{
  Type          = "Label",
  Text          = "Press & Hold w/ Gauge Fill",
  HTextAlign    = "Center",
  VTextAlign    = "Center",
  Fill          = Clear,
  Font          = "Roboto",
  FontStyle     = "Bold Italic",
  FontColor     = BoldText,
  FontSize      = 24,
  Position      = {0,0},
  Size          = {482,58}
})
y = y + 59

--Labels
table.insert(graphics,{
  Type          = "Label",
  Text          = "Setup",
  HTextAlign    = "Left",
  Fill          = Clear,
  Font          = "Roboto",
  FontStyle     = "Bold",
  FontColor     = BoldText,
  FontSize      = 18,
  Position      = {6, y},
  Size          = {150,22}
})
y = y + 23

table.insert(graphics,{
  Type          = "GroupBox",
  Fill          = GBGray,
  CornerRadius  = 0,
  StrokeWidth   = 0,
  Position      = {6, y},
  Size          = {463,80}
})
y = y + 10
table.insert(graphics,{
  Type          = "Label",
  Text          = "Hold Time",
  Fill          = Clear,
  HTextAlign    = "Right",
  Font          = "Roboto",
  FontColor     = MainText,
  FontSize      = 14,
  Position      = {10, y},
  Size          = {83,18}
})
table.insert(graphics,{
  Type          = "Label",
  Text          = "Button Width",
  Fill          = Clear,
  HTextAlign    = "Right",
  Font          = "Roboto",
  FontColor     = MainText,
  FontSize      = 14,
  Position      = {147, y},
  Size          = {95,18}
})
table.insert(graphics,{
  Type          = "Label",
  Text          = "BG Color",
  Fill          = Clear,
  HTextAlign    = "Right",
  Font          = "Roboto",
  FontColor     = MainText,
  FontSize      = 14,
  Position      = {304, y},
  Size          = {95,18}
})
layout["HoldTime"] = {
  PrettyName    = "Setup~Hold Time",
  Style         = "Text",
  TextBoxStyle  = "Normal",
  Fill          = White,
  HTextAlign    = "Center",
  Position      = {102, y},
  Size          = {40,18}
}
layout["ButtonWidth"] = {
  PrettyName    = "Setup~Button Width",
  Style         = "Text",
  TextBoxStyle  = "Normal",
  Fill          = White,
  HTextAlign    = "Center",
  Position      = {253, y},
  Size          = {40,18}
}
layout["BackgroundColor"] = {
  PrettyName    = "Setup~BG Color",
  HTextAlign    = "Center",
  Position      = {410, y},
  Size          = {40,18}
}
y = y + 23
table.insert(graphics,{
  Type          = "Label",
  Text          = "Pulse Time",
  Fill          = Clear,
  HTextAlign    = "Right",
  Font          = "Roboto",
  FontColor     = MainText,
  FontSize      = 14,
  Position      = {10, y},
  Size          = {83,18}
})
table.insert(graphics,{
  Type          = "Label",
  Text          = "Button Height",
  Fill          = Clear,
  HTextAlign    = "Right",
  Font          = "Roboto",
  FontColor     = MainText,
  FontSize      = 14,
  Position      = {147, y},
  Size          = {95,18}
})
table.insert(graphics,{
  Type          = "Label",
  Text          = "Fill Color",
  Fill          = Clear,
  HTextAlign    = "Right",
  Font          = "Roboto",
  FontColor     = MainText,
  FontSize      = 14,
  Position      = {304, y},
  Size          = {95,18}
})
layout["PulseTime"] = {
  PrettyName    = "Setup~Pulse Time",
  Style         = "Text",
  TextBoxStyle  = "Normal",
  Fill          = White,
  HTextAlign    = "Center",
  Position      = {102, y},
  Size          = {40,18}
}
layout["ButtonHeight"] = {
  PrettyName    = "Setup~Button Height",
  Style         = "Text",
  TextBoxStyle  = "Normal",
  Fill          = White,
  HTextAlign    = "Center",
  Position      = {253, y},
  Size          = {40,18}
}
layout["FillColor"] = {
  PrettyName    = "Setup~Fill Color",
  HTextAlign    = "Center",
  Position      = {410, y},
  Size          = {40,18}
}
y = y + 23
table.insert(graphics,{
  Type          = "Label",
  Text          = "Is Vertical?",
  Fill          = Clear,
  HTextAlign    = "Right",
  Font          = "Roboto",
  FontColor     = MainText,
  FontSize      = 14,
  Position      = {10, y},
  Size          = {83,18}
})
table.insert(graphics,{
  Type          = "Label",
  Text          = "Stroke Color",
  Fill          = Clear,
  HTextAlign    = "Right",
  Font          = "Roboto",
  FontColor     = MainText,
  FontSize      = 14,
  Position      = {304, y},
  Size          = {95,18}
})
layout["IsVertical"] = {
  PrettyName    = "Setup~Is Vertical?",
  ButtonStyle    = "Toggle",
  Position      = {102, y},
  Size          = {40,18}
}
layout["StrokeColor"] = {
  PrettyName    = "Setup~Stroke Color",
  HTextAlign    = "Center",
  Position      = {410, y},
  Size          = {40,18}
}
-- Background
table.insert(graphics,{
  Type          = "GroupBox",
  Fill          = White,
  CornerRadius  = 0,
  StrokeWidth   = 0,
  Position      = {0, 0},
  Size          = {482,575},
  ZOrder        = -5000
})

y = y + 29
--Labels
table.insert(graphics,{
  Type          = "Label",
  Text          = "Buttons & Graphics",
  HTextAlign    = "Left",
  Fill          = Clear,
  Font          = "Roboto",
  FontStyle     = "Bold",
  FontColor     = BoldText,
  FontSize      = 18,
  Position      = {6, y},
  Size          = {160,22}
})
y = y + 23
table.insert(graphics,{
  Type          = "GroupBox",
  Fill          = GBGray,
  CornerRadius  = 0,
  StrokeWidth   = 0,
  Position      = {6, y},
  Size          = {463,178}
})
y = y + 10
table.insert(graphics,{
  Type          = "Label",
  Text          = "Buttons",
  HTextAlign    = "Left",
  Fill          = Clear,
  Font          = "Roboto",
  FontStyle     = "Regular",
  FontColor     = BoldText,
  FontSize      = 16,
  Position      = {22, y},
  Size          = {160,22}
})
y = y + 25
x = 22
for i = 1, 6 do
  layout["Buttons "..i] = {
    PrettyName    = "Buttons~Momentary Button "..i,
    ButtonStyle    = "Momentary",
    Position      = {x, y},
    Size          = {72,50}
  }
  x = x + 72
end
y = y + 51
table.insert(graphics,{
  Type          = "Label",
  Text          = "Graphics",
  HTextAlign    = "Left",
  Fill          = Clear,
  Font          = "Roboto",
  FontStyle     = "Regular",
  FontColor     = BoldText,
  FontSize      = 16,
  Position      = {22, y},
  Size          = {160,22}
})
y = y + 25
x = 22
for i = 1, 6 do
  layout["SvgGraphics "..i] = {
    PrettyName    = "Buttons~Graphic "..i,
    ButtonStyle    = "Trigger",
    Stroke        = 0,
    Padding       = 0,
    Margin        = 0,
    CornerRadius  = 0,
    Position      = {x, y},
    Size          = {72,50}
  }
  x = x + 72
end
y = y + 70
--Labels
table.insert(graphics,{
  Type          = "Label",
  Text          = "Feedback",
  HTextAlign    = "Left",
  Fill          = Clear,
  Font          = "Roboto",
  FontStyle     = "Bold",
  FontColor     = BoldText,
  FontSize      = 18,
  Position      = {6, y},
  Size          = {160,22}
})
y = y + 23
table.insert(graphics,{
  Type          = "GroupBox",
  Fill          = GBGray,
  CornerRadius  = 0,
  StrokeWidth   = 0,
  Position      = {6, y},
  Size          = {463,167}
})
y = y + 10
table.insert(graphics,{
  Type          = "Label",
  Text          = "Pressed",
  HTextAlign    = "Left",
  Fill          = Clear,
  Font          = "Roboto",
  FontStyle     = "Regular",
  FontColor     = BoldText,
  FontSize      = 16,
  Position      = {22, y},
  Size          = {160,22}
})
y = y + 35
x = 47
for i = 1, 6 do
  layout["Pressed "..i] = {
  PrettyName    = "Buttons~Pressed "..i,
  Style         = "Led",
  Position      = {x, y},
  Size          = {16,16},
  Margin        = 0
  }
  x = x + 72
end
y = y + 41
table.insert(graphics,{
  Type          = "Label",
  Text          = "Held",
  HTextAlign    = "Left",
  Fill          = Clear,
  Font          = "Roboto",
  FontStyle     = "Regular",
  FontColor     = BoldText,
  FontSize      = 16,
  Position      = {22, y},
  Size          = {160,22}
})
y = y + 35
x = 47
for i = 1, 6 do
  layout["Held "..i] = {
  PrettyName    = "Buttons~Held "..i,
  Style         = "Led",
  Position      = {x, y},
  Size          = {16,16},
  Margin        = 0
  }
  x = x + 72
end