local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabelMain = Instance.new("TextLabel")
local TextLabelSmiley = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0

TextLabelMain.Parent = Frame
TextLabelMain.Size = UDim2.new(1, 0, 0.5, 0)
TextLabelMain.Position = UDim2.new(0, 0, 0.2, 0)
TextLabelMain.BackgroundTransparency = 1
TextLabelMain.Text = "Slender lara r6 yakışmaz diye sildim scripti kanka"
TextLabelMain.TextColor3 = Color3.fromRGB(200, 0, 255)
TextLabelMain.TextScaled = true
TextLabelMain.Font = Enum.Font.Arcade

TextLabelSmiley.Parent = Frame
TextLabelSmiley.Size = UDim2.new(1, 0, 0.1, 0)
TextLabelSmiley.Position = UDim2.new(0, 0, 0.7, 0)
TextLabelSmiley.BackgroundTransparency = 1
TextLabelSmiley.Text = ":D"
TextLabelSmiley.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabelSmiley.TextScaled = true
TextLabelSmiley.Font = Enum.Font.Arcade
