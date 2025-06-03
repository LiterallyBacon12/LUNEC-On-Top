local gui = Instance.new("ScreenGui")
gui.Name = "broStfu"
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 220)
frame.Position = UDim2.new(0.5, -200, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.1
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "🚫 LUNEC Shutdown Notice"
title.TextColor3 = Color3.fromRGB(255, 70, 70)
title.TextSize = 22
title.Font = Enum.Font.GothamBold
title.Parent = frame

local body = Instance.new("TextLabel")
body.Size = UDim2.new(1, -40, 1, -100)
body.Position = UDim2.new(0, 20, 0, 60)
body.BackgroundTransparency = 1
body.TextWrapped = true
body.TextYAlignment = Enum.TextYAlignment.Top
body.Text = "We regret to inform you that the LUNEC exploit script is being permanently shut down.\n\nThank you for your support.\n\nShutdown Date: June 03, 2025"
body.TextColor3 = Color3.fromRGB(220, 220, 220)
body.TextSize = 16
body.Font = Enum.Font.Gotham
body.Parent = frame

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 100, 0, 30)
close.Position = UDim2.new(0.5, -50, 1, -40)
close.BackgroundColor3 = Color3.fromRGB(255, 70, 70)
close.Text = "Close"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextSize = 16
close.Font = Enum.Font.GothamBold
close.BorderSizePixel = 0
close.Parent = frame

close.MouseButton1Click:Connect(function()
    gui:Destroy()
    setclipboard('Join Discord for announcement why: discord.gg/s7r7gTusMV')
end)
