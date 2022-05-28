if game.PlaceId == 2534724415 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Argon Hub ERLC", "DarkTheme")
    local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
    local plr = game:GetService("Players").LocalPlayer
    local plrs = game:GetService("Players")
    getgenv()["IrisAd"]=true

    spawn(function()
        Notification.Notify("Argon Hub", "Dedected game is ERLC Loading...", "rbxassetid://4914902889");
    end)
    
    wait(3)
    spawn(function()
    Notification.WallNotification("Argon Hub", "Version 1.0 made by McletsHacks github.com/mcletshacks/", {
    Duration = 5,
    TitleSettings = {
        Enabled = true
    }
})
end)

    wait(5)
    spawn(function()
        Notification.Notify("Argon Hub", "Loading Gui", "rbxassetid://4914902889");
    end)

    wait(5)
    spawn(function()
        Notification.Notify("Argon Hub", "Loaded Version 1.0", "rbxassetid://4914902889");
    end)

    local function getCar()
    local vehicles = game.Workspace.Vehicles
    
    for _,v in pairs(vehicles:GetChildren()) do
        if v["Control_Values"].Owner.Value == tostring(plr.Name) then
            return v
        end
    end
end

    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local OtherSection = Player:NewSection("Other")
    local CarSection = Player:NewSection("Car")

    --Tools
    local Player = Window:NewTab("Tools")
    local ToolsSection = Player:NewSection("tools")

    --Weapons
    local Player = Window:NewTab("Weapons")
    local PistolsSection = Player:NewSection("Pistols")
    local OthersSection = Player:NewSection("Others")

    --Teleports
    local Player = Window:NewTab("Teleports")
    local NormalSection = Player:NewSection("Normal")
    local CriminalSection = Player:NewSection("Criminal")
    local SafeSection = Player:NewSection("Safe")
    local SpecialSection = Player:NewSection("Special")

    --AutoFarn
    local Player = Window:NewTab("AutoFarm")
    local PostalSection = Player:NewSection("PostalFarm")

    --Dev
    local Player = Window:NewTab("Dev")
    local DevTpSection = Player:NewSection("DevTp")

    --Credits
    local Player = Window:NewTab("Credits")
    local UiSection = Player:NewSection("HUD / UI LIB")
    local MainCSection = Player:NewSection("Main Coding")
    local WlSection = Player:NewSection("WhiteList")

--Player

PlayerSection:NewToggle("Infinite Stamina", "Run or Jump stamina never goes down", function(state)
    for count = 1, 1 do
    Notification.Notify("Argon Hub", "If you disable you die to reset your stamina!", "rbxassetid://4914902889");
    end
    if state then
      for count = 1, 9999999 do
            plr.PlayerGui.GameGui.BottomLeft.Health["Stamina LS"].Stamina.Value = 900
       wait(0.01)
     end
   else
    Notification.Notify("Argon Hub", "Resetet stamina", "rbxassetid://4914902889");
        plr.Character.Humanoid.Health = 0
    end
end)

PlayerSection:NewButton("Instand die", "Kill the LocalPlayer in  1sec", function()
    wait(0.5)
    plr.Character.Humanoid.Health = 0
end)

OtherSection:NewButton("Get all tools", "Get all criminal tools", function ()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-432.881439, 25.0780354, -708.581116, -0.872454941, 8.21081603e-09, -0.488694549, 3.00499536e-08, 1, -3.68459467e-08, 0.488694549, -4.68316763e-08, -0.872454941) + Vector3.new(0,7,0)
    wait(1)
    game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer("RFID Disruptor")
    wait(1)
    game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer("Drill")
    wait(1)
    game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer("Lockpick")
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

CarSection:NewButton("Get in Car", "Teleport you in your spawned car", function ()
    local myCar = getCar()
    if plr.Character.Humanoid.Sit then
    game.StarterGui:SetCore("SendNotification", {Title = "Error!", Text = "You cannot be sitting.", Duration = "1"})
    else
    plr.Character.HumanoidRootPart.CFrame = myCar.Body.Base.CFrame + Vector3.new(0,7,0) - Vector3.new(0,0,2)
    wait(0.1)
    myCar.DriverSeat:Sit(plr.Character.Humanoid)
    end
end)

CarSection:NewButton("Bring Car", "Bring your car to you if you spawned one", function ()
    local myCar = getCar()
        local oldCFrame = plr.Character.HumanoidRootPart.Position
        if plr.Character.Humanoid.Sit then
        game.StarterGui:SetCore("SendNotification", {Title = "Error!", Text = "You cannot be sitting.", Duration = "1"})
        else
        plr.Character.HumanoidRootPart.CFrame = myCar.Body.Base.CFrame + Vector3.new(0,7,0) - Vector3.new(0,0,2)
        wait(0.1)
        myCar.DriverSeat:Sit(plr.Character.Humanoid)
        wait(0.2)
        myCar:SetPrimaryPartCFrame(CFrame.new(oldCFrame))
        end
end)

--Tools

ToolsSection:NewButton("Get Scanner", "This will give the Player a Scanner", function ()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-433.069611, 24.5480366, -708.562866, -0.909992874, 7.25619431e-09, -0.414623857, 3.68492725e-09, 1, 9.41319822e-09, 0.414623857, 7.03808478e-09, -0.909992874) + Vector3.new(0,7,0)
    wait(1)
    game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer("Scanner")
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

ToolsSection:NewButton("Get Baseball Bat", "This will give the Player a Baseball Bat to kill other Players", function ()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-433.069611, 24.5480366, -708.562866, -0.909992874, 7.25619431e-09, -0.414623857, 3.68492725e-09, 1, 9.41319822e-09, 0.414623857, 7.03808478e-09, -0.909992874) + Vector3.new(0,7,0)
    wait(1)
    game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer("Baseball Bat")
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

ToolsSection:NewButton("Get Hammer", "This will give you a Hammer to kill other Players", function ()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-433.069611, 24.5480366, -708.562866, -0.909992874, 7.25619431e-09, -0.414623857, 3.68492725e-09, 1, 9.41319822e-09, 0.414623857, 7.03808478e-09, -0.909992874) + Vector3.new(0,7,0)
    wait(1)
    game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer("Hammer")
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

ToolsSection:NewButton("Get Knife", "This will give you a Knife to kill other Players", function ()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-433.069611, 24.5480366, -708.562866, -0.909992874, 7.25619431e-09, -0.414623857, 3.68492725e-09, 1, 9.41319822e-09, 0.414623857, 7.03808478e-09, -0.909992874) + Vector3.new(0,7,0)
    wait(1)
    game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer("Knife")
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

ToolsSection:NewButton("Get Flashlight", "This will give you a Flashlight for the night or some RP", function ()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-433.069611, 24.5480366, -708.562866, -0.909992874, 7.25619431e-09, -0.414623857, 3.68492725e-09, 1, 9.41319822e-09, 0.414623857, 7.03808478e-09, -0.909992874) + Vector3.new(0,7,0)
    wait(1)
    game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer("Flashlight")
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

--Weapons

PistolsSection:NewButton("Get Beretta M9", "This will give you the Beretta M9", function()
    local ohString1 = "Beretta M9"
    local ohString2 = "Beretta M9"
    local ohBoolean2 = true
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.78455, 24.238018, -187.764633, -0.0505038761, -5.8459861e-08, -0.998723865, -1.82712212e-09, 1, -5.84421649e-08, 0.998723865, -1.12676535e-09, -0.0505038761) + Vector3.new(0,7,0)
    game:GetService("ReplicatedStorage").FE.BuyGun:InvokeServer(ohString1)
    wait(1)
    game:GetService("ReplicatedStorage").FE.EquipGun:InvokeServer(ohString2, ohBoolean2)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

PistolsSection:NewButton("Get Colt M1911", "This will give you the Colt M1911", function()
    local ohString1 = "Colt M1911"
    local ohString2 = "Colt M1911"
    local ohBoolean2 = true
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.78455, 24.238018, -187.764633, -0.0505038761, -5.8459861e-08, -0.998723865, -1.82712212e-09, 1, -5.84421649e-08, 0.998723865, -1.12676535e-09, -0.0505038761) + Vector3.new(0,7,0)
    game:GetService("ReplicatedStorage").FE.BuyGun:InvokeServer(ohString1)
    wait(1)
    game:GetService("ReplicatedStorage").FE.EquipGun:InvokeServer(ohString2, ohBoolean2)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

PistolsSection:NewButton("Get Desert Eagle", "This will give you the Desert Eagle", function()
    local ohString1 = "Desert Eagle"
    local ohString2 = "Desert Eagle"
    local ohBoolean2 = true
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.78455, 24.238018, -187.764633, -0.0505038761, -5.8459861e-08, -0.998723865, -1.82712212e-09, 1, -5.84421649e-08, 0.998723865, -1.12676535e-09, -0.0505038761) + Vector3.new(0,7,0)
    game:GetService("ReplicatedStorage").FE.BuyGun:InvokeServer(ohString1)
    wait(1)
    game:GetService("ReplicatedStorage").FE.EquipGun:InvokeServer(ohString2, ohBoolean2)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

OthersSection:NewButton("Get M14", "This will give you the M14", function()
    local ohString1 = "M14"
    local ohString2 = "M14"
    local ohBoolean2 = true
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.78455, 24.238018, -187.764633, -0.0505038761, -5.8459861e-08, -0.998723865, -1.82712212e-09, 1, -5.84421649e-08, 0.998723865, -1.12676535e-09, -0.0505038761) + Vector3.new(0,7,0)
    game:GetService("ReplicatedStorage").FE.BuyGun:InvokeServer(ohString1)
    wait(1)
    game:GetService("ReplicatedStorage").FE.EquipGun:InvokeServer(ohString2, ohBoolean2)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

OthersSection:NewButton("Get AK47", "This will give you the AK47", function()
    local ohString1 = "AK47"
    local ohString2 = "AK47"
    local ohBoolean2 = true
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.78455, 24.238018, -187.764633, -0.0505038761, -5.8459861e-08, -0.998723865, -1.82712212e-09, 1, -5.84421649e-08, 0.998723865, -1.12676535e-09, -0.0505038761) + Vector3.new(0,7,0)
    game:GetService("ReplicatedStorage").FE.BuyGun:InvokeServer(ohString1)
    wait(1)
    game:GetService("ReplicatedStorage").FE.EquipGun:InvokeServer(ohString2, ohBoolean2)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

OthersSection:NewButton("Get Remington 870", "This will give you the Remington 870", function()
    local ohString1 = "Remington 870"
    local ohString2 = "Remington 870"
    local ohBoolean2 = true
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.78455, 24.238018, -187.764633, -0.0505038761, -5.8459861e-08, -0.998723865, -1.82712212e-09, 1, -5.84421649e-08, 0.998723865, -1.12676535e-09, -0.0505038761) + Vector3.new(0,7,0)
    game:GetService("ReplicatedStorage").FE.BuyGun:InvokeServer(ohString1)
    wait(1)
    game:GetService("ReplicatedStorage").FE.EquipGun:InvokeServer(ohString2, ohBoolean2)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

OthersSection:NewButton("Get Skorpion", "This will give you the Skorpion", function()
    local ohString1 = "Skorpion"
    local ohString2 = "Skorpion"
    local ohBoolean2 = true
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.78455, 24.238018, -187.764633, -0.0505038761, -5.8459861e-08, -0.998723865, -1.82712212e-09, 1, -5.84421649e-08, 0.998723865, -1.12676535e-09, -0.0505038761) + Vector3.new(0,7,0)
    game:GetService("ReplicatedStorage").FE.BuyGun:InvokeServer(ohString1)
    wait(1)
    game:GetService("ReplicatedStorage").FE.EquipGun:InvokeServer(ohString2, ohBoolean2)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

OthersSection:NewButton("Get TEC-9", "This will give you the TEC-9", function()
    local ohString1 = "TEC-9"
    local ohString2 = "TEC-9"
    local ohBoolean2 = true
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.78455, 24.238018, -187.764633, -0.0505038761, -5.8459861e-08, -0.998723865, -1.82712212e-09, 1, -5.84421649e-08, 0.998723865, -1.12676535e-09, -0.0505038761) + Vector3.new(0,7,0)
    game:GetService("ReplicatedStorage").FE.BuyGun:InvokeServer(ohString1)
    wait(1)
    game:GetService("ReplicatedStorage").FE.EquipGun:InvokeServer(ohString2, ohBoolean2)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

OthersSection:NewButton("Get LMT L129A1", "This will give you the LMT L129A1", function()
    local ohString1 = "LMT L129A1"
    local ohString2 = "LMT L129A1"
    local ohBoolean2 = true
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.78455, 24.238018, -187.764633, -0.0505038761, -5.8459861e-08, -0.998723865, -1.82712212e-09, 1, -5.84421649e-08, 0.998723865, -1.12676535e-09, -0.0505038761) + Vector3.new(0,7,0)
    game:GetService("ReplicatedStorage").FE.BuyGun:InvokeServer(ohString1)
    wait(1)
    game:GetService("ReplicatedStorage").FE.EquipGun:InvokeServer(ohString2, ohBoolean2)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

OthersSection:NewButton("Get KRISS Vektor-SMG", "This will give you the KRISS Vektor-SMG", function()
    local ohString1 = "KRISS Vektor-SMG"
    local ohString2 = "KRISS Vektor-SMG"
    local ohBoolean2 = true
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.78455, 24.238018, -187.764633, -0.0505038761, -5.8459861e-08, -0.998723865, -1.82712212e-09, 1, -5.84421649e-08, 0.998723865, -1.12676535e-09, -0.0505038761) + Vector3.new(0,7,0)
    game:GetService("ReplicatedStorage").FE.BuyGun:InvokeServer(ohString1)
    wait(1)
    game:GetService("ReplicatedStorage").FE.EquipGun:InvokeServer(ohString2, ohBoolean2)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end)

--Teleports

NormalSection:NewButton("Spawn", "This Teleports you to the Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-481.649658, 23.7004681, 588.989929, 0.998634696, 1.67878547e-08, -0.0522376075, -1.67533898e-08, 1, 1.09763287e-09, 0.0522376075, -2.20977237e-10, 0.998634696) + Vector3.new(0,7,0)
end)

NormalSection:NewButton("Gun Store", "This Teleports you to the Gun Store", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1221.93091, 24.2380199, -187.417526, -0.217997923, -2.73552896e-08, -0.975949228, 3.50625018e-09, 1, -2.8812611e-08, 0.975949228, -9.70301173e-09, -0.217997923) + Vector3.new(0,7,0)
end)

NormalSection:NewButton("Police Station in", "This Teleports you to the ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(773.507874, 3.81367707, -78.6024857, -0.0521919988, -2.2008475e-08, -0.99863708, -1.25538557e-08, 1, -2.1382407e-08, 0.99863708, 1.1420755e-08, -0.0521919988) + Vector3.new(0,7,0)
end)

NormalSection:NewButton("Fire Station", "This Teleports you to the Fire Station spawner", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1011.12671, 23.8309422, 140.535019, 0.000251128367, -1.05176161e-08, -0.99999994, -4.56387959e-08, 1, -1.05290772e-08, 0.99999994, 4.56414391e-08, 0.000251128367) + Vector3.new(0,7,0)
end)

NormalSection:NewButton("Hospital", "This Teleports you in the front of the hospital", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-141.562958, 23.2480087, -407.060028, 0.999910116, -4.95608621e-09, -0.0134091647, 3.42747808e-09, 1, -1.14020239e-07, 0.0134091647, 1.13964028e-07, 0.999910116) + Vector3.new(0,7,0)
end)

CriminalSection:NewButton("Bank", "This Teleports you to the Bank Window", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1073.08118, 23.2478619, 384.196869, -0.999964058, -6.56755539e-10, 0.00847968925, 1.84349147e-10, 1, 9.91897267e-08, -0.00847968925, 9.91877229e-08, -0.999964058) + Vector3.new(0,7,0)
end)

CriminalSection:NewButton("Jeweler", "This Teleports you in the Jeweler to a case", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-457.32785, 23.7480011, -450.670532, -0.737415433, 1.97241616e-06, -0.675439417, 1.37347934e-06, 1, 1.42069177e-06, 0.675439417, 1.19937951e-07, -0.737415433) + Vector3.new(0,7,0)
end)

CriminalSection:NewButton("Houses near Farm", "This Teleports you to the Houses near the farm", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-452.917847, -9.26760197, -1886.19556, -0.104433335, -5.94316809e-08, 0.99453187, 6.24410679e-12, 1, 5.97591026e-08, -0.99453187, 6.24705221e-09, -0.104433335) + Vector3.new(0,7,0)
end)

CriminalSection:NewButton("Houses near Sheriff Station", "This Teleports you in the Tool Store", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1105.29419, 23.8730202, -789.549255, -0.999399602, -1.3206633e-10, 0.0346481353, 4.59599101e-13, 1, 3.82489995e-09, -0.0346481353, 3.82261955e-09, -0.999399602) + Vector3.new(0,7,0)
end)

SafeSection:NewButton("Safe Place 1", "Teleport to a safe place too hide", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(561.219727, 0.62011075, 958.73114, -0.999787688, -3.0294423e-08, -0.0206047632, -3.09106056e-08, 1, 2.9586424e-08, 0.0206047632, 3.02170484e-08, -0.999787688) + Vector3.new(0,7,0)
end)

SafeSection:NewButton("Safe Place 2", "Teleport to a safe place too hide", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(881.364197, 7.30930233, 654.59259, 0.950052917, -1.82222504e-09, -0.312088817, 1.33944322e-09, 1, -1.76130344e-09, 0.312088817, 1.25530619e-09, 0.950052917) + Vector3.new(0,7,0)
end)

SpecialSection:NewButton("Comming soon", "These teleports coming soon", function ()
    wait(1)
end)

--AutoFarm

PostalSection:NewButton("Toggle first time befor farm", "This is a info you should read", function(state)
    wait(0.2)
    spawn(function()
    Notification.WallNotification("Argon Hub", "If you disable autofarm it will kick you so wait until you get your money then you can disable", {
    Duration = 5,
    TitleSettings = {
        Enabled = true
    }
})
  end)
end)

PostalSection:NewToggle("AutoFarn", "Full Postal Autofarm", function(state)

    Notification.Notify("Argon Hub", "Code used from hrzn autofarm", "rbxassetid://4914902889");
    wait(1)
    Notification.Notify("Argon Hub", "Thx for give me the code to use it in here", "rbxassetid://4914902889");
    wait(1)
    Notification.Notify("Argon Hub", "Bc you using premium this will repeat 1000 times", "rbxassetid://4914902889");
    wait(1)
    Notification.Notify("Argon Hub", "Also do NOT let it run in background you need to be in the game", "rbxassetid://4914902889");

    if state then

        wait(3)

        for count = 1, 1000 do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(712.758911, 3.70739913, -467.963623, -0.225708678, -3.16804361e-08, -0.974194825, 1.13039764e-08, 1, -3.51385978e-08, 0.974194825, -1.89433624e-08, -0.225708678) + Vector3.new(0,10,0)

        wait(0.5)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(712.758911, 3.70739913, -467.963623, -0.225708678, -3.16804361e-08, -0.974194825, 1.13039764e-08, 1, -3.51385978e-08, 0.974194825, -1.89433624e-08, -0.225708678) + Vector3.new(0,10,0)

        wait(2)

    local args = {
        [1] = "Start",
        [2] = workspace.JobStarters:FindFirstChild("Postal Worker")
    }
    
    game:GetService("ReplicatedStorage").FE.StartJob:InvokeServer(unpack(args))

    wait(2)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(731.328674, 3.70739961, -490.313263, -0.373322487, -6.13480609e-08, -0.927701652, 2.44168508e-08, 1, -7.595483e-08, 0.927701652, -5.10071985e-08, -0.373322487) + Vector3.new(0,10,0)
        
        local args = {
            [1] = workspace.JobTasks:FindFirstChild("Postal Worker Package")
        }
        game:GetService("ReplicatedStorage").FE.PickUpPackages:InvokeServer(unpack(args))


    wait(2)
    
    --1 mail
    local Mail1 = game.Players.LocalPlayer.Backpack['Mail 1'].HousePosition.Value

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mail1) + Vector3.new(0,7,0)
    
    wait(1)
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mail1) + Vector3.new(0,7,0)
    wait(1)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == "Mail 1" then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end

    wait(1)
    keypress(0x45)
    wait(0.5)
    keyrelease(0x45)

    wait(2)
    
    --2 mail
    local Mail2 = game.Players.LocalPlayer.Backpack['Mail 2'].HousePosition.Value

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mail2) + Vector3.new(0,7,0)
    
    wait(1)
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mail2) + Vector3.new(0,7,0)
    wait(1)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == "Mail 2" then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
           
    wait(1)
    keypress(0x45)
    wait(0.5)
    keyrelease(0x45)


    wait(2)

    --3 mail
    local Mail3 = game.Players.LocalPlayer.Backpack['Mail 3'].HousePosition.Value

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mail3) + Vector3.new(0,7,0)
    
    wait(1)
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mail3) + Vector3.new(0,7,0)
    wait(1)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == "Mail 3" then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
            
    Wait(2)
    keypress(0x45)
    wait(0.5)
    keyrelease(0x45)

 
    wait(2)

    --4 mail
    local Mail4 = game.Players.LocalPlayer.Backpack['Mail 4'].HousePosition.Value

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mail4) + Vector3.new(0,7,0)
    
    wait(1)
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mail4) + Vector3.new(0,7,0)
    wait(1)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == "Mail 4" then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
          
    wait(2)
    keypress(0x45)
    wait(0.5)
    keyrelease(0x45)


    --for count end
end
    else
        wait(1)
        Notification.Notify("Argon Hub", "Kick in 5 Sec!", "rbxassetid://4914902889");
        game:GetService("ReplicatedStorage").FE.StartJob:InvokeServer("Quit")
        wait(5)
        game.Players.LocalPlayer:Kick("Rejoin and run the script again!")
    end
end)

--Dev

DevTpSection:NewButton("Copy CFrame", "Copy the CFrame to clipboard", function()
    wait(1)
        local playerCFrame = "game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = " .. "CFrame.new(" .. tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) .. ")"
	    setclipboard(playerCFrame)
        Notification.Notify("Argon Hub", "Sucessfull!", "rbxassetid://4914902889");
end)

--Credits
UiSection:NewButton("Show Ui Credits", "will show a meassage withe the credits", function ()
    Notification.Notify("Argon Hub", "The Ui Libary was made by Kavo!", "rbxassetid://4914902889");
end)

MainCSection:NewButton("Show Main Coding Credits", "will show a meassage withe the credits", function ()
    Notification.Notify("Argon Hub", "The Main Coding was made by McletsHacks!", "rbxassetid://4914902889");
end)

WlSection:NewButton("Show Wl Credits", "will show a meassage withe the credits", function ()
    Notification.Notify("Argon Hub", "The Withelist was made by Beemo!", "rbxassetid://4914902889");
end)



















































































































elseif game.PlaceId == 1537690962 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Argon Hub Bee-Swarm", "DarkTheme")
    local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
    local plr = game:GetService("Players").LocalPlayer
    local plrs = game:GetService("Players")
    getgenv()["IrisAd"]=true

    spawn(function()
        Notification.Notify("Argon Hub", "Dedected game is Bee-Swarm Loading...", "rbxassetid://4914902889");
    end)
    
    wait(3)

    spawn(function()
    Notification.WallNotification("Argon Hub", "Version 1.0 made by McletsHacks github.com/mcletshacks/", {
    TitleSettings = {
        Enabled = true
    }
})
end)

    wait(5)
    spawn(function()
        Notification.Notify("Argon Hub", "Loading Gui", "rbxassetid://4914902889");
    end)

    wait(5)
    spawn(function()
        Notification.Notify("Argon Hub", "Loaded Version 1.0", "rbxassetid://4914902889");
    end)

        -- PLAYER
        local Player = Window:NewTab("Player")
        local PlayerSection = Player:NewSection("Player")
        local OtherSection = Player:NewSection("Other")
    
        --AutoFarm
        local Player = Window:NewTab("AutoFarm")
        local FieldSection = Player:NewSection("Field")
    
        --Teleports
        local Player = Window:NewTab("Teleports")
        local NormalSection = Player:NewSection("Normal")
        local ShopsSection = Player:NewSection("Shops")
    
        --Dev
        local Player = Window:NewTab("Dev")
        local DevTpSection = Player:NewSection("DevTp")

        --Credits
        local Player = Window:NewTab("Credits")
        local CreditsSection = Player:NewSection("Gui")
        local CreditsSection = Player:NewSection("Modules")

        DevTpSection:NewButton("Copy CFrame", "Copy the CFrame to clipboard", function()
            wait(1)
                local playerCFrame = "game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = " .. "CFrame.new(" .. tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) .. ")"
                setclipboard(playerCFrame)
                Notification.Notify("Argon Hub", "Sucessfull!", "rbxassetid://4914902889");
        end)
    
        PlayerSection:NewToggle("Inf Jump", "spamm space bar and jump as high as you want", function(state)

            if state then
            _G.infinjump = true   
            local Player = game:GetService("Players").LocalPlayer 
            local Mouse = Player:GetMouse() Mouse.KeyDown:connect(function(k) 
                if _G.infinjump then if k:byte() == 32 then Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") 
                    Humanoid:ChangeState("Jumping") wait(0.1) Humanoid:ChangeState("Seated") 
                end 
            end 
        end)   
                local Player = game:GetService("Players").LocalPlayer 
                local Mouse = Player:GetMouse() 
                Mouse.KeyDown:connect(function(k) k = k:lower() if k == "f" then if _G.infinjump == true then _G.infinjump = false else _G.infinjump = true 
                end
             end
            end)
        else
            _G.infinjump = false
        end
    end)

        PlayerSection:NewToggle("WalkSpeed", "This will let you walk faster", function (state)
            if state then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
            else
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            end
        if plr.Character.Humanoid.Health == 0 and state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
        end
    end)

    FieldSection:NewToggle("AutoFarm Field 1", "Full autorob", function (state)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.9234772, 4.3891468, 332.7966, -0.999989033, 9.02080721e-09, -0.00467849569, 9.07045816e-09, 1, -1.0591422e-08, 0.00467849569, -1.06337419e-08, -0.999989033)
        wait(1)
        keypress(0x45)
        wait(0.5)
        keyrelease(0x45)
        wait(2)
        
        if state then

        for count = 1, 9999999 do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19.2149429, 4.12690639, 200.8367, -0.99834913, -2.41339859e-09, 0.057437513, -2.36206232e-09, 1, 9.61668967e-10, -0.057437513, 8.24410318e-10, -0.99834913)
                wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    workspace.RebeccaBerry3.Scooper.ClickEvent:FireServer()
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.9234772, 4.3891468, 332.7966, -0.999989033, 9.02080721e-09, -0.00467849569, 9.07045816e-09, 1, -1.0591422e-08, 0.00467849569, -1.06337419e-08, -0.999989033)
                    wait(1)
                    keypress(0x45)
                    wait(0.5)
                    keyrelease(0x45)
                    wait(50)
            end
else
    wait(1)
    game.Players.LocalPlayer:Kick("I kicked you to disable AutoFarm Please rejoin")
end
end)

    NormalSection:NewButton("Field 1", "Teleport you too the 1 field", function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-30.894125, 4.12690639, 213.748703, -0.0394124836, 8.79937545e-08, -0.999223053, -1.16154695e-08, 1, 8.85203235e-08, 0.999223053, 1.50952495e-08, -0.0394124836)
    end)

    NormalSection:NewButton("Field 2", "Teleport you too the 2 field", function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-52.8375435, 4.12690449, 137.833054, 0.996097565, -9.28727584e-09, -0.0882586837, 5.53435386e-09, 1, -4.27665476e-08, 0.0882586837, 4.21111999e-08, 0.996097565)
    end)
    
    NormalSection:NewButton("Field 3", "Teleport you too the 3 field", function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-192.019592, 4.12690449, 167.700974, 0.0780974776, -6.13649007e-08, 0.996945739, -1.16628982e-08, 1, 6.24665333e-08, -0.996945739, -1.6505755e-08, 0.0780974776)
    end)
    
    NormalSection:NewButton("Beehive", "Teleport you too the Beehive", function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-88.2325821, 4.12690449, 315.41626, -0.998439968, 1.97665759e-08, -0.0558356643, 1.32596139e-08, 1, 1.16908211e-07, 0.0558356643, 1.15985472e-07, -0.998439968)
    end)
    
    ShopsSection:NewButton("Shop near spawn", "Teleport you too the Shop near the Spawn", function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-88.2325821, 4.12690449, 315.41626, -0.998439968, 1.97665759e-08, -0.0558356643, 1.32596139e-08, 1, 1.16908211e-07, 0.0558356643, 1.15985472e-07, -0.998439968)
    end)
end
