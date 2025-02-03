repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
local Players = game:GetService("Players")
local player = Players.LocalPlayer  
local userId = player.UserId
local content, isReady = Players:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
local Name = player.DisplayName
local TweenService = game:GetService("TweenService")
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Side = Instance.new("Frame")
local Settings_2 = Instance.new("Frame")
local Settings = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local home = Instance.new("ImageButton")
local Executor = Instance.new("ImageButton")
local Console = Instance.new("ImageButton")
local Credits = Instance.new("ImageButton")
local Setting = Instance.new("ImageButton")  
local Top = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local Home = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local user = Instance.new("Frame")
local User = Instance.new("ImageLabel")
local UserText = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Frame1 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local Frame2 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local Console_2 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_8 = Instance.new("TextLabel")
local Executor_2 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Code = Instance.new("TextBox")
local Clear = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local UICorner_11 = Instance.new("UICorner")
local Paste = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Credits_2 = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local TextLabel_9 = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local TextLabel_10 = Instance.new("TextLabel")
local UICorner_14 = Instance.new("UICorner")
local TextLabel_11 = Instance.new("TextLabel")
local UICorner_15 = Instance.new("UICorner")
local TextLabel_12 = Instance.new("TextLabel")
local TextLabel_13 = Instance.new("TextLabel")
local UICorner_16 = Instance.new("UICorner")
local TextLabel_14 = Instance.new("TextLabel")
local UICorner_17 = Instance.new("UICorner")
local OpenButton = Instance.new("ImageButton")
local UICorner_18 = Instance.new("UICorner")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
Main.BackgroundTransparency = 0.15
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.205, 0, -0.5, 0)
Main.Size = UDim2.new(0, 492, 0, 295)
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Main
Side.Name = "Side"
Side.Parent = Main
Side.BackgroundColor3 = Color3.fromRGB(30, 30, 30) 
Side.BackgroundTransparency = 1
Side.Size = UDim2.new(0, 50, 1, -40)
Side.Position = UDim2.new(0, 5, 0, 35)
local UICorner_2 = Instance.new("UICorner")
UICorner_2.CornerRadius = UDim.new(0, 8)
UICorner_2.Parent = Side
home.Name = "home"
home.Parent = Side
home.BackgroundTransparency = 1
home.Size = UDim2.new(0, 30, 0, 30)
home.Position = UDim2.new(0.1, 0, 0.05, 0)
home.Image = "rbxassetid://119897226376123"
Executor = home:Clone()
Executor.Name = "Executor"
Executor.Parent = Side
Executor.Position = UDim2.new(0.1, 0, 0.2, 0)
Executor.Image = "rbxassetid://110565107095653"
Console = home:Clone()
Console.Name = "Console"
Console.Parent = Side
Console.Position = UDim2.new(0.1, 0, 0.35, 0)
Console.Image = "http://www.roblox.com/asset/?id=119011453171150"
Credits = home:Clone()
Credits.Name = "Credits"
Credits.Parent = Side
Credits.Position = UDim2.new(0.1, 0, 0.5, 0)
Credits.Image = "rbxassetid://138073973227244"
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")
Settings_2.Name = "Settings"
Settings_2.Parent = Main
Settings_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Settings_2.BackgroundTransparency = 0.6
Settings_2.BorderSizePixel = 0
Settings_2.Position = UDim2.new(0.101707332, 0, 0.171977207, 0)
Settings_2.Size = UDim2.new(0, 433, 0, 236)
Settings_2.Visible = false
WalkSpeedBox = Instance.new("TextBox")
WalkSpeedBox.Parent = Settings_2
WalkSpeedBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
WalkSpeedBox.Size = UDim2.new(0, 160, 0, 30)
WalkSpeedBox.Position = UDim2.new(0.05, 0, 0.05, 0)
WalkSpeedBox.Font = Enum.Font.SourceSans
WalkSpeedBox.PlaceholderText = "Enter WalkSpeed"
WalkSpeedBox.Text = ""
WalkSpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
WalkSpeedBox.TextSize = 16
UICorner_Walk = Instance.new("UICorner")
UICorner_Walk.Parent = WalkSpeedBox
JumpPowerBox = Instance.new("TextBox")
JumpPowerBox.Parent = Settings_2
JumpPowerBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
JumpPowerBox.Size = UDim2.new(0, 160, 0, 30)
JumpPowerBox.Position = UDim2.new(0.55, 0, 0.05, 0)
JumpPowerBox.Font = Enum.Font.SourceSans
JumpPowerBox.PlaceholderText = "Enter JumpPower"
JumpPowerBox.Text = ""
JumpPowerBox.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpPowerBox.TextSize = 16
UICorner_Jump = Instance.new("UICorner")
UICorner_Jump.Parent = JumpPowerBox
local Line = Instance.new("Frame")
Line.Parent = Settings_2
Line.Size = UDim2.new(0, 2, 1, 0)
Line.Position = UDim2.new(0.5, -1, 0, 0)
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FPSButton = Instance.new("TextButton")
FPSButton.Parent = Settings_2
FPSButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
FPSButton.Size = UDim2.new(0, 160, 0, 30)
FPSButton.Position = UDim2.new(0.05, 0, 0.25, 0)
FPSButton.Font = Enum.Font.SourceSansBold
FPSButton.Text = "FPS: OFF"
FPSButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSButton.TextSize = 16
UICorner_FPS = Instance.new("UICorner")
UICorner_FPS.Parent = FPSButton
local OpenButton = Instance.new("ImageButton")
OpenButton.Name = "Open Button"
OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.BorderSizePixel = 0
OpenButton.Position = UDim2.new(0.472801805, 0, 0.0164237954 - 0.14, 0)  
OpenButton.Size = UDim2.new(0, 50, 0, 50)
OpenButton.Visible = true
OpenButton.Image = "rbxassetid://114936734174789" 
local UICorner_18 = Instance.new("UICorner")
UICorner_18.Parent = OpenButton
local shapeSelection = "Circle" 
local function updateButtonShape()
    if shapeSelection == "Circle" then
        UICorner_18.CornerRadius = UDim.new(1, 0) 
        OpenButton.Image = "rbxassetid://114936734174789" 
    elseif shapeSelection == "Square" then
        UICorner_18.CornerRadius = UDim.new(0, 10) 
        OpenButton.Image = "rbxassetid://114936734174789" 
    end
end
local ShapeButton = Instance.new("TextButton")
ShapeButton.Parent = Settings_2
ShapeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ShapeButton.Size = UDim2.new(0, 160, 0, 30)
ShapeButton.Position = UDim2.new(0.55, 0, 0.25, 0) 
ShapeButton.Font = Enum.Font.SourceSans
ShapeButton.Text = "Circle  |  Square"
ShapeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ShapeButton.TextSize = 16
local UICorner_Shape = Instance.new("UICorner")
UICorner_Shape.Parent = ShapeButton
ShapeButton.MouseButton1Click:Connect(function()
    if shapeSelection == "Circle" then
        shapeSelection = "Square"
        ShapeButton.Text = "Square  |  Circle"  
    else
        shapeSelection = "Circle"
        ShapeButton.Text = "Circle  |  Square"  
    end
    updateButtonShape()  
end)
local fpsEnabled = false
local function setFPSCap(state)
    if state then
        settings().Rendering.QualityLevel = "Level01"
    else
        settings().Rendering.QualityLevel = "Level10"
    end
end
FPSButton.MouseButton1Click:Connect(function()
    fpsEnabled = not fpsEnabled
    FPSButton.Text = fpsEnabled and "FPS: ON" or "FPS: OFF"
    setFPSCap(fpsEnabled)
end)
updateButtonShape()
Settings.Name = "Settings"
Settings.Parent = Side
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.1, 0, 0.65, 0)  
Settings.Size = UDim2.new(0, 28, 0, 28)
Settings.Image = "http://www.roblox.com/asset/?id=17257771808"
Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Top.BackgroundTransparency = 1
Top.Size = UDim2.new(1, -10, 0, 35)
Top.Position = UDim2.new(0, 5, 0, 0)
local UICorner_3 = Instance.new("UICorner")
UICorner_3.CornerRadius = UDim.new(0, 8)
UICorner_3.Parent = Top
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = Top
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.07, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 228, 0, 35)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "FrostWare | Android"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Parent = Top
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0, -5, 0, -5)
ImageLabel.Size = UDim2.new(0, 45, 0, 45)
ImageLabel.Image = "rbxassetid://114936734174789"
local TextButton = Instance.new("TextButton")
TextButton.Parent = Top
TextButton.BackgroundTransparency = 1
TextButton.Position = UDim2.new(0.9, 0, 0, 0)
TextButton.Size = UDim2.new(0, 35, 0, 35)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 75, 75)
TextButton.TextSize = 22
Home.Name = "Home"
Home.Parent = Main
Home.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Home.BackgroundTransparency = 0.5
Home.Size = UDim2.new(1, -60, 1, -50)
Home.Position = UDim2.new(0, 55, 0, 40)
local UICorner_4 = Instance.new("UICorner")
UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = Home
local goalPosition = UDim2.new(0.205163598, 0, 0.0687371343, 0)
local startPosition = UDim2.new(0.205163598, 0, 1, 0) 
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = TweenService:Create(Main, tweenInfo, {Position = goalPosition})
Main.Position = startPosition  
tween:Play()
user.Name = "user"
user.Parent = Home
user.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
user.BackgroundTransparency = 0.6
user.BorderSizePixel = 0
user.Position = UDim2.new(-0.0002, 0, -0.0026, 0)
user.Size = UDim2.new(0, 220, 0, 75)
user.ZIndex = 2
local User = Instance.new("ImageLabel")
User.Name = "User"
User.Parent = user
User.BackgroundTransparency = 1.0
User.Position = UDim2.new(0.058, 0, 0.094, 0)
User.Size = UDim2.new(0, 47, 0, 59)
User.ZIndex = 2
User.Image = content
local UserText = Instance.new("TextLabel")
UserText.Name = "UserText"
UserText.Parent = User
UserText.BackgroundTransparency = 1.0
UserText.Position = UDim2.new(1.116, 0, 0.213, 0)
UserText.Size = UDim2.new(0, 155, 0, 35)
UserText.ZIndex = 2
UserText.Font = Enum.Font.Gotham
UserText.Text = "  Welcome " .. Name .. " Thanks for using FrostWare!"
UserText.TextColor3 = Color3.fromRGB(255, 255, 255)
UserText.TextSize = 12
UserText.TextWrapped = true
local UICorner_5 = Instance.new("UICorner")
UICorner_5.Parent = User
local Frame = Instance.new("Frame")
Frame.Parent = user
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.4
Frame.Position = UDim2.new(0.014, 0, 0.05, 0)
Frame.Size = UDim2.new(0, 67, 0, 67)
local UICorner_6 = Instance.new("UICorner")
UICorner_6.CornerRadius = UDim.new(1, 0)
UICorner_6.Parent = Frame
local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.Parent = Home
Frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BackgroundTransparency = 0.6
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(-0.0002, 0, 0.313, 0)
Frame1.Size = UDim2.new(0, 220, 0, 162)
Frame1.ZIndex = 2
local TextLabel_2 = Instance.new("TextLabel")
TextLabel_2.Parent = Frame1
TextLabel_2.BackgroundTransparency = 1.0
TextLabel_2.Position = UDim2.new(0.008, 0, 0.79, 0)
TextLabel_2.Size = UDim2.new(0, 100, 0, 50)
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = "Version: 2.4"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14
local Frame2 = Instance.new("Frame")
Frame2.Name = "Frame2"
Frame2.Parent = Home
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.6
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.509, 0, -0.0026, 0)
Frame2.Size = UDim2.new(0, 212, 0, 236)
Frame2.ZIndex = 2
local function createTextLabel(parent, position, size, text, textSize)
    local label = Instance.new("TextLabel")
    label.Parent = parent
    label.BackgroundTransparency = 1.0
    label.Position = position
    label.Size = size
    label.Font = Enum.Font.FredokaOne
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextSize = textSize
    label.TextXAlignment = Enum.TextXAlignment.Left
    return label
end
createTextLabel(Frame2, UDim2.new(0.02, 0, 0.062, 0), UDim2.new(0, 116, 0, 50), "Features:", 20)
createTextLabel(Frame2, UDim2.new(0.02, 0, 0.232, 0), UDim2.new(0, 208, 0, 28), "Executor with 100% UNC", 20) 
createTextLabel(Frame2, UDim2.new(0.02, 0, 0.38, 0), UDim2.new(0, 208, 0, 28), "User friendly interface", 20) 
createTextLabel(Frame2, UDim2.new(0.02, 0, 0.547, 0), UDim2.new(0, 208, 0, 28), "Smooth UI", 20) 
local FPSLabel = createTextLabel(Frame2, UDim2.new(0.02, 0, 0.698, 0), UDim2.new(0, 208, 0, 28), "FPS: ", 15) 
local TimeLabel = createTextLabel(Frame2, UDim2.new(0.02, 0, 0.8, 0), UDim2.new(0, 208, 0, 28), "TIME: ", 15) 
local RunService = game:GetService("RunService")
local lastTick = tick()
local frameCount = 0
RunService.RenderStepped:Connect(function()
    frameCount = frameCount + 1
    local currentTick = tick()
    if currentTick - lastTick >= 1 then
        FPSLabel.Text = "FPS: " .. frameCount
        frameCount = 0
        lastTick = currentTick
    end
end)
local function UpdateLocalTime()
    local date = os.date("*t")
    local hour = date.hour % 24
    local ampm = hour < 12 and "AM" or "PM"
    local formattedTime = string.format("%02i:%02i:%02i %s", ((hour - 1) % 12) + 1, date.min, date.sec, ampm)
    local formattedDate = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
    local LocalizationService = game:GetService("LocalizationService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local regionCode = "Unknown"
    local success, code = pcall(function()
        return LocalizationService:GetCountryRegionForPlayerAsync(player)
    end)
    if success then
        regionCode = code
    end
    TimeLabel.Text = formattedDate .. " - " .. formattedTime .. " [ " .. regionCode .. " ]"
end
spawn(function()
    while true do
        UpdateLocalTime()
        game:GetService("RunService").RenderStepped:Wait()
    end
end)
local line = Instance.new("Frame")
line.Parent = Frame2
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BackgroundTransparency = 0
line.Size = UDim2.new(0, 208, 0, 2)  
line.Position = UDim2.new(0.02, 0, 0.698, 0)  
line.ZIndex = 2
local DexExplorerButton = Instance.new("TextButton")
DexExplorerButton.Name = "DexExplorerButton"
DexExplorerButton.Parent = Frame1
DexExplorerButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
DexExplorerButton.BackgroundTransparency = 0.400
DexExplorerButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
DexExplorerButton.BorderSizePixel = 0
DexExplorerButton.Position = UDim2.new(0.05, 0, 0.1, 0) 
DexExplorerButton.Size = UDim2.new(0, 80, 0, 15) 
DexExplorerButton.Text = "Dex Explorer"
DexExplorerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DexExplorerButton.TextSize = 13 
DexExplorerButton.Font = Enum.Font.Bangers 
DexExplorerButton.TextXAlignment = Enum.TextXAlignment.Left 
DexExplorerButton.ZIndex = 3
UICorner_7.Parent = DexExplorerButton
DexExplorerButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/DEX-Explorer/refs/heads/main/Mobile.lua"))()
end)
local NamelessAdminButton = Instance.new("TextButton")
NamelessAdminButton.Name = "NamelessAdminButton"
NamelessAdminButton.Parent = Frame1
NamelessAdminButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
NamelessAdminButton.BackgroundTransparency = 0.400
NamelessAdminButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NamelessAdminButton.BorderSizePixel = 0
NamelessAdminButton.Position = UDim2.new(0.05, 0, 0.3, 0) 
NamelessAdminButton.Size = UDim2.new(0, 80, 0, 15) 
NamelessAdminButton.Text = "NameLess Admin"
NamelessAdminButton.TextColor3 = Color3.fromRGB(255, 255, 255)
NamelessAdminButton.TextSize = 13 
NamelessAdminButton.Font = Enum.Font.Bangers 
NamelessAdminButton.TextXAlignment = Enum.TextXAlignment.Left 
NamelessAdminButton.ZIndex = 3
UICorner_8.Parent = NamelessAdminButton
NamelessAdminButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
end)
local InfinityYieldButton = Instance.new("TextButton")
InfinityYieldButton.Name = "InfinityYieldButton"
InfinityYieldButton.Parent = Frame1
InfinityYieldButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
InfinityYieldButton.BackgroundTransparency = 0.400
InfinityYieldButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfinityYieldButton.BorderSizePixel = 0
InfinityYieldButton.Position = UDim2.new(0.05, 0, 0.5, 0) 
InfinityYieldButton.Size = UDim2.new(0, 80, 0, 15) 
InfinityYieldButton.Text = "Infinity Yield"
InfinityYieldButton.TextColor3 = Color3.fromRGB(255, 255, 255)
InfinityYieldButton.TextSize = 13 
InfinityYieldButton.Font = Enum.Font.Bangers 
InfinityYieldButton.TextXAlignment = Enum.TextXAlignment.Left 
InfinityYieldButton.ZIndex = 3
UICorner_9.Parent = InfinityYieldButton
InfinityYieldButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
local SimpleSpyButton = Instance.new("TextButton")
SimpleSpyButton.Name = "SimpleSpyButton"
SimpleSpyButton.Parent = Frame1
SimpleSpyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
SimpleSpyButton.BackgroundTransparency = 0.400
SimpleSpyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SimpleSpyButton.BorderSizePixel = 0
SimpleSpyButton.Position = UDim2.new(0.55, 0, 0.1, 0) 
SimpleSpyButton.Size = UDim2.new(0, 80, 0, 15) 
SimpleSpyButton.Text = "Simple Spy"
SimpleSpyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SimpleSpyButton.TextSize = 13 
SimpleSpyButton.Font = Enum.Font.Bangers 
SimpleSpyButton.TextXAlignment = Enum.TextXAlignment.Right 
SimpleSpyButton.ZIndex = 3
UICorner_10.Parent = SimpleSpyButton
SimpleSpyButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/SimpleSpy/refs/heads/main/Mobile.lua"))()
end)
local VerticalLine = Instance.new("Frame")
VerticalLine.Name = "VerticalLine"
VerticalLine.Parent = Frame1
VerticalLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
VerticalLine.Position = UDim2.new(0.50, 0, 0.1, 0) 
VerticalLine.Size = UDim2.new(0, 2, 0, 150) 
VerticalLine.ZIndex = 2
local Console_2 = Instance.new("Frame")
Console_2.Name = "Console"
Console_2.Parent = Main
Console_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Console_2.BackgroundTransparency = 0.6
Console_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Console_2.BorderSizePixel = 0
Console_2.Position = UDim2.new(0.101707332, 0, 0.171977207, 0)
Console_2.Size = UDim2.new(0, 433, 0, 236)
Console_2.Visible = false
local UICorner_7 = Instance.new("UICorner")
UICorner_7.Parent = Console_2
local ConsoleBox = Instance.new("TextBox")
ConsoleBox.Parent = Console_2
ConsoleBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConsoleBox.BackgroundTransparency = 0.2
ConsoleBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConsoleBox.BorderSizePixel = 0
ConsoleBox.Position = UDim2.new(0.05, 0, 0.1, 0)
ConsoleBox.Size = UDim2.new(0.9, 0, 0.65, 0)
ConsoleBox.Font = Enum.Font.Code
ConsoleBox.Text = ""
ConsoleBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleBox.TextSize = 14
ConsoleBox.TextWrapped = true
ConsoleBox.TextXAlignment = Enum.TextXAlignment.Left
ConsoleBox.TextYAlignment = Enum.TextYAlignment.Top
ConsoleBox.MultiLine = true
ConsoleBox.ClearTextOnFocus = false
ConsoleBox.RichText = true  
local UICorner_Console = Instance.new("UICorner")
UICorner_Console.Parent = ConsoleBox
local buttons = {}
local buttonWidth = 0.14  
local spacing = 0.03  
local totalWidth = 6 * buttonWidth + 5 * spacing  
local function createButton(name, text, posX)
    local button = Instance.new("TextButton")
    button.Parent = Console_2
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.BorderSizePixel = 0
    button.Position = UDim2.new(posX / totalWidth, 0, 0.8, 0)  
    button.Size = UDim2.new(buttonWidth / 0.9, 0, 0.15, 0)  
    button.Font = Enum.Font.SourceSans
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 16
    local UICorner = Instance.new("UICorner")
    UICorner.Parent = button
    buttons[name] = button
end
createButton("Warn", "Warn", 0)
createButton("Error", "Error", 1 * (buttonWidth + spacing))
createButton("Output", "Output", 2 * (buttonWidth + spacing))
createButton("All", "All", 3 * (buttonWidth + spacing))
createButton("Copy", "Copy", 4 * (buttonWidth + spacing))
createButton("Clear", "Clear", 5 * (buttonWidth + spacing) + 0.006)  
local logs = {}
local filterType = "All"
local function updateConsole()
    ConsoleBox.Text = ""
    for _, log in ipairs(logs) do
        if filterType == "All" or log.type == filterType then
            ConsoleBox.Text ..= (ConsoleBox.Text == "" and "" or "\n") .. log.text
        end
    end
end
local function appendConsole(msg, msgType)
    local prefix = "[INFO]:"
    local logType = "Output"
    local prefixColor = "rgb(255, 255, 255)"  
    if msgType == Enum.MessageType.MessageWarning then
        prefix = "[WARNING]:"
        logType = "Warn"
        prefixColor = "rgb(255, 255, 0)"  
    elseif msgType == Enum.MessageType.MessageError then
        prefix = "[ERROR]:"
        logType = "Error"
        prefixColor = "rgb(255, 0, 0)"  
    end
    local formattedMsg = string.format('<font color="%s">%s</font> %s', prefixColor, prefix, msg)
    table.insert(logs, { text = formattedMsg, type = logType })
    updateConsole()
end
buttons.Warn.MouseButton1Click:Connect(function()
    filterType = "Warn"
    updateConsole()
end)
buttons.Error.MouseButton1Click:Connect(function()
    filterType = "Error"
    updateConsole()
end)
buttons.Output.MouseButton1Click:Connect(function()
    filterType = "Output"
    updateConsole()
end)
buttons.All.MouseButton1Click:Connect(function()
    filterType = "All"
    updateConsole()
end)
buttons.Copy.MouseButton1Click:Connect(function()
    setclipboard(ConsoleBox.Text)
end)
buttons.Clear.MouseButton1Click:Connect(function()
    logs = {}
    updateConsole()
end)
game:GetService("LogService").MessageOut:Connect(appendConsole)
getgenv().rconsoleprint = function(msg)
    appendConsole(msg, Enum.MessageType.MessageOutput)
end
getgenv().rconsolewarn = function(msg)
    appendConsole(msg, Enum.MessageType.MessageWarning)
end
getgenv().rconsoleerror = function(msg)
    appendConsole(msg, Enum.MessageType.MessageError)
end
getgenv().rconsoleclear = function()
    logs = {}
    updateConsole()
end
local X = {}
X.Folder = "FW"
function X:SetFolder(folder)
    self.Folder = folder
    self:BuildFolderTree()
end
function X:BuildFolderTree()
    local paths = { self.Folder }
    for i = 1, #paths do
        local str = paths[i]
        if not isfolder(str) then
            makefolder(str)
        end
    end
    if not isfile(self.Folder .. "/Load.txt") then
        writefile(self.Folder .. "/Load.txt", "")
    end
end
X:BuildFolderTree()
function X:SaveFile(File)
    writefile(self.Folder .. "/Load.txt", File)
end
function X:GetSavedFile()
    if isfile(self.Folder .. "/Load.txt") then
        return readfile(self.Folder .. "/Load.txt")
    else
        return ""
    end
end
local Executor_2 = Instance.new("Frame")
Executor_2.Name = "Executor"
Executor_2.Parent = Main
Executor_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Executor_2.BackgroundTransparency = 0.600
Executor_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Executor_2.BorderSizePixel = 0
Executor_2.Position = UDim2.new(0.101626016, 0, 0.179661021, 0)
Executor_2.Size = UDim2.new(0, 433, 0, 233)
Executor_2.Visible = false
Executor_2.ClipsDescendants = true
local UICorner_8 = Instance.new("UICorner")
UICorner_8.Parent = Executor_2
local NumberLine = Instance.new("TextLabel")
NumberLine.Name = "NumberLine"
NumberLine.Parent = Executor_2
NumberLine.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
NumberLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumberLine.BorderSizePixel = 0
NumberLine.Position = UDim2.new(0.014, 0, 0.027, 0)
NumberLine.Size = UDim2.new(0, 30, 0, 160)
NumberLine.Font = Enum.Font.SourceSans
NumberLine.Text = "1"
NumberLine.TextColor3 = Color3.fromRGB(150, 150, 150)
NumberLine.TextSize = 12
NumberLine.TextXAlignment = Enum.TextXAlignment.Right
NumberLine.TextYAlignment = Enum.TextYAlignment.Top
NumberLine.TextWrapped = false
local Code = Instance.new("TextBox")
Code.Name = "Code"
Code.Parent = Executor_2
Code.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Code.BorderColor3 = Color3.fromRGB(0, 0, 0)
Code.BorderSizePixel = 0
Code.Position = UDim2.new(0.09, 0, 0.027, 0)
Code.Size = UDim2.new(0, 389, 0, 160)
Code.Font = Enum.Font.SourceSans
Code.PlaceholderColor3 = Color3.fromRGB(88, 88, 88)
Code.PlaceholderText = 'print("FrostWare 2.4")'
Code.Text = ""
Code.TextColor3 = Color3.fromRGB(255, 255, 255)
Code.TextSize = 12
Code.TextWrapped = true
Code.TextXAlignment = Enum.TextXAlignment.Left
Code.TextYAlignment = Enum.TextYAlignment.Top
Code.ClearTextOnFocus = false
Code.MultiLine = true
Code.TextTruncate = Enum.TextTruncate.AtEnd
local UICorner_9 = Instance.new("UICorner")
UICorner_9.Parent = Code
Code:GetPropertyChangedSignal("Text"):Connect(function()
    local lines = Code.Text:split("\n")
    local lineNumbers = ""
    local maxLines = 13 
    for i = 1, math.min(#lines, maxLines) do
        lineNumbers = lineNumbers .. i .. "\n"
    end
    if #lines > maxLines then
        lineNumbers = lineNumbers  
    end
    NumberLine.Text = lineNumbers
    NumberLine.Size = UDim2.new(0, 30, 0, math.min(#lines, maxLines) * 12)
end)
local function createButton(name, position, text, parent)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Parent = parent
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.BorderSizePixel = 0
    button.Position = position
    button.Size = UDim2.new(0, 65, 0, 25)
    button.Font = Enum.Font.SourceSans
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 12
    local UICorner = Instance.new("UICorner")
    UICorner.Parent = button
    return button
end
local buttonWidth = 65
local buttonSpacing = 8
local buttonHeight = 25
local numButtons = 6
local totalWidth = buttonWidth * numButtons + buttonSpacing * (numButtons - 1)
local startX = (Executor_2.Size.X.Offset - totalWidth) / 2
local Clear = createButton("Clear", UDim2.new(0, startX, 0.85, 0), "Clear", Executor_2)
local Execute = createButton("Execute", UDim2.new(0, startX + buttonWidth + buttonSpacing, 0.85, 0), "Execute", Executor_2)
local Paste = createButton("Paste", UDim2.new(0, startX + (buttonWidth + buttonSpacing) * 2, 0.85, 0), "Paste", Executor_2)
local ExecuteClipboard = createButton("ExecuteClipboard", UDim2.new(0, startX + (buttonWidth + buttonSpacing) * 3, 0.85, 0), "Exe Clipboard", Executor_2)
local AutoExe = createButton("Auto Exe", UDim2.new(0, startX + (buttonWidth + buttonSpacing) * 4, 0.85, 0), "Auto Exe", Executor_2)
local DeleteAutoExe = createButton("Delete Auto Exe", UDim2.new(0, startX + (buttonWidth + buttonSpacing) * 5, 0.85, 0), "Delete Auto Exe", Executor_2)
ExecuteClipboard.MouseButton1Click:Connect(function()
    local clipboardContent = getclipboard()
    loadstring(clipboardContent)()
end)
AutoExe.MouseButton1Click:Connect(function()
    local codeContent = Code.Text
    X:SaveFile(codeContent)
end)
DeleteAutoExe.MouseButton1Click:Connect(function()
    X:SaveFile("")
end)
local hasExecuted = false
local savedFile = X:GetSavedFile()
if savedFile and savedFile ~= "" and not hasExecuted then
    loadstring(savedFile)()
    hasExecuted = true
end
Credits_2.Name = "Credits"
Credits_2.Parent = Main
Credits_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits_2.BackgroundTransparency = 0.600
Credits_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits_2.BorderSizePixel = 0
Credits_2.Position = UDim2.new(0.101138234, 0, 0.171977416, 0)
Credits_2.Size = UDim2.new(0, 433, 0, 237)
Credits_2.Visible = false
UICorner_13.Parent = Credits_2
TextLabel_9.Parent = Credits_2
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0, 0, -0.0421940945, 0)
TextLabel_9.Size = UDim2.new(0, 150, 0, 50)
TextLabel_9.Font = Enum.Font.FredokaOne
TextLabel_9.Text = "Developers:"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextSize = 23.000
TextLabel_10.Parent = Credits_2
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0, 0, 0.175, 0)
TextLabel_10.Size = UDim2.new(0, 421, 0, 32)
TextLabel_10.ZIndex = 2
TextLabel_10.Font = Enum.Font.SourceSansBold
TextLabel_10.Text = "Designed, Scripted by Diet Coke"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.TextSize = 20.000
TextLabel_10.TextWrapped = true
UICorner_14.Parent = TextLabel_10
TextLabel_11.Parent = Credits_2
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0, 0, 0.275, 0)
TextLabel_11.Size = UDim2.new(0, 421, 0, 32)
TextLabel_11.Font = Enum.Font.SourceSansBold
TextLabel_11.Text = "Designed, Scripted by I4KC"
TextLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.TextSize = 20.000
TextLabel_11.TextWrapped = true
UICorner_15.Parent = TextLabel_11
TextLabel_12.Parent = Credits_2
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0, 0, 0.375, 0)
TextLabel_12.Size = UDim2.new(0, 421, 0, 32)
TextLabel_12.Font = Enum.Font.SourceSansBold
TextLabel_12.Text = "W Dev"
TextLabel_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.TextSize = 20.000
TextLabel_12.TextTransparency = 0.990
TextLabel_13.Parent = Credits_2
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0, 0, 0.475, 0)
TextLabel_13.Size = UDim2.new(0, 421, 0, 32)
TextLabel_13.ZIndex = 2
TextLabel_13.Font = Enum.Font.SourceSansBold
TextLabel_13.Text = "Designed, Scripted by Diet Coke"
TextLabel_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.TextSize = 20.000
TextLabel_13.TextWrapped = true
UICorner_16.Parent = TextLabel_13
TextLabel_14.Parent = Credits_2
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0, 0, 0.575, 0)
TextLabel_14.Size = UDim2.new(0, 421, 0, 32)
TextLabel_14.ZIndex = 2
TextLabel_14.Font = Enum.Font.SourceSansBold
TextLabel_14.Text = "Main Dev: Diet Coke"
TextLabel_14.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.TextSize = 20.000
TextLabel_14.TextWrapped = true
TextLabel_UIUX = Instance.new("TextLabel")
TextLabel_UIUX.Parent = Credits_2
TextLabel_UIUX.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_UIUX.BackgroundTransparency = 1  
TextLabel_UIUX.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_UIUX.BorderSizePixel = 0
TextLabel_UIUX.Position = UDim2.new(0, 0, 0.675, 0)
TextLabel_UIUX.Size = UDim2.new(0, 421, 0, 32)
TextLabel_UIUX.Font = Enum.Font.SourceSansBold
TextLabel_UIUX.Text = "UI/UX: #codertoolroblox"
TextLabel_UIUX.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_UIUX.TextSize = 20.000
TextLabel_UIUX.TextWrapped = true
UICorner_17.Parent = TextLabel_14
local function NVXVLM() 
	local script = Instance.new('LocalScript', Executor)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Credits.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = true
		script.Parent.Parent.Parent.Home.Visible = false
		script.Parent.Parent.Parent.Console.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = false
	end)
end
coroutine.wrap(NVXVLM)()
local function ZRKA() 
	local script = Instance.new('LocalScript', home)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Credits.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = true
		script.Parent.Parent.Parent.Console.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = false
	end)
end
coroutine.wrap(ZRKA)()
local function JRWL() 
	local script = Instance.new('LocalScript', Console)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Credits.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = false
		script.Parent.Parent.Parent.Console.Visible = true
	end)
end
coroutine.wrap(JRWL)()
local function JRL() 
	local script = Instance.new('LocalScript', Settings)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Credits.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = true
	end)
end
coroutine.wrap(JRL)()
local function MXDI() 
	local script = Instance.new('LocalScript', Credits)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Credits.Visible = true
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = false
		script.Parent.Parent.Parent.Console.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = false
	end)
end
coroutine.wrap(MXDI)()
local function QPFP() 
	local script = Instance.new('LocalScript', TextButton)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Main.Visible = false
	    script.Parent.Parent.Parent.Parent["Open Button"].Visible = true
	end)
end
coroutine.wrap(QPFP)()
local function PEWWH()
    local script = Instance.new('LocalScript', Top)
    local UserInputService = game:GetService("UserInputService")
    local MainFrame = script.Parent.Parent.Parent.Main
    local TopBar = MainFrame:WaitForChild("Top")
    local Camera = workspace:WaitForChild("Camera")
    local DragMousePosition
    local FramePosition
    local Draggable = false
    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Draggable = true
            DragMousePosition = input.Position
            FramePosition = MainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    Draggable = false
                end
            end)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if Draggable and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - DragMousePosition
            MainFrame.Position = UDim2.new(
                FramePosition.X.Scale, FramePosition.X.Offset + delta.X,
                FramePosition.Y.Scale, FramePosition.Y.Offset + delta.Y
            )
        end
    end)
end
coroutine.wrap(PEWWH)()
local function PHFF() 
	local script = Instance.new('LocalScript', Clear)
	local TextBox = script.Parent.Parent
	local ClearButton = script.Parent
	ClearButton.MouseButton1Click:Connect(function()
		Code.Text = ""
	end)
end
coroutine.wrap(PHFF)()
local function PMROOSA() 
    local script = Instance.new('LocalScript', Execute)
    local TextBox = script.Parent.Parent
    local ExecuteButton = script.Parent
    ExecuteButton.MouseButton1Click:Connect(function()
        local luaCode = Code.Text
        loadstring(luaCode)()
    end)
end
coroutine.wrap(PMROOSA)()
local function UITBIOF() 
	local script = Instance.new('LocalScript', OpenButton)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Main.Visible = true
		script.Parent.Parent["Open Button"].Visible = false
	end)
end
coroutine.wrap(UITBIOF)()
local function XXTZ() 
	local script = Instance.new('LocalScript', OpenButton)
	local UserInputService = game:GetService("UserInputService")
	local MainFrame = script.Parent
	local TopBar = script.Parent
	local DragMousePosition
	local FramePosition
	local Draggable = false
	TopBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Draggable = true
			DragMousePosition = input.Position
			FramePosition = MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Draggable = false
				end
			end)
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if Draggable and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - DragMousePosition
			MainFrame.Position = UDim2.new(
				FramePosition.X.Scale, FramePosition.X.Offset + delta.X,
				FramePosition.Y.Scale, FramePosition.Y.Offset + delta.Y
			)
		end
	end)
end
coroutine.wrap(XXTZ)()
local function BJOYQ() 
	local script = Instance.new('LocalScript', ScreenGui)
end
coroutine.wrap(BJOYQ)()
local function NKFJBJX() 
    local script = Instance.new('LocalScript', Paste)
end
Paste.MouseButton1Click:Connect(function()
	Code.Text = getclipboard()
end)
local previousTime = tick()  
local fps = 0  
while true do
    local currentTime = tick()  
    local deltaTime = currentTime - previousTime  
    if deltaTime >= 1 then  
        fps = math.floor(1 / wait())  
        TextLabel_7.Text = "FPS: " .. fps  
        previousTime = currentTime  
    end
    wait(0.1)  
end
