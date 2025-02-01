local Players = game:GetService("Players")
local player = Players.LocalPlayer
local Name = player.DisplayName
local TweenService = game:GetService("TweenService")
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Side = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Executor = Instance.new("ImageButton")
local home = Instance.new("ImageButton")
local Settings = Instance.new("ImageButton")
local Credits = Instance.new("ImageButton")
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
local Settings_2 = Instance.new("Frame")
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
Main.BackgroundTransparency = 0.300
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.205163598, 0, -0.5, 0)
Main.Size = UDim2.new(0, 492, 0, 295)
UICorner.Parent = Main
Side.Name = "Side"
Side.Parent = Main
Side.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Side.BackgroundTransparency = 0.400
Side.Position = UDim2.new(0.00773930736, 0, 0.172789693, 0)
Side.Size = UDim2.new(0, 39, 0, 236)
UICorner_2.Parent = Side
Executor.Name = "Executor"
Executor.Parent = Side
Executor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Executor.BackgroundTransparency = 1.000
Executor.BorderColor3 = Color3.fromRGB(0, 0, 0)
Executor.BorderSizePixel = 0
Executor.Position = UDim2.new(0.144999996, 0, 0.173999995, 0)
Executor.Size = UDim2.new(0, 28, 0, 28)
Executor.Image = "rbxassetid://110565107095653"
home.Name = "home"
home.Parent = Side
home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
home.BackgroundTransparency = 1.000
home.BorderColor3 = Color3.fromRGB(0, 0, 0)
home.BorderSizePixel = 0
home.Position = UDim2.new(0.121417709, 0, 0.0263929199, 0)
home.Size = UDim2.new(0, 28, 0, 28)
home.Image = "rbxassetid://119897226376123"
local goalPosition = UDim2.new(0.205163598, 0, 0.0687371343, 0)
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = TweenService:Create(Main, tweenInfo, {Position = goalPosition})
tween:Play()
Settings.Name = "Settings"
Settings.Parent = Side
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.121417709, 0, 0.294906735, 0)
Settings.Size = UDim2.new(0, 28, 0, 28)
Settings.Image = "http://www.roblox.com/asset/?id=119011453171150"
Credits.Name = "Credits"
Credits.Parent = Side
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.120999999, 0, 0.439999998, 0)
Credits.Size = UDim2.new(0, 28, 0, 28)
Credits.Image = "rbxassetid://138073973227244"
Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top.BackgroundTransparency = 0.400
Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0.00773930736, 0, 0.0287845936, 0)
Top.Size = UDim2.new(0, 479, 0, 34)
UICorner_3.Parent = Top
TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0726315826, 0, 0.0294117648, 0)
TextLabel.Size = UDim2.new(0, 228, 0, 32)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "FrostWare | Android"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.000
TextLabel.TextWrapped = true
ImageLabel.Parent = Top
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.0123159131, 0, -0.227451101, 0)
ImageLabel.Size = UDim2.new(0, 48, 0, 48)
ImageLabel.Image = "rbxassetid://114936734174789"
TextButton.Parent = Top
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.922804058, 0, -0.264705896, 0)
TextButton.Size = UDim2.new(0, 46, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 26.000
Home.Name = "Home"
Home.Parent = Main
Home.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Home.BackgroundTransparency = 0.600
Home.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home.BorderSizePixel = 0
Home.Position = UDim2.new(0.103170753, 0, 0.171977416, 0)
Home.Size = UDim2.new(0, 433, 0, 237)
UICorner_4.Parent = Home
UICorner_5.Parent = User
Frame.Parent = user
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.400
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0140000004, 0, 0.0500000007, 0)
Frame.Size = UDim2.new(0, 67, 0, 67)
UICorner_6.CornerRadius = UDim.new(1, 0)
UICorner_6.Parent = Frame
Frame1.Name = "Frame1"
Frame1.Parent = Home
Frame1.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame1.BackgroundTransparency = 0.600
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(-0.000198469977, 0, 0.313806206, 0)
Frame1.Size = UDim2.new(0, 220, 0, 162)
Frame1.ZIndex = 2
TextLabel_2.Parent = Frame1
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.0367908813, 0, 0.790123463, 0)
TextLabel_2.Size = UDim2.new(0, 100, 0, 50)
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = "Version: 3.2"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
Frame2.Name = "Frame2"
Frame2.Parent = Home
Frame2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame2.BackgroundTransparency = 0.600
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.509348094, 0, -0.00264949235, 0)
Frame2.Size = UDim2.new(0, 212, 0, 236)
Frame2.ZIndex = 2
TextLabel_3.Parent = Frame2
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(-0.0610000007, 0, -0.0649999976, 0)
TextLabel_3.Size = UDim2.new(0, 116, 0, 50)
TextLabel_3.Font = Enum.Font.FredokaOne
TextLabel_3.Text = "Features:"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 20.000
TextLabel_4.Parent = Frame2
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0199999548, 0, 0.132000029, 0)
TextLabel_4.Size = UDim2.new(0, 208, 0, 28)
TextLabel_4.Font = Enum.Font.FredokaOne
TextLabel_4.Text = "Executor with 100% UNC"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 20.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_4.TextYAlignment = Enum.TextYAlignment.Top
TextLabel_5.Parent = Frame2
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0199999548, 0, 0.280305117, 0)
TextLabel_5.Size = UDim2.new(0, 208, 0, 28)
TextLabel_5.Font = Enum.Font.FredokaOne
TextLabel_5.Text = "User friendly interface"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 20.000
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_5.TextYAlignment = Enum.TextYAlignment.Top
TextLabel_6.Parent = Frame2
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.0199999548, 0, 0.437084794, 0)
TextLabel_6.Size = UDim2.new(0, 208, 0, 28)
TextLabel_6.Font = Enum.Font.FredokaOne
TextLabel_6.Text = "Smooth UI"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 20.000
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_6.TextYAlignment = Enum.TextYAlignment.Top
TextLabel_7.Parent = Frame2
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.0199999548, 0, 0.598101735, 0)
TextLabel_7.Size = UDim2.new(0, 208, 0, 28)
TextLabel_7.Font = Enum.Font.FredokaOne
TextLabel_7.Text = "FPS : "
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextSize = 15.000
TextLabel_7.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_7.TextYAlignment = Enum.TextYAlignment.Top
local Settings_2 = Instance.new("Frame")
Settings_2.Name = "Settings"
Settings_2.Parent = Main
Settings_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Settings_2.BackgroundTransparency = 0.6
Settings_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings_2.BorderSizePixel = 0
Settings_2.Position = UDim2.new(0.101707332, 0, 0.171977207, 0)
Settings_2.Size = UDim2.new(0, 433, 0, 236)
Settings_2.Visible = false
local UICorner_7 = Instance.new("UICorner")
UICorner_7.Parent = Settings_2
local ConsoleBox = Instance.new("TextBox")
ConsoleBox.Parent = Settings_2
ConsoleBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConsoleBox.BackgroundTransparency = 0.2
ConsoleBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConsoleBox.BorderSizePixel = 0
ConsoleBox.Position = UDim2.new(0.05, 0, 0.1, 0)
ConsoleBox.Size = UDim2.new(0, 390, 0, 150)
ConsoleBox.Font = Enum.Font.Code
ConsoleBox.Text = ""
ConsoleBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleBox.TextSize = 14
ConsoleBox.TextWrapped = true
ConsoleBox.TextXAlignment = Enum.TextXAlignment.Left
ConsoleBox.TextYAlignment = Enum.TextYAlignment.Top
ConsoleBox.MultiLine = true
ConsoleBox.ClearTextOnFocus = false
local UICorner_Console = Instance.new("UICorner")
UICorner_Console.Parent = ConsoleBox
local ClearButton = Instance.new("TextButton")
ClearButton.Parent = Settings_2
ClearButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ClearButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClearButton.BorderSizePixel = 0
ClearButton.Position = UDim2.new(0.05, 0, 0.75, 0)
ClearButton.Size = UDim2.new(0, 120, 0, 30)
ClearButton.Font = Enum.Font.SourceSans
ClearButton.Text = "Clear Console"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.TextSize = 16
local UICorner_Clear = Instance.new("UICorner")
UICorner_Clear.Parent = ClearButton
local CopyButton = Instance.new("TextButton")
CopyButton.Parent = Settings_2
CopyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderSizePixel = 0
CopyButton.Position = UDim2.new(0.68, 0, 0.75, 0)
CopyButton.Size = UDim2.new(0, 120, 0, 30)
CopyButton.Font = Enum.Font.SourceSans
CopyButton.Text = "Copy Console"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 16
local UICorner_Copy = Instance.new("UICorner")
UICorner_Copy.Parent = CopyButton
ClearButton.MouseButton1Click:Connect(function()
    ConsoleBox.Text = ""
end)
CopyButton.MouseButton1Click:Connect(function()
    setclipboard(ConsoleBox.Text)
end)
local function appendConsole(msg, msgType)
    local prefix = "[INFO]"
    if msgType == Enum.MessageType.MessageWarning then
        prefix = "[WARNING]"
    elseif msgType == Enum.MessageType.MessageError then
        prefix = "[ERROR]"
    end
    ConsoleBox.Text ..= (ConsoleBox.Text == "" and "" or "\n") .. string.format("%s %s", prefix, msg)
end
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
    ConsoleBox.Text = ""
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
local UICorner_8 = Instance.new("UICorner")
UICorner_8.Parent = Executor_2
local Code = Instance.new("TextBox")
Code.Name = "Code"
Code.Parent = Executor_2
Code.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Code.BorderColor3 = Color3.fromRGB(0, 0, 0)
Code.BorderSizePixel = 0
Code.Position = UDim2.new(0.014309573, 0, 0.0276296716, 0)
Code.Size = UDim2.new(0, 419, 0, 183)  
Code.Font = Enum.Font.SourceSans
Code.PlaceholderColor3 = Color3.fromRGB(88, 88, 88)
Code.PlaceholderText = "print(\"FrostWare 3.2\")"
Code.Text = ""
Code.TextColor3 = Color3.fromRGB(255, 255, 255)
Code.TextSize = 14.000
Code.TextWrapped = true
Code.TextXAlignment = Enum.TextXAlignment.Left
Code.TextYAlignment = Enum.TextYAlignment.Top
Code.ClearTextOnFocus = false
Code.MultiLine = true
Code.TextTruncate = Enum.TextTruncate.AtEnd  
local UICorner_9 = Instance.new("UICorner")
UICorner_9.Parent = Code
local function createButton(name, position, text, parent)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Parent = parent
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.BorderSizePixel = 0
    button.Position = position
    button.Size = UDim2.new(0, 100, 0, 30)  
    button.Font = Enum.Font.SourceSans
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 17.000
    local UICorner = Instance.new("UICorner")
    UICorner.Parent = button
    return button
end
local buttonWidth = 100
local buttonSpacing = 10
local buttonHeight = 30
local numButtons = 4  
local totalWidth = buttonWidth * numButtons + buttonSpacing * (numButtons - 1)
local startX = (Executor_2.Size.X.Offset - totalWidth) / 2  
local Clear = createButton("Clear", UDim2.new(0, startX, 0.85, 0), "Clear", Executor_2)
local Execute = createButton("Execute", UDim2.new(0, startX + buttonWidth + buttonSpacing, 0.85, 0), "Execute", Executor_2)
local Paste = createButton("Paste", UDim2.new(0, startX + (buttonWidth + buttonSpacing) * 2, 0.85, 0), "Paste", Executor_2)
local ExecuteClipboard = createButton("ExecuteClipboard", UDim2.new(0, startX + (buttonWidth + buttonSpacing) * 3, 0.85, 0), "Execute Clipboard", Executor_2)
ExecuteClipboard.MouseButton1Click:Connect(function()
    local clipboardContent = getclipboard()  
    local success, result = pcall(function()
        loadstring(clipboardContent)()  
    end)
    if not success then
        warn("Error executing clipboard code: " .. result)
    end
end)
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
TextLabel_9.Position = UDim2.new(-0.0282523707, 0, -0.0421940945, 0)
TextLabel_9.Size = UDim2.new(0, 150, 0, 50)
TextLabel_9.Font = Enum.Font.FredokaOne
TextLabel_9.Text = "Developers:"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextSize = 23.000
ImageLabel_2.Parent = Credits_2
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.0209753737, 0, 0.18140395, 0)
ImageLabel_2.Size = UDim2.new(0, 50, 0, 50)
ImageLabel_2.Image = "rbxassetid://18460454647"
ImageLabel_3.Parent = Credits_2
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Position = UDim2.new(0.0209753737, 0, 0.438787907, 0)
ImageLabel_3.Size = UDim2.new(0, 50, 0, 50)
TextLabel_10.Parent = Credits_2
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.0851695538, 0, 0.475216389, 0)
TextLabel_10.Size = UDim2.new(0, 421, 0, 32)
TextLabel_10.ZIndex = 2
TextLabel_10.Font = Enum.Font.SourceSansBold
TextLabel_10.Text = "Designed,Scripted by Diet Coke"
TextLabel_10.TextColor3 = Color3.fromRGB(3, 7, 255)
TextLabel_10.TextSize = 29.000
TextLabel_10.TextWrapped = true
UICorner_14.Parent = TextLabel_10
TextLabel_11.Parent = Credits_2
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0.0205044299, 0, 0.217832416, 0)
TextLabel_11.Size = UDim2.new(0, 421, 0, 32)
TextLabel_11.Font = Enum.Font.SourceSansBold
TextLabel_11.Text = "Designed,Scripted by I4KC"
TextLabel_11.TextColor3 = Color3.fromRGB(0, 255, 255)
TextLabel_11.TextSize = 29.000
TextLabel_11.TextWrapped = true
UICorner_15.Parent = TextLabel_11
TextLabel_12.Parent = Credits_2
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0.31639722, 0, 0.434599161, 0)
TextLabel_12.Size = UDim2.new(0, 200, 0, 50)
TextLabel_12.Font = Enum.Font.SourceSansBold
TextLabel_12.Text = "W Dev"
TextLabel_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.TextSize = 71.000
TextLabel_12.TextTransparency = 0.990
TextLabel_13.Parent = Credits_2
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0.0851695538, 0, 0.475216389, 0)
TextLabel_13.Size = UDim2.new(0, 421, 0, 32)
TextLabel_13.ZIndex = 2
TextLabel_13.Font = Enum.Font.SourceSansBold
TextLabel_13.Text = "Designed,Scripted by Diet Coke"
TextLabel_13.TextColor3 = Color3.fromRGB(3, 7, 255)
TextLabel_13.TextSize = 29.000
TextLabel_13.TextWrapped = true
UICorner_16.Parent = TextLabel_13
TextLabel_14.Parent = Credits_2
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(-0.0580175109, 0, 0.643992722, 0)
TextLabel_14.Size = UDim2.new(0, 421, 0, 32)
TextLabel_14.ZIndex = 2
TextLabel_14.Font = Enum.Font.SourceSansBold
TextLabel_14.Text = "Main Dev: Diet Coke"
TextLabel_14.TextColor3 = Color3.fromRGB(3, 7, 255)
TextLabel_14.TextSize = 29.000
TextLabel_14.TextWrapped = true
UICorner_17.Parent = TextLabel_14
OpenButton.Name = "Open Button"
OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.BorderSizePixel = 0
OpenButton.Position = UDim2.new(0.472801805, 0, 0.0164237954, 0)
OpenButton.Size = UDim2.new(0, 50, 0, 50) 
OpenButton.Visible = false
OpenButton.Image = "rbxassetid://114936734174789"
UICorner_18.CornerRadius = UDim.new(1, 0)
UICorner_18.Parent = OpenButton
local function NVXVLM() 
	local script = Instance.new('LocalScript', Executor)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Credits.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = true
		script.Parent.Parent.Parent.Home.Visible = false
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
		script.Parent.Parent.Parent.Settings.Visible = false
	end)
end
coroutine.wrap(ZRKA)()
local function JRWL() 
	local script = Instance.new('LocalScript', Settings)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Credits.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = true
	end)
end
coroutine.wrap(JRWL)()
local function MXDI() 
	local script = Instance.new('LocalScript', Credits)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Credits.Visible = true
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = false
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
local function SUKHB() 
	local script = Instance.new('LocalScript', Main)
	task.wait(2)
	warn("if you got any errors don't mind the errors they're from FrostWare ui")
end
coroutine.wrap(SUKHB)()
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
