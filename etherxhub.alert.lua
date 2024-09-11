local AlertFrame = Instance.new("ScreenGui")
AlertFrame.Name = "AlertFrame"
AlertFrame.Parent = game.CoreGui
AlertFrame.ZIndexBehavior = Enum.ZIndexBehavior.Global

local Alert = {}
function Alert:create(desc)
    if game.CoreGui:FindFirstChild("AlertFrame") then
        local alertFrame = game.CoreGui.AlertFrame
        if alertFrame:FindFirstChild("Frame") then
            alertFrame.Frame:Destroy()
        end
    end
    
    local Frame = Instance.new("Frame")
    local Image = Instance.new("ImageLabel")
    local Title = Instance.new("TextLabel")
    local Desc = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    Frame.Name = "Frame"
    Frame.Parent = game.CoreGui.AlertFrame 
    Frame.BackgroundColor3 = _G.Dark
    Frame.BackgroundTransparency = .1
    Frame.Position = UDim2.new(1, 0, 0, 0)
    Frame.Size = UDim2.new(0, 200, 0, 60)

    local stroke = Instance.new("UIStroke")
    stroke.Color = _G.Primary
    stroke.Thickness = 1
    stroke.Transparency = 0
    stroke.Parent = Frame 

    Image.Name = "Icon"
    Image.Parent = Frame
    Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Image.BackgroundTransparency = 1.000
    Image.Position = UDim2.new(0, 8, 0, 8)
    Image.Size = UDim2.new(0, 45, 0, 45)
    Image.Image = "rbxassetid://13940080072" 
    
    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0, 55, 0, 14)
    Title.Size = UDim2.new(0, 10, 0, 20)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "EtherX Hub"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 16.000
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Desc.Parent = Frame
    Desc.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    Desc.BackgroundTransparency = 1.000
    Desc.Position = UDim2.new(0, 55, 0, 33)
    Desc.Size = UDim2.new(0, 10, 0, 10)
    Desc.Font = Enum.Font.GothamSemibold
    Desc.TextTransparency = .3
    Desc.Text = desc
    Desc.TextColor3 = Color3.fromRGB(200, 200, 200)
    Desc.TextSize = 12.000
    Desc.TextXAlignment = Enum.TextXAlignment.Left
    
    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = Frame

    Frame:TweenPosition(UDim2.new(1, -200, 0, 0),"Out","Quad",0.4,true)
    wait(2)
    Frame:TweenPosition(UDim2.new(1, 0, 0, 0),"Out","Quad",0.5,true)
    wait(0.6)
    Frame:Destroy()
end
return Alert
