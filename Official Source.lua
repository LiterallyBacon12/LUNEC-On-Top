local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui", PlayerGui)
gui.Name = "SytxUI"
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local frame = Instance.new("Frame", gui)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(0, 450, 0, 250)
frame.BackgroundTransparency = 0.15
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Visible = true

local uicorner = Instance.new("UICorner", frame)
uicorner.CornerRadius = UDim.new(0, 12)

local title = Instance.new("TextLabel", frame)
title.Text = "Hello LUNEC!\n\nRegarding the shutdown we've decided to return back and create a better far and new version named \"SYTX\" standing for our previous project named Syvextia that has been reshortened. We reannounce our returning back to the scripting community. Enjoy:"
title.TextColor3 = Color3.fromRGB(235, 235, 235)
title.Font = Enum.Font.Gotham
title.TextSize = 16
title.TextWrapped = true
title.Size = UDim2.new(1, -40, 0, 140)
title.Position = UDim2.new(0, 20, 0, 20)
title.BackgroundTransparency = 1
title.TextYAlignment = Enum.TextYAlignment.Top

local buttonNames = {"Copy Discord", "Copy New Script", "Close"}
local actions = {
    function()
        setclipboard("https://discord.gg/UMu3nTV3Qn")
    end,
    function()
        setclipboard("loadstring(game:HttpGet('https://raw.githubusercontent.com/DxvinityRadience/Sytx-Interface/refs/heads/main/Main%20Source.lua'))()")
    end,
    function() end
}

for i, name in ipairs(buttonNames) do
    local button = Instance.new("TextButton", frame)
    button.Text = name
    button.Font = Enum.Font.GothamSemibold
    button.TextSize = 14
    button.Size = UDim2.new(0.3, 0, 0, 36)
    button.Position = UDim2.new(0.05 + 0.325 * (i - 1), 0, 1, -50)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.AutoButtonColor = true
    local corner = Instance.new("UICorner", button)
    corner.CornerRadius = UDim.new(0, 8)

    button.MouseButton1Click:Connect(function()
        actions[i]()
        local tween = TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        })
        tween:Play()
        tween.Completed:Connect(function()
            gui:Destroy()
        end)
    end)
end
