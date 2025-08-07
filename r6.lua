local v0 = game:GetService("TweenService")
local v1 = game:GetService("Players")
local v2 = game:GetService("SoundService")
local v3 = v1.LocalPlayer
local v4 = Instance.new("Sound", v2)
v4.SoundId = "rbxassetid://9118823103"
v4.Volume = 2

local v7 = Instance.new("BlurEffect")
v7.Size = 0
v7.Parent = game.Lighting

local v11 = Instance.new("ScreenGui", game.CoreGui)
v11.Name = "KiraR6 Roblox: @mememmrt"
v11.ResetOnSpawn = false

local v14 = Instance.new("Frame", v11)
v14.Size = UDim2.new(0, 400, 0, 150)
v14.Position = UDim2.new(0.5, -200, 0.5, -75)
v14.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
v14.BorderSizePixel = 0
v14.AnchorPoint = Vector2.new(0.5, 0.5)
v14.ClipsDescendants = true
v14.Active = true
v14.Draggable = true
Instance.new("UICorner", v14)

local v23 = Instance.new("UIStroke", v14)
v23.Thickness = 2
v23.Color = Color3.new(1, 0, 0)
task.spawn(function()
    while v23 and v23.Parent do
        for v132 = 0, 255, 5 do
            v23.Color = Color3.fromHSV(v132 / 255, 1, 1)
            wait(0.02)
        end
    end
end)

local v26 = Instance.new("ImageLabel", v14)
v26.Size = UDim2.new(0, 80, 0, 80)
v26.Position = UDim2.new(0, 10, 0.5, -40)
v26.Image = "rbxass"
v26.BackgroundTransparency = 1

local v31 = Instance.new("TextLabel", v14)
v31.Size = UDim2.new(0, 240, 0, 30)
v31.Position = UDim2.new(0, 100, 0, 10)
v31.Text = "Kira R6'ya Hoşgeldin"
v31.TextColor3 = Color3.new(1, 1, 1)
v31.BackgroundTransparency = 1
v31.Font = Enum.Font.GothamBold
v31.TextScaled = true

local v40 = Instance.new("TextButton", v14)
v40.Size = UDim2.new(0, 30, 0, 30)
v40.Position = UDim2.new(1, -35, 0, 10)
v40.Text = "X"
v40.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
v40.TextColor3 = Color3.new(1, 1, 1)
v40.Font = Enum.Font.GothamBold
v40.TextScaled = true
Instance.new("UICorner", v40)

local v48 = Instance.new("TextButton", v14)
v48.Size = UDim2.new(0, 40, 0, 30)
v48.Position = UDim2.new(1, -75, 0, 10)
v48.Text = "Script"
v48.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
v48.TextColor3 = Color3.new(1, 1, 1)
v48.Font = Enum.Font.GothamBold
v48.TextScaled = true
Instance.new("UICorner", v48)

local v56 = Instance.new("TextButton", v14)
v56.Size = UDim2.new(0, 70, 0, 30)
v56.Position = UDim2.new(1, -120, 0, 10)
v56.Text = "< Geri Dön"
v56.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
v56.TextColor3 = Color3.new(1, 1, 1)
v56.Font = Enum.Font.GothamBold
v56.TextScaled = true
Instance.new("UICorner", v56)
v56.Visible = false

local v65 = Instance.new("TextButton", v14)
v65.Size = UDim2.new(0, 250, 0, 40)
v65.Position = UDim2.new(0, 100, 1, -60)
v65.Text = "R6 Animasyonuna Dönüştür"
v65.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
v65.TextColor3 = Color3.new(1, 1, 1)
v65.Font = Enum.Font.GothamBold
v65.TextScaled = true
Instance.new("UICorner", v65)

local function v73(msg)
    local notif = Instance.new("TextLabel", v11)
    notif.Size = UDim2.new(0, 220, 0, 40)
    notif.Position = UDim2.new(1, -240, 1, 100)
    notif.AnchorPoint = Vector2.new(0, 1)
    notif.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    notif.TextColor3 = Color3.new(1, 1, 1)
    notif.Font = Enum.Font.GothamBlack
    notif.TextScaled = true
    notif.Text = "✔️ " .. msg
    Instance.new("UICorner", notif)
    v0:Create(notif, TweenInfo.new(0.4), {Position = UDim2.new(1, -240, 1, -60)}):Play()
    wait(3)
    notif:Destroy()
end

v65.MouseButton1Click:Connect(function()
    v4:Play()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/alifSTARZ/R15-ANIMATION-ON-R6/refs/heads/main/Xploit%20FORCE%20alrect"))()
    v73("R6 zaten aktif!")
end)

v40.MouseButton1Click:Connect(function()
    v4:Play()
    v0:Create(v7, TweenInfo.new(0.4), {Size = 20}):Play()
    local tweenOut = v0:Create(v14, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 0), Rotation = 360})
    tweenOut:Play()
    tweenOut.Completed:Connect(function()
        v11:Destroy()
        v0:Create(v7, TweenInfo.new(0.4), {Size = 0}):Play()
        wait(0.5)
        v7:Destroy()
    end)
end)

local v74 = Instance.new("TextBox", v14)
v74.Size = UDim2.new(0, 250, 0, 40)
v74.Position = UDim2.new(0, 100, 1, -105)
v74.PlaceholderText = "Scriptini buraya yaz (loadstring...)"
v74.Text = ""
v74.TextScaled = true
v74.ClearTextOnFocus = false
v74.TextColor3 = Color3.new(1, 1, 1)
v74.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
v74.Font = Enum.Font.Code
v74.Visible = false
Instance.new("UICorner", v74)

local v86 = Instance.new("TextButton", v14)
v86.Size = UDim2.new(0, 120, 0, 35)
v86.Position = UDim2.new(0, 100, 1, -60)
v86.Text = "Çalıştır"
v86.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
v86.TextColor3 = Color3.new(1, 1, 1)
v86.Font = Enum.Font.GothamBold
v86.TextScaled = true
v86.Visible = false
Instance.new("UICorner", v86)

local v95 = Instance.new("TextButton", v14)
v95.Size = UDim2.new(0, 120, 0, 35)
v95.Position = UDim2.new(0, 230, 1, -60)
v95.Text = "Temizle"
v95.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
v95.TextColor3 = Color3.new(1, 1, 1)
v95.Font = Enum.Font.GothamBold
v95.TextScaled = true
v95.Visible = false
Instance.new("UICorner", v95)

v48.MouseButton1Click:Connect(function()
    v4:Play()
    v0:Create(v65, TweenInfo.new(0.5), {Rotation = 360, Size = UDim2.new(0, 0, 0, 0)}):Play()
    wait(0.5)
    v65.Visible = false
    v48.Visible = false
    v74.Visible = true
    v86.Visible = true
    v95.Visible = true
    v56.Visible = true
end)

v56.MouseButton1Click:Connect(function()
    v4:Play()
    v74.Visible = false
    v86.Visible = false
    v95.Visible = false
    v56.Visible = false
    v48.Visible = true
    v65.Visible = true
    v65.Size = UDim2.new(0, 0, 0, 0)
    v0:Create(v65, TweenInfo.new(0.5, Enum.EasingStyle.Back), {Size = UDim2.new(0, 250, 0, 40), Rotation = 0}):Play()
end)

v86.MouseButton1Click:Connect(function()
    v4:Play()
    local success, err = pcall(function()
        loadstring(v74.Text)()
    end)
    if success then
        v73("Script başarıyla çalıştırıldı!")
    else
        v73("❌ Scriptte hata var!")
    end
end)

v95.MouseButton1Click:Connect(function()
    v4:Play()
    v74.Text = ""
    v73("Script temizlendi!")
end)
