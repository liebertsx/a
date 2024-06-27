-- Made By liebertsx#0000
-- Enjoy Skid Or remake (credit)
-- Im making this script,ui on mobile

local lib = {}

function lib:Create(key, link, script)
    local Key = Instance.new("ScreenGui")
    Key.Name = "Key"
    Key.Parent = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
    Key.ResetOnSpawn = false

    local Frame = Instance.new("Frame", Key)
    Frame.Name = "Frame"
    Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0, 220, 0, 50)
    Frame.Size = UDim2.new(0, 325, 0, 215)
    Instance.new("UICorner", Frame)

    local Title = Instance.new("TextLabel", Frame)
    Title.Name = "Title"
    Title.Font = Enum.Font.BuilderSansExtraBold
    Title.FontSize = Enum.FontSize.Size24
    Title.Text = "Key System"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 0.1
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(0, 325, 0, 50)
    Title.BackgroundColor3 = Color3.fromRGB(30,30,30)
    Instance.new("UICorner", Title)

    local exit = Instance.new("ImageButton", Title)
    exit.Name = "exit"
    exit.Image = "rbxassetid://7733997870"
    exit.BackgroundTransparency = 1
    exit.Position = UDim2.new(0.9, 0, 0.3, 0)
    exit.Size = UDim2.new(0, 20, 0, 20)

    local Frame_2 = Instance.new("Frame", Frame)
    Frame_2.Name = "Frame"
    Frame_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Frame_2.BorderSizePixel = 0
    Frame_2.Position = UDim2.new(0, 0, 0, 45)
    Frame_2.Size = UDim2.new(0, 325, 0, 10)

    local Desc = Instance.new("TextLabel", Frame_2)
    Desc.Name = "Desc"
    Desc.Font = Enum.Font.BuilderSansExtraBold
    Desc.FontSize = Enum.FontSize.Size18
    Desc.Text = "Hi! Welcome to Key System"
    Desc.TextColor3 = Color3.fromRGB(255, 255, 255)
    Desc.BackgroundTransparency = 0.1
    Desc.BorderSizePixel = 0
    Desc.Size = UDim2.new(0, 325, 0, 50)
    Desc.BackgroundColor3 = Color3.FromRGB(40,40,40)

    local KeyInput = Instance.new("TextBox", Frame)
    KeyInput.Name = "KeyInput"
    KeyInput.Font = Enum.Font.BuilderSansExtraBold
    KeyInput.FontSize = Enum.FontSize.Size18
    KeyInput.PlaceholderText = "Enter Key"
    KeyInput.Text = ""
    KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyInput.Size = UDim2.new(0, 305, 0, 40)
    KeyInput.Position = UDim2.new(0, 10, 0, 100)
    KeyInput.BackgroundTransparency = 0.1
    KeyInput.BorderSizePixel = 0
    KeyInput.BackgroundColor3 = Color3.FromRGB(40,40,40)
    Instance.new("UICorner", KeyInput)
    
    local GetKey = Instance.new("TextButton", Frame)
    GetKey.Name = "GetKey"
    GetKey.Font = Enum.Font.BuilderSansExtraBold
    GetKey.FontSize = Enum.FontSize.Size18
    GetKey.Text = "Get Key"
    GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
    GetKey.Size = UDim2.new(0, 150, 0, 50)
    GetKey.Position = UDim2.new(0, 165, 0, 155)
    GetKey.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    GetKey.BorderSizePixel = 0
    Instance.new("UICorner", GetKey)

    local CheckKey = Instance.new("TextButton", Frame)
    CheckKey.Name = "CheckKey"
    CheckKey.Font = Enum.Font.BuilderSansExtraBold
    CheckKey.FontSize = Enum.FontSize.Size18
    CheckKey.Text = "Check Key"
    CheckKey.TextColor3 = Color3.fromRGB(255, 255, 255)
    CheckKey.Size = UDim2.new(0, 150, 0, 50)
    CheckKey.Position = UDim2.new(0, 10, 0, 155)
    CheckKey.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    CheckKey.BorderSizePixel = 0
    Instance.new("UICorner", CheckKey)

    local function checkKey()
        if KeyInput.Text == key then
            print("Key is correct! Loading other script...")
            Key:Destroy()
            loadstring(script)() 
        else
            KeyInput.Text = "The key is invalid! Try again."
            wait(2)
            KeyInput.Text = "Enter Key"
        end
    end

    CheckKey.MouseButton1Click:Connect(checkKey)
    
    exit.MouseButton1Click:Connect(function()
        Key:Destroy()
    end)

    GetKey.MouseButton1Click:Connect(function()
        setclipboard(link)
    end)

    return {
        Frame = Frame,
        KeyInput = KeyInput,
        exit = exit,
        GetKey = GetKey,
        CheckKey = CheckKey
    }
end

return lib
