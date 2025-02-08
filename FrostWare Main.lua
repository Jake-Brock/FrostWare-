if _G.FrostWare then
	return
end
local Players = game:GetService("Players")
local player = Players.LocalPlayer  
local userId = player.UserId
local Search = Instance.new("ImageButton")
local Search_2 = Instance.new("Frame")
local content = Players:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
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
local AI = Instance.new("ImageButton")
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
local AI_2 = Instance.new("Frame")
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
_G.FrostWare = true
Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
Main.BackgroundTransparency = 0
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.205, 0, -0.5, 0)
Main.Size = UDim2.new(0, 492, 0, 295)
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Main
Side.Name = "Side"
Side.Parent = Main
Side.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
Side.BackgroundTransparency = 0
Side.Size = UDim2.new(0, 50, 1, -40)
Side.Position = UDim2.new(0, 5, 0, 35)
local UICorner_2 = Instance.new("UICorner")
UICorner_2.CornerRadius = UDim.new(0, 8)
UICorner_2.Parent = Side
local Line = Instance.new("Frame")
Line.Parent = Side
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
Line.BackgroundTransparency = 0 
Line.Size = UDim2.new(0, 2, 1, 4) 
Line.Position = UDim2.new(0.7, 0, 0, 0) 
home.Name = "home"
home.Parent = Side
home.BackgroundTransparency = 1
home.Size = UDim2.new(0, 30, 0, 30)
home.Position = UDim2.new(0.02, 0, 0.05, 0)
home.Image = "rbxassetid://139464910792916"
Executor = home:Clone()
Executor.Name = "Executor"
Executor.Parent = Side
Executor.Position = UDim2.new(0.02, 0, 0.2, 0)
Executor.Image = "rbxassetid://78025028516956"
Console = home:Clone()
Console.Name = "Console"
Console.Parent = Side
Console.Position = UDim2.new(0.02, 0, 0.35, 0)
Console.Image = "http://www.roblox.com/asset/?id=140658747982482"
AI = home:Clone()
AI.Name = "AI"
AI.Parent = Side
AI.Position = UDim2.new(0.02, 0, 0.5, 0)
AI.Image = "rbxassetid://83810327168827"
Settings_2.Name = "Settings"
Settings_2.Parent = Main
Settings_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Settings_2.BackgroundTransparency = 0.6
Settings_2.BorderSizePixel = 0
Settings_2.Position = UDim2.new(0.101, 0, 0.172, 0)
Settings_2.Size = UDim2.new(0, 433, 0, 236)
Settings_2.Visible = false
local UICorner_Settings = Instance.new("UICorner")
UICorner_Settings.CornerRadius = UDim.new(0, 10)
UICorner_Settings.Parent = Settings_2
local WalkSpeedBox = Instance.new("TextBox")
WalkSpeedBox.Parent = Settings_2
WalkSpeedBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
WalkSpeedBox.Size = UDim2.new(0, 160, 0, 30)
WalkSpeedBox.Position = UDim2.new(0.05, 0, 0.05, 0)
WalkSpeedBox.Font = Enum.Font.SourceSans
WalkSpeedBox.PlaceholderText = "Enter WalkSpeed"
WalkSpeedBox.Text = ""
WalkSpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
WalkSpeedBox.TextSize = 16
local UICorner_Walk = Instance.new("UICorner")
UICorner_Walk.CornerRadius = UDim.new(0, 8)
UICorner_Walk.Parent = WalkSpeedBox
local JumpPowerBox = Instance.new("TextBox")
JumpPowerBox.Parent = Settings_2
JumpPowerBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
JumpPowerBox.Size = UDim2.new(0, 160, 0, 30)
JumpPowerBox.Position = UDim2.new(0.55, 0, 0.05, 0)
JumpPowerBox.Font = Enum.Font.SourceSans
JumpPowerBox.PlaceholderText = "Enter JumpPower"
JumpPowerBox.Text = ""
JumpPowerBox.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpPowerBox.TextSize = 16
local UICorner_Jump = Instance.new("UICorner")
UICorner_Jump.CornerRadius = UDim.new(0, 8)
UICorner_Jump.Parent = JumpPowerBox
local Line = Instance.new("Frame")
Line.Parent = Settings_2
Line.Size = UDim2.new(0, 2, 1, 0)
Line.Position = UDim2.new(0.5, -1, 0, 0)
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
local FPSButton = Instance.new("TextButton")
FPSButton.Parent = Settings_2
FPSButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
FPSButton.Size = UDim2.new(0, 160, 0, 30)
FPSButton.Position = UDim2.new(0.05, 0, 0.25, 0)
FPSButton.Font = Enum.Font.SourceSansBold
FPSButton.Text = "FPS: OFF"
FPSButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSButton.TextSize = 16
local UICorner_FPS = Instance.new("UICorner")
UICorner_FPS.CornerRadius = UDim.new(0, 8)
UICorner_FPS.Parent = FPSButton
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
UICorner_Shape.CornerRadius = UDim.new(0, 8)
UICorner_Shape.Parent = ShapeButton
OpenButton.Name = "Open Button"
OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.BorderSizePixel = 0
OpenButton.Position = UDim2.new(0.472801805, 0, 0.0164237954 - 0.14, 0)
OpenButton.Size = UDim2.new(0, 50, 0, 50)
OpenButton.Image = "rbxassetid://114936734174789"
local UICorner_Open = Instance.new("UICorner")
UICorner_Open.Parent = OpenButton
local shapeSelection = "Circle"
local function updateButtonShape()
	if shapeSelection == "Circle" then
		UICorner_Open.CornerRadius = UDim.new(1, 0)
		OpenButton.Image = "rbxassetid://114936734174789"
	else
		UICorner_Open.CornerRadius = UDim.new(0, 10)
		OpenButton.Image = "rbxassetid://114936734174789"
	end
end
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
WalkSpeedBox.FocusLost:Connect(function(enterPressed)
	if enterPressed and tonumber(WalkSpeedBox.Text) then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(WalkSpeedBox.Text)
	end
end)
JumpPowerBox.FocusLost:Connect(function(enterPressed)
	if enterPressed and tonumber(JumpPowerBox.Text) then
		game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(JumpPowerBox.Text)
	end
end)
updateButtonShape()
Settings.Name = "Settings"
Settings.Parent = Side
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.02, 0, 0.65, 0)  
Settings.Size = UDim2.new(0, 28, 0, 28)
Settings.Image = "http://www.roblox.com/asset/?id=97917672712867"
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
local Line = Instance.new("Frame")
Line.Parent = Top
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
Line.BackgroundTransparency = 0 
Line.Size = UDim2.new(1, 8, 0, 2) 
Line.Position = UDim2.new(0, -4, 1, 0) 
Home.Name = "Home"
Home.Parent = Main
Home.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Home.BackgroundTransparency = 0.5
Home.Size = UDim2.new(1, -60, 1, -50)
Home.Position = UDim2.new(0, 55, 0, 40)
local UICorner_4 = Instance.new("UICorner")
UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = Home
local mainStartPosition = UDim2.new(0.205163598, 0, 1, 0)
local sideStartPosition = UDim2.new(-0.2, 0, 0, 35)
local mainGoalPosition = UDim2.new(0.205163598, 0, 0.0687371343, 0)
local sideGoalPosition = UDim2.new(0, 5, 0, 35)
Main.Position = mainStartPosition
Side.Position = sideStartPosition
local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
local mainTween = TweenService:Create(Main, tweenInfo, {Position = mainGoalPosition})
local sideTween = TweenService:Create(Side, tweenInfo, {Position = sideGoalPosition})
mainTween:Play()
task.wait(0.2) 
sideTween:Play()
Search.Name = "Search"
Search.Parent = Side
Search.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Search.BackgroundTransparency = 1.000
Search.BorderColor3 = Color3.fromRGB(0, 0, 0)
Search.BorderSizePixel = 0
Search.Position = UDim2.new(0.02, 0, 0.80, 0)
Search.Size = UDim2.new(0, 28, 0, 28)
Search.Image = "http://www.roblox.com/asset/?id=100225435871664"
local function createUICorner(parent, radius)
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, radius)
	corner.Parent = parent
end
Search_2.Name = "Search" 
Search_2.Parent = Main 
Search_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
Search_2.BackgroundTransparency = 0.2 
Search_2.BorderSizePixel = 0 
Search_2.Position = UDim2.new(0.101707332, 0, 0.171977207, 0)
Search_2.Size = UDim2.new(0, 433, 0, 236)
Search_2.Visible = false
createUICorner(Search_2, 10)
local SearchBox = Instance.new("TextBox") 
SearchBox.Parent = Search_2 
SearchBox.Size = UDim2.new(0.72, 0, 0, 35) 
SearchBox.Position = UDim2.new(0, 0, 0, 0) 
SearchBox.PlaceholderText = "Enter Name Game" 
SearchBox.Font = Enum.Font.SourceSansBold 
SearchBox.TextSize = 18 
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255) 
SearchBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SearchBox.BorderSizePixel = 0 
SearchBox.TextXAlignment = Enum.TextXAlignment.Left 
SearchBox.Text = "" 
createUICorner(SearchBox, 8)
local SearchResults = Instance.new("ScrollingFrame") 
SearchResults.Parent = Search_2 
SearchResults.Size = UDim2.new(1, 0, 1, -45) 
SearchResults.Position = UDim2.new(0, 0, 0, 40) 
SearchResults.CanvasSize = UDim2.new(0, 0, 2, 0) 
SearchResults.ScrollBarThickness = 4 
SearchResults.BackgroundTransparency = 1 
SearchResults.ClipsDescendants = true
local UIListLayout = Instance.new("UIListLayout") 
UIListLayout.Parent = SearchResults 
UIListLayout.Padding = UDim.new(0, 6) 
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
local PageInfo = Instance.new("TextLabel")
PageInfo.Parent = Search_2
PageInfo.Size = UDim2.new(0, 200, 0, 20) 
PageInfo.Position = UDim2.new(1, -205, 0, 10) 
PageInfo.TextSize = 14
PageInfo.Font = Enum.Font.SourceSansBold
PageInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
PageInfo.BackgroundTransparency = 1
PageInfo.Text = "Total Pages: 0 | Page: 0"
PageInfo.TextXAlignment = Enum.TextXAlignment.Right
SearchBox.FocusLost:Connect(function(enterPressed)
    if not enterPressed or SearchBox.Text == "" then return end 
    local httpservice = game:GetService("HttpService")
    local searchedquery = SearchBox.Text
    local page = 1
    local yOffset = 0
    for _, v in pairs(SearchResults:GetChildren()) do
        if v:IsA("Frame") then v:Destroy() end
    end
    if not SearchResults:IsA("ScrollingFrame") then return end
    SearchResults.CanvasSize = UDim2.new(0, 0, 0, 0)
    local response = request({
        Url = "https://scriptblox.com/api/script/search?q=" .. httpservice:UrlEncode(searchedquery) .. "&max=20&mode=free&page=1",
        Method = "GET"
    })
    local decoded = httpservice:JSONDecode(response.Body)
    local totalPages = decoded.result.totalPages or 1 
    PageInfo.Text = "Total Pages: " .. totalPages .. " | Page: " .. page
    while true do
        local response = request({
            Url = "https://scriptblox.com/api/script/search?q=" .. httpservice:UrlEncode(searchedquery) .. "&max=20&mode=free&page=" .. page,
            Method = "GET"
        })
        local decoded = httpservice:JSONDecode(response.Body)
        local scripts = decoded.result.scripts
        if #scripts == 0 then break end
        for _, script in pairs(scripts) do
            local ScriptBox = Instance.new("Frame")
            ScriptBox.Parent = SearchResults
            ScriptBox.Size = UDim2.new(1, -10, 0, 30)
            ScriptBox.Position = UDim2.new(0, 0, 0, yOffset)
            ScriptBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            ScriptBox.BorderSizePixel = 0
            createUICorner(ScriptBox, 6)
            local CopyButton = Instance.new("ImageButton")
            CopyButton.Parent = ScriptBox
            CopyButton.Size = UDim2.new(0.12, 0, 0.7, 0)
            CopyButton.Position = UDim2.new(0.70, 0, 0.15, 0)
            CopyButton.Image = "rbxassetid://72822546519104"
            CopyButton.BackgroundTransparency = 1
            CopyButton.ScaleType = Enum.ScaleType.Fit
            createUICorner(CopyButton, 6)
            CopyButton.MouseButton1Click:Connect(function() setclipboard(script.script) end)
            local ExecuteButton = Instance.new("ImageButton")
            ExecuteButton.Parent = ScriptBox
            ExecuteButton.Size = UDim2.new(0.12, 0, 0.7, 0)
            ExecuteButton.Position = UDim2.new(0.85, 0, 0.15, 0)
            ExecuteButton.Image = "rbxassetid://125594054578785"
            ExecuteButton.BackgroundTransparency = 1
            ExecuteButton.ScaleType = Enum.ScaleType.Fit
            createUICorner(ExecuteButton, 6)
            ExecuteButton.MouseButton1Click:Connect(function() loadstring(script.script)() end)
            local ScriptName = Instance.new("TextLabel")
            ScriptName.Parent = ScriptBox
            ScriptName.Size = UDim2.new(0.65, -5, 1, 0)
            ScriptName.Position = UDim2.new(0, 5, 0, 0)
            ScriptName.Text = script.title
            ScriptName.TextSize = 12
            ScriptName.Font = Enum.Font.SourceSansBold
            ScriptName.TextColor3 = Color3.fromRGB(255, 255, 255)
            ScriptName.BackgroundTransparency = 1
            ScriptName.TextXAlignment = Enum.TextXAlignment.Left
            ScriptName.TextTruncate = Enum.TextTruncate.AtEnd
            yOffset = yOffset + 35
        end
        SearchResults.CanvasSize = UDim2.new(0, 0, 0, yOffset)
        PageInfo.Text = "Total Pages: " .. totalPages .. " | Page: " .. page
        page = page + 1
    end
end)
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
UserText.Font = Enum.Font.LuckiestGuy
local displayName = Name
if #Name > 3 then
    displayName = string.sub(Name, 1, 3) .. "***"
end
UserText.Text = "Welcome " .. displayName .. "\nThanks for using FrostWare!"  
UserText.TextColor3 = Color3.fromRGB(255, 255, 255)
UserText.TextSize = 10 
UserText.TextWrapped = true  
UserText.TextXAlignment = Enum.TextXAlignment.Left
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
createTextLabel(Frame2, UDim2.new(0.02, 0, 0.062 * 1.3 * 2.60, 0), UDim2.new(0, 116, 0, 50), "Features:", 15)
createTextLabel(Frame2, UDim2.new(0.02, 0, 0.232 * 1.3 * 1.30, 0), UDim2.new(0, 208, 0, 28), "Executor with 100% UNC", 15)
createTextLabel(Frame2, UDim2.new(0.02, 0, 0.38 * 1.3 * 1.03 * 1.05, 0), UDim2.new(0, 208, 0, 28), "User friendly interface", 15)
createTextLabel(Frame2, UDim2.new(0.02, 0, 0.547 * 1.3 * 1.03, 0), UDim2.new(0, 208, 0, 28), "Smooth UI:", 15)
local FPSLabel = createTextLabel(Frame2, UDim2.new(0.02, 0, 0.698 * 1.3 * 0.90 * 1.05, 0), UDim2.new(0, 208, 0, 28), "FPS: ", 15)
local TimeLabel = createTextLabel(Frame2, UDim2.new(0.02, 0, 0.8 * 1.3 * 0.97 * 0.97, 0), UDim2.new(0, 208, 0, 28), "TIME: ", 15)
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
    loadstring(game:HttpGet("https://raw.githubusercontent.com/101iii101/file/refs/heads/main/Nameless%20admin%20Perm.txt"))()
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
local CheckUNCButton = Instance.new("TextButton")
CheckUNCButton.Name = "CheckUNCButton"
CheckUNCButton.Parent = Frame1
CheckUNCButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CheckUNCButton.BackgroundTransparency = 0.400
CheckUNCButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CheckUNCButton.BorderSizePixel = 0
CheckUNCButton.Position = UDim2.new(0.55, 0, 0.3, 0)
CheckUNCButton.Size = UDim2.new(0, 80, 0, 15)
CheckUNCButton.Text = "Check UNC"
CheckUNCButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckUNCButton.TextSize = 13
CheckUNCButton.Font = Enum.Font.Bangers
CheckUNCButton.TextXAlignment = Enum.TextXAlignment.Right
CheckUNCButton.ZIndex = 3
UICorner_11.Parent = CheckUNCButton
CheckUNCButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua", true))()
end)
local DiscordButton = Instance.new("TextButton")
DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = Frame1
DiscordButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DiscordButton.BackgroundTransparency = 0.400
DiscordButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
DiscordButton.BorderSizePixel = 0
DiscordButton.Position = UDim2.new(0.55, 0, 0.5, 0)
DiscordButton.Size = UDim2.new(0, 80, 0, 15)
DiscordButton.Text = "Discord"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 13
DiscordButton.Font = Enum.Font.Bangers
DiscordButton.TextXAlignment = Enum.TextXAlignment.Right
DiscordButton.ZIndex = 3
UICorner_12.Parent = DiscordButton
DiscordButton.MouseButton1Click:Connect(function()
    setclipboard("discord.gg/getfrost")
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
local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Parent = Console_2
ScrollingFrame.Size = UDim2.new(0.9, 0, 0.7, 0)
ScrollingFrame.Position = UDim2.new(0.05, 0, 0.1, 0)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.ScrollBarThickness = 5
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
local ConsoleBox = Instance.new("TextLabel")
ConsoleBox.Parent = ScrollingFrame
ConsoleBox.Size = UDim2.new(1, 0, 1, 0)
ConsoleBox.BackgroundTransparency = 1
ConsoleBox.Font = Enum.Font.Code
ConsoleBox.Text = ""
ConsoleBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleBox.TextSize = 14
ConsoleBox.TextWrapped = true
ConsoleBox.TextXAlignment = Enum.TextXAlignment.Left
ConsoleBox.TextYAlignment = Enum.TextYAlignment.Top
ConsoleBox.RichText = true
local buttons = {}
local buttonWidth = 0.14  
local spacing = 0.03  
local totalWidth = 6 * buttonWidth + 5 * spacing  
local function createButton(name, content, posX, isImage)
    local button = Instance.new(isImage and "ImageButton" or "TextButton")
    button.Parent = Console_2
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.BorderSizePixel = 0
    button.Position = UDim2.new(posX / totalWidth, 0, 0.85, 0)
    button.Size = UDim2.new(buttonWidth / 0.9, 0, 0.12, 0)
    local UICorner = Instance.new("UICorner")
    UICorner.Parent = button
    if isImage then
        button.Image = "rbxassetid://" .. content
        button.ScaleType = Enum.ScaleType.Fit
        button.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
    else
        button.Text = content
        button.Font = Enum.Font.SourceSans
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.TextSize = 16
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) 
    end
    buttons[name] = button
end
createButton("Warn", "79250343381203", 0, true)
createButton("Error", "112299375360792", 1 * (buttonWidth + spacing), true)
createButton("Output", "86588352038712", 2 * (buttonWidth + spacing), true)
createButton("All", "All", 3 * (buttonWidth + spacing), false) 
createButton("Copy", "129383309091174", 4 * (buttonWidth + spacing), true)
createButton("Clear", "113359299487062", 5 * (buttonWidth + spacing) + 0.006, true)
local logs = {}
local filterType = "All"
local function updateConsole()
    ConsoleBox.Text = ""
    for _, log in ipairs(logs) do
        if filterType == "All" or log.type == filterType then
            ConsoleBox.Text ..= (ConsoleBox.Text == "" and "" or "\n") .. log.text
        end
    end
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, ConsoleBox.TextBounds.Y + 20)
    ScrollingFrame.CanvasPosition = Vector2.new(0, ScrollingFrame.CanvasSize.Y.Offset)
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
local function createButton(name, position, content, parent, isImage)
    local button = Instance.new(isImage and "ImageButton" or "TextButton")
    button.Name = name
    button.Parent = parent
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.BorderSizePixel = 0
    button.Position = position
    button.Size = UDim2.new(0, 65, 0, 25)
    local UICorner = Instance.new("UICorner")
    UICorner.Parent = button
    if isImage then
        button.Image = "rbxassetid://" .. content
        button.ScaleType = Enum.ScaleType.Fit
        button.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
    else
        button.Text = content
        button.Font = Enum.Font.SourceSans
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.TextSize = 12
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) 
    end
    return button
end
local totalWidth = buttonWidth * numButtons + buttonSpacing * (numButtons - 1)
local startX = (Executor_2.Size.X.Offset - totalWidth) / 2
local Clear = createButton("Clear", UDim2.new(0, startX, 0.85, 0), "113359299487062", Executor_2, true)
local Execute = createButton("Execute", UDim2.new(0, startX + buttonWidth + buttonSpacing, 0.85, 0), "125594054578785", Executor_2, true)
local Paste = createButton("Paste", UDim2.new(0, startX + (buttonWidth + buttonSpacing) * 2, 0.85, 0), "129383309091174", Executor_2, true)
local ExecuteClipboard = createButton("ExecuteClipboard", UDim2.new(0, startX + (buttonWidth + buttonSpacing) * 3, 0.85, 0), "72822546519104", Executor_2, true)
local AutoExe = createButton("Auto Exe", UDim2.new(0, startX + (buttonWidth + buttonSpacing) * 4, 0.85, 0), "Auto Exe", Executor_2, false)
local DeleteAutoExe = createButton("Delete Auto Exe", UDim2.new(0, startX + (buttonWidth + buttonSpacing) * 5, 0.85, 0), "Delete Auto Exe", Executor_2, false)
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
AI_2.Name = "AI"
AI_2.Parent = Main
AI_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AI_2.BackgroundTransparency = 0.600
AI_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
AI_2.BorderSizePixel = 0
AI_2.Position = UDim2.new(0.101138234, 0, 0.171977416, 0)
AI_2.Size = UDim2.new(0, 433, 0, 237)
AI_2.Visible = false
local UICorner_13 = Instance.new("UICorner")
UICorner_13.Parent = AI_2
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Parent = AI_2
scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
scrollingFrame.ScrollBarThickness = 4
scrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
local UICorner_Scroll = Instance.new("UICorner")
UICorner_Scroll.Parent = scrollingFrame
local Text_Welcome = Instance.new("TextLabel")
Text_Welcome.Parent = AI_2
Text_Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_Welcome.BackgroundTransparency = 1
Text_Welcome.Position = UDim2.new(0.5, -100 + (0.45 * 200), 0.15, 0)
Text_Welcome.Size = UDim2.new(0, 200, 0, 50)
Text_Welcome.Text = "Welcome to FrostWare AI Chat"
Text_Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_Welcome.TextSize = 18
Text_Welcome.Font = Enum.Font.SourceSansBold
Text_Welcome.AnchorPoint = Vector2.new(0.5, 0)
local Image_Circular = Instance.new("ImageLabel")
Image_Circular.Parent = AI_2
Image_Circular.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Image_Circular.BackgroundTransparency = 1
Image_Circular.Position = UDim2.new(0.5, -40, 0, 0)
Image_Circular.Size = UDim2.new(0, 60, 0, 60)
Image_Circular.Image = "rbxassetid://114936734174789"
Image_Circular.ScaleType = Enum.ScaleType.Fit
local TextBox_EnterContent = Instance.new("TextBox")
TextBox_EnterContent.Parent = AI_2
TextBox_EnterContent.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox_EnterContent.BackgroundTransparency = 0.5
TextBox_EnterContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox_EnterContent.BorderSizePixel = 0
TextBox_EnterContent.Position = UDim2.new(0, 0, 0.9, 0)
TextBox_EnterContent.Size = UDim2.new(0.85, 0, 0.1, 0)
TextBox_EnterContent.Font = Enum.Font.SourceSansBold
TextBox_EnterContent.Text = "Enter Content..."
TextBox_EnterContent.PlaceholderText = "Enter Content..."
TextBox_EnterContent.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox_EnterContent.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox_EnterContent.TextSize = 20
TextBox_EnterContent.TextWrapped = true
local UICorner_EnterContent = Instance.new("UICorner")
UICorner_EnterContent.Parent = TextBox_EnterContent
local Button_Send = Instance.new("ImageButton")
Button_Send.Parent = AI_2
Button_Send.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Button_Send.BackgroundTransparency = 0.5
Button_Send.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_Send.BorderSizePixel = 0
Button_Send.Position = UDim2.new(0.85, 0, 0.9, 0)
Button_Send.Size = UDim2.new(0.15, 0, 0.1, 0)
Button_Send.Image = "rbxassetid://125594054578785"
Button_Send.ScaleType = Enum.ScaleType.Fit
local UICorner_Send = Instance.new("UICorner")
UICorner_Send.Parent = Button_Send
local Button_Clear = Instance.new("ImageButton")
Button_Clear.Parent = AI_2
Button_Clear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Button_Clear.BackgroundTransparency = 0.5
Button_Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_Clear.BorderSizePixel = 0
Button_Clear.Position = UDim2.new(0.70, 0, 0.9, 0) 
Button_Clear.Size = UDim2.new(0.15, 0, 0.1, 0)
Button_Clear.Image = "rbxassetid://113359299487062" 
Button_Clear.ScaleType = Enum.ScaleType.Fit
local UICorner_Clear = Instance.new("UICorner")
UICorner_Clear.Parent = Button_Clear
local replyPositionY = 0.15
local maxWidth = 400
scrollingFrame:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
    if scrollingFrame.CanvasPosition.Y > 0 then
        Image_Circular.Visible = false
        Text_Welcome.Visible = false
    else
        Image_Circular.Visible = true
        Text_Welcome.Visible = true
    end
end)
Button_Send.MouseButton1Click:Connect(function()
    local message = TextBox_EnterContent.Text
    message = message:gsub("%s+", "")
    if message == "" or message == "Enter Content..." then return end
    local httpService = game:GetService("HttpService")
    local url = "http://fi4.bot-hosting.net:22869/TestHubChatgptV4?msg=" .. message
    local success, response = pcall(function()
        return request({ Url = url, Method = "GET" })
    end)
    if success then
        if response.Success then
            local data = httpService:JSONDecode(response.Body)
            local reply = data.chat or "No response from server"
            local Text_Reply = Instance.new("TextLabel")
            Text_Reply.Parent = scrollingFrame
            Text_Reply.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Text_Reply.BackgroundTransparency = 1
            Text_Reply.Position = UDim2.new(0, 0, replyPositionY, 0)
            Text_Reply.Size = UDim2.new(0, maxWidth, 0, 50)
            Text_Reply.Text = reply
            Text_Reply.TextColor3 = Color3.fromRGB(255, 255, 255)
            Text_Reply.TextSize = 18
            Text_Reply.Font = Enum.Font.SourceSansBold
            Text_Reply.AnchorPoint = Vector2.new(0, 0)
            Text_Reply.TextXAlignment = Enum.TextXAlignment.Left
            Text_Reply.TextWrapped = true
            replyPositionY = replyPositionY + 0.1
            TextBox_EnterContent.Text = ""
        end
    end
end)
Button_Clear.MouseButton1Click:Connect(function()
    TextBox_EnterContent.Text = "" 
    for _, child in pairs(scrollingFrame:GetChildren()) do
        if child:IsA("TextLabel") then
            child:Destroy() 
        end
    end
    replyPositionY = 0.15
end)
local function NVXVLM() 
	local script = Instance.new('LocalScript', Executor)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.AI.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = true
		script.Parent.Parent.Parent.Home.Visible = false
		script.Parent.Parent.Parent.Console.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = false
		script.Parent.Parent.Parent.Search.Visible = false
	end)
end
coroutine.wrap(NVXVLM)()
local function JRLI() 
	local script = Instance.new('LocalScript', Search)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.AI.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = false
		script.Parent.Parent.Parent.Search.Visible = true
		script.Parent.Parent.Parent.Console.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = false
	end)
end
coroutine.wrap(JRLI)()
local function ZRKA() 
	local script = Instance.new('LocalScript', home)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.AI.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = true
		script.Parent.Parent.Parent.Console.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = false
		script.Parent.Parent.Parent.Search.Visible = false
	end)
end
coroutine.wrap(ZRKA)()
local function JRWL() 
	local script = Instance.new('LocalScript', Console)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.AI.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = false
		script.Parent.Parent.Parent.Console.Visible = true
		script.Parent.Parent.Parent.Search.Visible = false
	end)
end
coroutine.wrap(JRWL)()
local function JRL() 
	local script = Instance.new('LocalScript', Settings)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.AI.Visible = false
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = false
		script.Parent.Parent.Parent.Console.Visible = false
		script.Parent.Parent.Parent.Search.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = true
	end)
end
coroutine.wrap(JRL)()
local function MXDI() 
	local script = Instance.new('LocalScript', AI)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.AI.Visible = true
		script.Parent.Parent.Parent.Executor.Visible = false
		script.Parent.Parent.Parent.Home.Visible = false
		script.Parent.Parent.Parent.Console.Visible = false
		script.Parent.Parent.Parent.Settings.Visible = false
		script.Parent.Parent.Parent.Search.Visible = false
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
        local main = script.Parent.Parent.Main
        main.Visible = not main.Visible
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
    wait()  
end
