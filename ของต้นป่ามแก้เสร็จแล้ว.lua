--find old ui
if game.CoreGui:FindFirstChild("hehe") then 
    game.CoreGui:FindFirstChild("hehe"):Destroy() 
end

--create ScreenGui
local className = "ScreenGui"
local parent = game.CoreGui
local part = Instance.new(className, parent)
part.Name = "hehe"

wait(.2)

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local Text = Instance.new(className, parent)

--setting TextLabel
Text.Name = "textname"
Text.Text = game:GetService("Players").LocalPlayer.Name
Text.Position = UDim2.new(0, 175, 0, 25)
Text.TextSize = 25
Text.TextColor3 = Color3.new(255,255,255)
Text.TextStrokeTransparency = 0

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local TextDF = Instance.new(className, parent)

--setting TextLabel
TextDF.Name = "TextDF"
TextDF.TextSize = 30
TextDF.TextStrokeTransparency = 0

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local TextMN = Instance.new(className, parent)

--setting TextLabel
TextMN.Name = "TextMN"
TextMN.TextSize = 30
TextMN.TextColor3 = Color3.new(255,255,255)
TextMN.TextStrokeTransparency = 0

    --create TextLabel
    local className = "TextLabel"
    local parent = game.CoreGui.hehe
    local TextYM = Instance.new(className, parent)

    --setting TextLabel
    TextYM.Name = "TextYM"
    TextYM.TextSize = 30
    TextYM.TextColor3 = Color3.new(255,255,255)
    TextYM.TextStrokeTransparency = 0

    --create TextLabel
    local className = "TextLabel"
    local parent = game.CoreGui.hehe
    local TextBD = Instance.new(className, parent)

    --setting TextLabel
    TextBD.Name = "TextBD"
    TextBD.TextSize = 30
    TextBD.TextColor3 = Color3.new(255,255,255)
    TextBD.TextStrokeTransparency = 0

    --create TextLabel
    local className = "TextLabel"
    local parent = game.CoreGui.hehe
    local TextHS = Instance.new(className, parent)

    --setting TextLabel
    TextHS.Name = "TextHS"
    TextHS.TextSize = 30
    TextHS.TextColor3 = Color3.new(255,255,255)
    TextHS.TextStrokeTransparency = 0

    --create TextLabel
    local className = "TextLabel"
    local parent = game.CoreGui.hehe
    local TextSP = Instance.new(className, parent)

    --setting TextLabel
    TextSP.Name = "TextSP"
    TextSP.TextSize = 30
    TextSP.TextColor3 = Color3.new(255,255,255)
    TextSP.TextStrokeTransparency = 0
    
    --create TextLabel
    local className = "TextLabel"
    local parent = game.CoreGui.hehe
    local TextDD = Instance.new(className, parent)

    --setting TextLabel
    TextDD.Name = "TextDD"
    TextDD.TextSize = 30
    TextDD.TextColor3 = Color3.new(255,255,255)
    TextDD.TextStrokeTransparency = 0

    --create TextLabel
    local className = "TextLabel"
    local parent = game.CoreGui.hehe
    local TextFN = Instance.new(className, parent)

    --setting TextLabel
    TextFN.Name = "TextFN"
    TextFN.TextSize = 30
    TextFN.TextColor3 = Color3.new(255,255,255)
    TextFN.TextStrokeTransparency = 0

function dfcheck()
    DFNAME = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
    --MAS = game:GetService("Players").LocalPlayer.Backpack[DFNAME].Level.Value
    print(DFNAME)
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(DFNAME) then
    if DFNAME == "Soul-Soul" then
        DFMAS = 350
    elseif DFNAME == "Dragon-Dragon" then
        DFMAS = 350
    elseif DFNAME == "Venom-Venom" then
        DFMAS = 300
    elseif DFNAME == "Human-Human: Buddha" then
        DFMAS = 200
    elseif DFNAME == "Quake-Quake" then
        DFMAS = 150
    elseif DFNAME == "Dark-Dark" then
        DFMAS = 110
    elseif DFNAME == "Magma-Magma" then
        DFMAS = 140
    elseif DFNAME == "Ice-Ice" then
        DFMAS = 110
    end
    MAS = game:GetService("Players").LocalPlayer.Backpack[DFNAME].Level.Value
    if MAS >= DFMAS then
        DFFN = true
        TextDF.Position = UDim2.new(0, 85, 0, 60)
        TextDF.TextColor3 = Color3.fromHex("#64ff64")
        TextDF.Text = "มาสผลครบ"
    else
        DFFN = false
        TextDF.Position = UDim2.new(0, 120, 0, 60)
        TextDF.TextColor3 = Color3.fromHex("#ff3232")
        TextDF.Text = "มาสผลยังไม่ครบ"
    end
    else
        DFFN = false
        TextDF.Position = UDim2.new(0, 110, 0, 60)
        TextDF.TextColor3 = Color3.fromHex("#ff3232")
        TextDF.Text = "ไม่มีผลน้าบอุนจิ"
    end
end

function moneycheck()
    MONEY = game:GetService("Players").LocalPlayer.Data.Beli.Value
    if MONEY >= 15000000 then
        MNFN = true
        TextMN.Position = UDim2.new(0, 90, 0, 95)
        TextMN.TextColor3 = Color3.fromHex("#64ff64")
        TextMN.Text = "เงินครบแล้ว"
    elseif MONEY <= 15000000 then
        MNFN = false
        TextMN.Position = UDim2.new(0, 97, 0, 95)
        TextMN.TextColor3 = Color3.fromHex("#ff3232")
        TextMN.Text = "เงินยังไม่ครบ"
    end
end

function checkitem()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    wait(.2)
    
    now = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Current.ScrollingFrame.Frame
    inven = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Stored.ScrollingFrame.Frame
    
    if now:FindFirstChild("Yama") then
        print("Have Yama in hand")
        YMFN = true
        TextYM.Position = UDim2.new(0, 55, 0, 130)
        TextYM.TextColor3 = Color3.fromHex("#64ff64")
        TextYM.Text = "มียามะ"
    elseif inven:FindFirstChild("Yama") then
        print("Have Yama in inven")
        YMFN = true
        TextYM.Position = UDim2.new(0, 55, 0, 130)
        TextYM.TextColor3 = Color3.fromHex("#64ff64")
        TextYM.Text = "มียามะ"
    else
        print("No Yama Bitch")
        YMFN = false
        TextYM.Position = UDim2.new(0, 70, 0, 130)
        TextYM.TextColor3 = Color3.fromHex("#ff3232")
        TextYM.Text = "ไม่มียามะ"
    end
    
    if now:FindFirstChild("Buddy Sword") then
        print("Have Buddy in hand")
        BDFN = true
        TextBD.Position = UDim2.new(0, 55, 0, 165)
        TextBD.TextColor3 = Color3.fromHex("#64ff64")
        TextBD.Text = "มีบัดดี้"
    elseif inven:FindFirstChild("Buddy Sword") then
        print("Have Buddy in inven")
        BDFN = true
        TextBD.Position = UDim2.new(0, 55, 0, 165)
        TextBD.TextColor3 = Color3.fromHex("#64ff64")
        TextBD.Text = "มีบัดดี้"
    else
        print("No Buddy Bitch")
        BDFN = false
        TextBD.Position = UDim2.new(0, 60, 0, 165)
        TextBD.TextColor3 = Color3.fromHex("#ff3232")
        TextBD.Text = "ไม่บัดดี้"
    end
    
    if now:FindFirstChild("Hallow Scythe") then
        print("Have Hallow in hand")
        HSFN = true
        TextHS.Position = UDim2.new(0, 55, 0, 200)
        TextHS.TextColor3 = Color3.fromHex("#64ff64")
        TextHS.Text = "มีเคียว"
    elseif inven:FindFirstChild("Hallow Scythe") then
        print("Have Hallow in inven")
        HSFN = true
        TextHS.Position = UDim2.new(0, 55, 0, 200)
        TextHS.TextColor3 = Color3.fromHex("#64ff64")
        TextHS.Text = "มีเคียว"
    else
        print("No Hallow Bitch")
        HSFN = false
        TextHS.Position = UDim2.new(0, 75, 0, 200)
        TextHS.TextColor3 = Color3.fromHex("#ff3232")
        TextHS.Text = "ไม่มีเคียว"
    end    

    if now:FindFirstChild("Spikey Trident") then
        print("Have Spikey in hand")
        SPFN = true
        TextSP.Position = UDim2.new(0, 65, 0, 235)
        TextSP.TextColor3 = Color3.fromHex("#64ff64")
        TextSP.Text = "มีหอกคาตา"
    elseif inven:FindFirstChild("Spikey Trident") then
        print("Have Spikey in inven")
        SPFN = true
        TextSP.Position = UDim2.new(0, 65, 0, 235)
        TextSP.TextColor3 = Color3.fromHex("#64ff64")
        TextSP.Text = "มีหอกคาตา"
    else
        print("No Spikey Bitch")
        SPFN = false
        TextSP.Position = UDim2.new(0, 106, 0, 235)
        TextSP.TextColor3 = Color3.fromHex("#ff3232")
        TextSP.Text = "ไม่มีหอกคาตา"
    end
    
    if now:FindFirstChild("Dark Dagger") then
        print("Have Dark Dagger in hand")
        DDFN = true
        TextDD.Position = UDim2.new(0, 65, 0, 270)
        TextDD.TextColor3 = Color3.fromHex("#64ff64")
        TextDD.Text = "มีโยรจุิ๋ว"
    elseif inven:FindFirstChild("Dark Dagger") then
        print("Have Dark Dagger in inven")
        DDFN = true
        TextDD.Position = UDim2.new(0, 65, 0, 270)
        TextDD.TextColor3 = Color3.fromHex("#64ff64")
        TextDD.Text = "มีโยรจุิ๋ว"
    else
        print("No Dark Dagger Bitch")
        DDFN = false
        TextDD.Position = UDim2.new(0, 83, 0, 270)
        TextDD.TextColor3 = Color3.fromHex("#ff3232")
        TextDD.Text = "ไม่มีโยรุจิ๋ว"
    end    
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
end

function FNcheck()
    if DFFN and MNFN and YMFN and BDFN and HSFN and STFN and DDFN then
        TextFN.Position = UDim2.new(0, 155, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#64ff64")
        TextFN.Text = "ไก่โคตรครบ ปิดเลย"
    elseif DFFN and MNFN and YMFN and BDFN and HSFN and STFN then
        TextFN.Position = UDim2.new(0, 160, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#64ff64")
        TextFN.Text = "ไก่ครบขาดแค่โยรุจิ๋ว"
    elseif DFFN and MNFN and YMFN and BDFN and STFN then
        TextFN.Position = UDim2.new(0, 160, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#FFFF00")
        TextFN.Text = "ขาดเคียวกับโยรุจิ๋ว"
    elseif DFFN and MNFN and YMFN and BDFN and HSFN then
        TextFN.Position = UDim2.new(0, 160, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#FFFF00")
        TextFN.Text = "ขาดคาตากับโยรุจิ๋ว"
    elseif DFFN and MNFN and YMFN and BDFN and DDFN then
        TextFN.Position = UDim2.new(0, 115, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#FFFF00")
        TextFN.Text = "ขาดเคียว คาตา"
    elseif DFFN and MNFN and YMFN and BDFN then
        TextFN.Position = UDim2.new(0, 160, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#FFFF00")
        TextFN.Text = "ขาดเคียว โยรุจิ๋ว คาตา"
    else
        TextFN.Position = UDim2.new(0, 126, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#ff3232")
        TextFN.Text = "ไก่กากยังไม่เสร็จ"
    end
end

function refresh()
    TextDF.Text = ""
    TextDF.Position = UDim2.new(0, 100, 0, 130)
    TextDF.TextColor3 = Color3.fromHex("#ffffff")
    TextMN.Text = ""
    TextMN.Position = UDim2.new(0, 100, 0, 95)
    TextMN.TextColor3 = Color3.fromHex("#ffffff")
    TextFN.Text = ""
    TextFN.Position = UDim2.new(0, 100, 0, 60)
    TextFN.TextColor3 = Color3.fromHex("#ffffff")
    TextYM.Text = ""
    TextYM.Position = UDim2.new(0, 100, 0, 130)
    TextYM.TextColor3 = Color3.fromHex("#ffffff")
    TextBD.Text = ""
    TextBD.Position = UDim2.new(0, 100, 0, 130)
    TextBD.TextColor3 = Color3.fromHex("#ffffff")
    TextHS.Text = ""
end

spawn(function()
    while wait() do
        pcall(function()
            dfcheck()
            moneycheck()
            checkitem()
            FNcheck()
            wait(10)
            refresh()
            wait(1)
        end)
    end
end)