local GameId = game.GameId

local Games = loadstring(
    game:HttpGet("https://raw.githubusercontent.com/Tvenn16/QH/main/GameList.lua")
)()

local URL = Games[GameId]

if not URL then
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local pgui = player:WaitForChild("PlayerGui")

    local sg = Instance.new("ScreenGui")
    sg.Parent = pgui
    sg.ResetOnSpawn = false
    sg.DisplayOrder = 999

    local frame = Instance.new("Frame")
    frame.Parent = sg
    frame.Size = UDim2.new(0,320,0,80)
    frame.Position = UDim2.new(0.5,-160,0,20)
    frame.BackgroundColor3 = Color3.fromRGB(10,14,10)
    frame.BorderSizePixel = 0

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0,10)
    corner.Parent = frame

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(200,70,70)
    stroke.Thickness = 1.5
    stroke.Parent = frame

    local lbl = Instance.new("TextLabel")
    lbl.Parent = frame
    lbl.Size = UDim2.new(1,-20,1,0)
    lbl.Position = UDim2.new(0,10,0,0)
    lbl.BackgroundTransparency = 1
    lbl.Text = "QUANTUMH\nThis game is not supported yet."
    lbl.TextColor3 = Color3.fromRGB(210,255,210)
    lbl.TextSize = 14
    lbl.Font = Enum.Font.GothamBold
    lbl.TextXAlignment = Enum.TextXAlignment.Center

    spawn(function()
        wait(4)
        sg:Destroy()
    end)

    return
end

loadstring(game:HttpGet(URL))()
