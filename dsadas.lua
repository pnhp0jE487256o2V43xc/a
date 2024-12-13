repeat wait() until game:IsLoaded()

if game.PlaceId ~= 112420803 and game.PlaceId ~= 115670532 then
    return
end

if getgenv().JISATSU then
    return
end
getgenv().JISATSU = true

local Settings = {
    ["prefix"] = "<",
    ["whitelisted"] = {},
    ["blacklistedPlayers"] = {"Instlgator","blue20043","Arman2oooo","aonhayhoinon011","KsiPrimeUwu","BarfinOnTheHomeless","immutate","Famouson4chan","ospedaIe","FAMUSPURPLE","Muffins4evar","an1emono"},
    ["autoruncmds"] = {"nok", "antikick", "anticolkick", "clrlogs"},
    ["vars"] = {purgemethod = "rocket"},
    ["mymusiconly"] = true,
    ["mymusiconly_ID"] = 9046863579,
    ["hidegears"] = "00000000000000000000000000000000000000000000",
    ["hat"] = "18219890448",
    ["alowads"] = true,
    ["antilogs"] = true,
    ["hatbanned"] = {5738244883}
}
local Whitelisted = Settings["whitelisted"]
local Banned = Settings["blacklistedPlayers"]
local PersonsAdmin = Settings["Person299's Admin"]
local Toolbans = {}
local cons = {}
local vars = {}
local connections, Loops = {}, {}
local commandlist = {}
local prefix = Settings["prefix"]
local autoruncmds = Settings["autoruncmds"]
local vars = Settings["vars"]
local mymusiconly = Settings["mymusiconly"]
local mymusiconly_ID = Settings["mymusiconly_ID"]
local hidegears = Settings["hidegears"]
local hat = Settings["hat"]
local alowads = Settings["alowads"]
local antilogs = Settings["antilogs"]
local hatbanned = Settings["hatbanned"]
local loadtime = os.clock()
local Stable_Check = true
local nadoublechatkys, blehhhhhhhhh, pdiddyrapedme = false, false, false
local backpackcon, workspacecon = nil, nil
local owner = game.Players.LocalPlayer
local player = owner
local localplayer = owner
local lp = owner
local plr = owner
local chr, character, char = owner.Character
local ors, afkstatus, chatlogs, updatedPlayerList = nil, true, true, true
local consoleOn = true
game:GetService("RunService").RenderStepped:Connect(
    function()
        chr = owner.Character
    end
)

Quotes = {
    "i completely cleared a khols admin server",
    "What every tool in AdminJoy looks like when doing the command ;alltools",
    "ayyyyy i have the owner of admin joy",
    "he is my friend",
    "ClassicClient-source",
    "DDOSER-APRIL2-PATCH.exe",
    "FastColoredTextBox.dll",
    "Best MCPE hack IS shortcut :D",
    "Powered by muffins",
    "gg ez kid",
    "Use the force bitch, Use the force.",
    "I hope you've had a nice start to the week.",
    "raw/d7eTDKbJ",
    "Burned bitch!",
    "ow they dont know u?",
    "bitch",
    "heart",
    "my",
    "steal",
    "Fuck you -Ex_zivye(NOT REALLY)",
    "you can also get private info via exif",
    "i hope u didnt add for clearlogs I word cuz ill hate u",
    ";kill all, What why no work?!?!?!?!",
    ";fly plzz",
    ":shrek me",
    ":admin me",
    ":fly",
    '"Commands"',
    "yo mama xd",
    "Hi! So, you know on ragdoll, I wanna do that baloon thing, do you know how-",
    ";fly",
    "you okay? also, im here to help. if you need help, tell me!",
    "no joke tho- im here to help you if you need help-",
    "Remove the l from clock-",
    "viewing logs I see",
    "aDmIn mE",
    "Hey bitch~",
    "Shortcuts the best MC hack",
    "Fortnite sucks.",
    "Only I can clearlogs",
    "Adminjoy users aren't bright",
    "Do Win+X for perm!",
    "IM GAMERBOY80!",
    "nice bobs",
    "What are you doing step bro!",
    'local dick = "NONE"',
    "May i put my token next to yours...",
    "Among.Us.v2020.11.17s",
    "i have a working kick script",
    "Yo anyone",
    "omg nooooo!!!!",
    "PEE",
    "this will be a roblox id in less then 3 days",
    "Subway Sexist - Subway Surfers Rap",
    "German SpongeBob [EARRAPE]",
    "Why do i get more suggestions from shortcuts general then its suggestions channel...",
    "can someone tell me a free excuter i can use?",
    "[Content Deleted]",
    "#### YOU #####",
    "Laamy is weird/dumb we in da same server what a goat",
    "what is #other-scripts for",
    "wearedevs.net = VIRUS",
    "Im bored, learn lua.",
    "function ChangeColour(Part, Colour)",
    "omg11!!1",
    "the only differents is when he sees me he stands there tripping me ;-;",
    "i met admin joy wner too!1 !11",
    "easyexploits.dll",
    "yes heres so not virus.exe [FILE.txt]",
    "OMG YOU ARE HACKER?1?11/!?/1/!?",
    "Make anti-tp (Im trying)",
    "Took me all fucking day to get this shit",
    "Whats that step br- WHAT!",
    "HACOR!?!?!??!!??",
    "laamy is hacer",
    "i dont think wkick works",
    "[Laggy Text Here]",
    "i-, wdym????",
    "LMAO how did you not see that coming?",
    "Bruh I literally told you not to do that.",
    "Did you just say that with a straight face?",
    "Yo, chill with the script, it's broken now.",
    "Can someone pass me the admin panel? Thx.",
    "No way you're still using that, it’s ancient.",
    "You can’t be serious, that’s way too easy.",
    "Bro, how did you even manage to mess that up?",
    "Stop acting like you're a pro, we all know you suck.",
    "How does it feel to get owned by a script?",
    "When in doubt, just spam ;alltools.",
    "Did you just try to flex with that script? LMAO.",
    "Bro, that’s not even funny, it’s just sad.",
    "Keep talking, I'll just ban you for fun.",
    "Trying to cheat? Watch me disable your account real quick.",
    "You seriously thought that would work?",
    "I can’t even tell if you’re trolling or just dumb.",
    "Trying to bypass with that? Nah, bro, that’s a L.",
    "Man, you’re about to get roasted by the admins.",
    "That's so bad even my grandma could exploit better.",
    "Yo, you're still using that outdated junk?",
    "Why are you even trying to bypass that? It’s not gonna work.",
    "Can’t even script your way out of a paper bag.",
    "Nice try, but you’re not fooling anyone.",
    "Gotta love how people think their hacks are original.",
    "If that was your best move, you’re in trouble.",
    "How many times do I have to tell you? Don't touch my server.",
    "Bruh, you're so bad, even the bots are laughing at you.",
    "Lmao, quit spamming commands, it’s not gonna help.",
    "Yo, just stop before you crash the whole game.",
    "Just leave already, you're not even doing anything.",
    "I could script a better hack in my sleep.",
    "Bro, I could write a better script on a napkin.",
    "Yo, are you seriously trying that again? It’s not gonna work.",
    "Stop pretending you're a hacker, you're barely even a script kiddie.",
    "Man, you’re about to get roasted by the admins.",
    "That's so bad even my grandma could exploit better.",
    "Lmao, quit spamming commands, it’s not gonna help."
}

local function gp(str)
    if str and type(str) == "string" and str ~= "" then
        local players = game.Players:GetPlayers()
        if str:lower() == "all" then
            return players
        elseif str:lower() == "others" then
            table.remove(players, table.find(players, game.Players.LocalPlayer))
            return players
        elseif str:lower() == "me" then
            return {game.Players.LocalPlayer}
        elseif str:lower() == "friends" then
            for i, v in players do
                if not v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
                    table.remove(players, i)
                end
            end
            return players
        elseif str:lower() == "nonfriends" then
            table.remove(players, table.find(players, game.Players.LocalPlayer))
            for i, v in players do
                if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
                    table.remove(players, i)
                end
            end
            return players
        elseif str:lower() == "random" then
            return {players[math.random(1, #players)]}
        else
            players = {}
            for i, v in game.Players:GetPlayers() do
                if
                    v.Name:lower():sub(1, str:len()) == str:lower() or
                        v.DisplayName:lower():sub(1, str:len()) == str:lower()
                 then
                    table.insert(players, v)
                end
            end
            return players
        end
    else
        return {}
    end
end

local function getrgb(Color)
    local Color = BrickColor.new(Color)
    local r = Color.r
    local g = Color.g
    local b = Color.b
    return Color3.new(r, g, b)
end
local function color(part, color)
    local thread =
        coroutine.create(
        function()
            local Arguments = {
                ["Part"] = part,
                ["Color"] = getrgb(color)
            }
            game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild(
                "Remotes"
            ).ServerControls:InvokeServer("PaintPart", Arguments)
        end
    )
    coroutine.resume(thread)
end

if msg then
    msg = msg:lower()

    if string.sub(msg, 1, #prefix + 15) == prefix .. "toggle mymusiconly" then
        mymusiconly = not mymusiconly
        logn("MyMusicOnly is now set to " .. tostring(mymusiconly))

        if mymusiconly then
            chatshit("music " .. mymusiconly_ID)
        end
    end

    if string.sub(msg, 1, #prefix + 14) == prefix .. "toggle mmoid" then
        local new_id = tonumber(string.sub(msg, #prefix + 15))
        if new_id then
            mymusiconly_ID = new_id
            logn("MyMusicOnly_ID is now set to " .. tostring(mymusiconly_ID))

            mymusiconly = true
            chatshit("music " .. mymusiconly_ID)
        else
            logn("Invalid music ID input")
        end
    end

    if mymusiconly then
        local terrain = game:GetService("Workspace").Terrain
        local soundFolder = terrain:FindFirstChild("_Game") and terrain._Game:FindFirstChild("Folder")
        local sound = soundFolder and soundFolder:FindFirstChild("Sound")

        local expectedSoundId = "rbxassetid://" .. mymusiconly_ID
        if not sound or sound.SoundId ~= expectedSoundId then
            chatshit("music " .. mymusiconly_ID)

            if AllowMessages then
                local message = "Automusic active. Playing " .. mymusiconly_ID
                chatshit(message)
            end
        end
    end
end

local function gpfs(str)
    for _, player in pairs(game.Players:GetPlayers()) do
        local target = str:lower()
        if target == "me" then
            return lp
        end
        if target == player.Name:lower():sub(1, #target) or target == player.DisplayName:lower():sub(1, #target) then
            return player
        end
    end
end

local function split(str, sep)
    local result = {}
    for match in (str .. sep):gmatch("(.-)" .. sep) do
        table.insert(result, match)
    end
    return result
end

local function chatshit(message)
    game.Players:Chat(message)
end

local function logn(msg)
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Jisatsu (v3.0.1R)",
            Text = msg,
            Duration = 2.5
        }
    )
end

if chatlogs then
    loadstring(game:HttpGet("https://pastebin.com/raw/yjFbhgVJ", true))()
end

if updatedPlayerList then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pcxo/Perm-Persons-PlayerList/refs/heads/main/KAH"))()
end

local configs = configs or {showafk = true}
local loops = loops or {afk = false}

local lplayer = lp
local hasSentMessage = false

local function handleAFKStatus()
    if configs.showafk and not hasSentMessage then
        if lplayer then
            chatshit("name me [TABBED OUT]\n" .. lplayer.DisplayName)
        end
        chatshit("ff me")
        hasSentMessage = true
    end
    loops.afk = true
    repeat
        task.wait()
        if not lp.Character:FindFirstChild("[TABBED OUT]\n" .. lplayer.DisplayName) then
            task.wait(0.3)
            if lplayer then
                chatshit("name me [TABBED OUT]\n" .. lplayer.DisplayName)
            end
        elseif not lp.Character:FindFirstChild("ForceField") then
            task.wait(0.3)
            chatshit("ff me")
        end
    until not loops.afk
end

local function stopAFKStatus()
    if configs.showafk then
        loops.afk = false
        repeat
            task.wait()
        until not loops.afk
        for _ = 1, 1 do
            chatshit("<fixfilter")
        end
        wait(.3)
        chatshit("unff me")
        chatshit("unname me")
        hasSentMessage = false
    end
end

game:GetService("UserInputService").WindowFocusReleased:Connect(handleAFKStatus)
game:GetService("UserInputService").WindowFocused:Connect(stopAFKStatus)

lplayer.CharacterAdded:Connect(
    function(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.Died:Connect(
            function()
                hasSentMessage = false
                stopAFKStatus()
            end
        )
    end
)

local function monitorHealth(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid:GetPropertyChangedSignal("Health"):Connect(
        function()
            chatshit("god " .. lplayer.Name)
            if humanoid.Health == 0 then
                chatshit("reset " .. lplayer.Name)
            end
        end
    )
end

lplayer.CharacterAdded:Connect(monitorHealth)

if lplayer.Character then
    monitorHealth(lplayer.Character)
end

task.wait(2)
logn(
    "Jisatsu V3 Has Been Loaded In: " ..
        tostring(math.floor((os.clock() - loadtime) * 1000)) .. " ms, Welcome " .. game.Players.LocalPlayer.Name,
    5
)
logn("Script Owned & Developed By Reiko, Cxo, and Knocks", 3)
chatshit(
    "h 😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹\n\n\n\n\n\n\nlocal money = math.huge\n\n\n\n\n\n\n"
)

task.delay(
    0.4,
    function()
        for i, v in pairs(autoruncmds) do
            local splitted = v:split(" ")

            if splitted[1] == "nok" then
                for i, v in pairs(workspace.Terrain._Game.Workspace.Obby:GetChildren()) do
                    if v.CanTouch then
                        v.CanTouch = false
                    end
                end
            elseif splitted[1] == "antikick" then
                if not cons.antikick then
                    cons.antikick =
                        workspace.DescendantAdded:Connect(
                        function(part)
                            if part.Name == "Rocket" or part.Name == "Addon" and part:IsA("BasePart") then
                                part.CanCollide = false
                                part.CanTouch = false
                            elseif
                                part:IsA("Accessory") and tostring(part.AccessoryType) == "Enum.AccessoryType.Back" and
                                    part.Name == "Accessory (Chicken Triangle)"
                             then
                                game:GetService("RunService").RenderStepped:Wait()
                                part:Destroy()
                            end
                        end
                    )
                    for i, part in pairs(workspace:GetDescendants()) do
                        if part.Name == "Rocket" or part.Name == "Addon" and part:IsA("BasePart") then
                            part.CanCollide = false
                            part.CanTouch = false
                        elseif
                            part:IsA("Accessory") and tostring(part.AccessoryType) == "Enum.AccessoryType.Back" and
                                part.Name == "Accessory (Chicken Triangle)"
                         then
                            part:Destroy()
                        end
                    end
                end
            elseif splitted[1] == "anticolkick" then
                if not anticolkicking then
                    anticolkicking = true
                    connections.antikark =
                        workspace.DescendantAdded:Connect(
                        function(Rocket)
                            if Rocket:IsA("BasePart") and (Rocket.Name == "Rocket" or Rocket.Name == "Addon") then
                                Rocket.CanCollide = false
                                Rocket.CanTouch = false
                                for _, c in pairs(Rocket:GetChildren()) do
                                    pcall(
                                        function()
                                            c:Destroy()
                                        end
                                    )
                                end
                            end
                        end
                    )
                end
            elseif splitted[1] == "clrlogs" then
                for i = 1, 25 do
                    chatshit("ff " .. Quotes[math.random(1, #Quotes)])
                end
                chatshit("ff Powered by jisatsu")
                chatshit("ff discord: chaosbrew")
                chatshit("unff all")
                wait(0.5)
            end
        end

        logn("Start-Up Commands Loaded", 5)
    end
)

function autorunchat(cmds)
    for _, v in ipairs(cmds) do
        chatshit(v)
    end
end

autorunchat(autoruncmds)

if lplayer.Character and lplayer.Character:FindFirstChild("HumanoidRootPart") then
    lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(-29.809, 8.229, 72.000)
end

local box = workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()
local objs = workspace.Terrain._Game.Workspace.Obby:GetChildren()

task.spawn(
    function()
        for _, obj in pairs(objs) do
            coroutine.wrap(
                function()
                    pcall(
                        function()
                            obj.TouchInterest:Destroy()
                        end
                    )
                end
            )()
        end
    end
)

task.spawn(
    function()
        for _, bax in pairs(box) do
            coroutine.wrap(
                function()
                    pcall(
                        function()
                            bax.CanCollide = false
                        end
                    )
                end
            )()
        end
    end
)

-- Ivory mover
local function IPDOPC(part)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character and part:IsDescendantOf(player.Character) then
            return true
        end
    end
    return false
end

local function color(part, c1, c2, c3)
    pcall(
        function()
            local args = {
                [1] = "PaintPart",
                [2] = {["Part"] = part, ["Color"] = Color3.fromRGB(c1, c2, c3)}
            }
            spawn(
                function()
                    workspace[game:GetService("Players").LocalPlayer.Name]:WaitForChild("PaintBucket"):WaitForChild(
                        "Remotes"
                    ).ServerControls:InvokeServer(unpack(args))
                end
            )
        end
    )
end

local function movep(part, coords)
    pcall(
        function()
            chatshit("gear me 108158379") -- Ivory Periastron gear
            repeat
                task.wait()
            until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")

            game.Players.LocalPlayer.Backpack.IvoryPeriastron.Parent = game.Players.LocalPlayer.Character
            part.CanCollide = false

            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("Part") then
                    v.CanCollide = false
                end
            end

            workspace.Gravity = 0
            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                coords *
                CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character.Torso.Size.X / 2), 0, 0)

            task.wait(0.3)
            game.Players.LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
            repeat
                task.wait()
            until game.Workspace.Camera:FindFirstChild("FakeCharacter")

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                part.CFrame *
                CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character.Torso.Size.X / 2), 0, 0)

            task.wait()
            repeat
                chatshit("unpunish me")
                task.wait()
            until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld")

            game.Players.LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
            task.wait(0.3)

            part.CanCollide = true
            workspace.Gravity = 196.2
            chatshit("respawn me")
        end
    )
end

local function fixmover()
    vars.ivorymoving = false
    for i, v in workspace:GetChildren() do
        if v.Name == "Pulse" then
            v:Destroy()
        end
    end
    for i, v in game.Workspace:GetDescendants() do
        if v:IsA("BasePart") and not IPDOPC(v) then
            v.CanCollide = true
        end
    end
    workspace.Gravity = 196.2
    game.Players:Chat("respawn me fuck")
    game.Players.LocalPlayer.CharacterAdded:Wait()
end

local function move(part, coords)
    local s, e = pcall(function()
        if vars.ivorymoving then
            repeat task.wait() until not vars.ivorymoving
        end
        vars.ivorymoving = true

        local originalCollisionStates = {}
        for i, v in game.Workspace:GetDescendants() do
            if v:IsA("BasePart") then
                originalCollisionStates[v] = v.CanCollide
                v.CanCollide = false
            end
        end

        game.Players:Chat("gear me 108158379")
        repeat task.wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")
        repeat task.wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron"):FindFirstChild("Remote")
        game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron").Parent = game.Players.LocalPlayer.Character
        game.Players:Chat("size me .4")
        repeat task.wait() until game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(0.800000011920929, 0.800000011920929, 0.4000000059604645)

        workspace.Gravity = 0
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
        workspace.FallenPartsDestroyHeight = 0 / 0

        coroutine.wrap(function()
            repeat
                game:GetService("RunService").Heartbeat:wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
            until not vars.ivorymoving
        end)()

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = coords * CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2), 0, 0)
        task.wait(0.3)
        game.Players.LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
        repeat task.wait() until workspace.Camera:FindFirstChild("FakeCharacter")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2), 0, 0)
        task.wait(0.3)
        repeat
            game.Players:Chat("unpunish me me me fuck")
            task.wait()
        until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld")

        for i, v in workspace:GetChildren() do
            if v.Name == "Pulse" then
                v:Destroy()
            end
        end

        game.Players.LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
        repeat task.wait() until workspace:FindFirstChild("Pulse")
        for i, v in workspace:GetChildren() do
            if v.Name == "Pulse" then
                v:Destroy()
            end
        end

        for v, state in pairs(originalCollisionStates) do
            if v:IsA("BasePart") and v.Parent then  
                v.CanCollide = state
            end
        end

        workspace.Gravity = 196.2
        game.Players:Chat("respawn me fuck")
        game.Players.LocalPlayer.CharacterAdded:Wait()
        vars.ivorymoving = false
    end)

    if not s then
        warn("ERROR MOVING PARTS\n\n" .. e)
        logn("Error Moving Parts", 2)
        fixmover()
    end
end

local hasRunInitialCommands = false

local function runCommand(cmd)
    if cmd ~= "fixfilter" then
        rconsoleprint("Ran command: " .. cmd)
    end
end

local function executeInitialCommands()
    if not hasRunInitialCommands then
        rconsolename("Jisatsu")
        rconsolewarn("Reiko was here")
        rconsolewarn("Credits to cxo. Greatest help in KAH frz\n-------------------------------------------------")
        hasRunInitialCommands = true
    end
end

game.Players.LocalPlayer.Chatted:Connect(
    function(message)
        if message:sub(1, 3) == "<rj" then
            rconsoleclear()
            executeInitialCommands()
            if message:sub(1, 4) == "<shop" then
                rconsoleclear()
                executeInitialCommands()
            elseif message:sub(1, 1) == "<" then
                local cmd = message:sub(2)
                executeInitialCommands()
                runCommand(cmd)
            end
        end
    end
)


connections.commands = game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local splitted = msg:split(" ")
        if splitted[1] ~= prefix .. "clrlogs" then
            table.insert(commandlist, splitted[1])
        end
        if splitted[1] == prefix .. "silcrash" then -- persons 299 required / credits to knocks for this
            for i = 1, 5 do
                chatshit("size all .3")
            end
            for i = 1, 13 do
                chatshit("rocket/all all all fuck")
                chatshit("freeze all all all fuck")
                chatshit("dog all all all fuck")
            end
            for i = 1, 5 do
                chatshit("size all 10")
            end
            for i = 1, 200 do
                chatshit("clone all all all fuck")
            end
        elseif splitted[1] == prefix .. "toggle" and splitted[2] == "mymusiconly" then
            mymusiconly = not mymusiconly
            logn("MyMusicOnly is now set to " .. tostring(mymusiconly))
            if mymusiconly then
                chatshit("music " .. mymusiconly_ID)
            end
        elseif splitted[1] == prefix .. "mmoid" then
            if tonumber(splitted[3]) then
                mymusiconly_ID = tonumber(splitted[3])
                logn("mymusiconly_id is now set to " .. tostring(mymusiconly_ID))
                mymusiconly = true
                chatshit("music " .. mymusiconly_ID)
            end
        elseif splitted[1] == prefix .. "prefix" then
            prefix = splitted[2]
        elseif splitted[1] == prefix .. "run" then
            local execute = #splitted[1] + 1
            loadstring(string.sub(msg, execute))()
        elseif splitted[1] == prefix .. "vgcrash" then -- credits to knocks for this
            chatshit("gear me 94794847")
            repeat
                task.wait()
            until game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher")
            game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher").Parent =
                game.Players.LocalPlayer.Character
            repeat
                task.wait()
            until game.Players.LocalPlayer.Character:FindFirstChild("VampireVanquisher")
            for i = 1, 3 do
                chatshit("size all .3")
            end
            chatshit("clone all")
            for i = 1, 50 do
                chatshit("unsize me")
            end
            chatshit("<shop")
        elseif splitted[1] == prefix .. "level" then
            local count = tonumber(splitted[2]) or 1
            for i = 1, count do
                getgenv().printidentity = nil
                printidentity()
            end
        elseif splitted[1] == prefix .. "bl" then
            local player = splitted[2]
            if player and not blacklistedPlayers[player] then
                fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
                logn("Blacklist enabled for player: " .. player .. "You're welcome")

                blacklistedPlayers[player] = {
                    coroutine = coroutine.create(
                        function()
                            while blacklistedPlayers[player] do
                                game.Players:Chat("freeze " .. player)
                                wait(0.1)
                                game.Players:Chat("punish " .. player)
                                wait(0.1)
                                game.Players:Chat("blind " .. player)
                                wait(0.1)
                                game.Players:Chat(
                                    "pm " ..
                                        player ..
                                            "\n\n" ..
                                                JISATSU ..
                                                    "\n\n\nYou are currently blacklisted. Please consider leaving"
                                )
                                wait(0.1)
                                game.Players:Chat("thaw " .. player)
                                wait(0.1)
                            end
                        end
                    )
                }

                coroutine.resume(blacklistedPlayers[player].coroutine)
            end
        elseif splitted[1] == prefix .. "unbl" then
            local player = splitted[2]
            if player and blacklistedPlayers[player] then
                coroutine.yield(blacklistedPlayers[player].coroutine)
                blacklistedPlayers[player] = nil
                game.Players:Chat("respawn " .. player)
                game.Players:Chat("unfreeze " .. player)
                game.Players:Chat("unpunish " .. player)
                game.Players:Chat("unblind " .. player)
                logn("Blacklist disabled for player: " .. player .. " You're welcome.")
            end
        elseif
            splitted[1] == prefix .. "antilag" or splitted[1] == prefix .. "boostfps" or
                splitted[1] == prefix .. "lowgraphics"
         then
            local Terrain = workspace:FindFirstChildOfClass("Terrain")
            Terrain.WaterWaveSize = 0
            Terrain.WaterWaveSpeed = 0
            Terrain.WaterReflectance = 0
            Terrain.WaterTransparency = 0
            Lighting.GlobalShadows = false
            Lighting.FogEnd = 9e9
            settings().Rendering.QualityLevel = 1
            for i, v in pairs(game:GetDescendants()) do
                if
                    v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or
                        v:IsA("TrussPart")
                 then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                end
            end
            for i, v in pairs(Lighting:GetDescendants()) do
                if
                    v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or
                        v:IsA("BloomEffect") or
                        v:IsA("DepthOfFieldEffect")
                 then
                    v.Enabled = false
                end
            end
            workspace.DescendantAdded:Connect(
                function(child)
                    task.spawn(
                        function()
                            if child:IsA("Sparkles") then
                                RunService.Heartbeat:Wait()
                                child:Destroy()
                            elseif child:IsA("Smoke") or child:IsA("Fire") then
                                RunService.Heartbeat:Wait()
                                child:Destroy()
                            end
                        end
                    )
                end
            )
        elseif splitted[1] == prefix .. "swim" then
            if not swimming and speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
                oldgrav = workspace.Gravity
                workspace.Gravity = 0
                local swimDied = function()
                    workspace.Gravity = oldgrav
                    swimming = false
                end
                local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
                gravReset = Humanoid.Died:Connect(swimDied)
                local enums = Enum.HumanoidStateType:GetEnumItems()
                table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
                for i, v in pairs(enums) do
                    Humanoid:SetStateEnabled(v, false)
                end
                Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
                swimbeat =
                    RunService.Heartbeat:Connect(
                    function()
                        pcall(
                            function()
                                speaker.Character.HumanoidRootPart.Velocity =
                                    ((Humanoid.MoveDirection ~= Vector3.new() or
                                    UserInputService:IsKeyDown(Enum.KeyCode.Space)) and
                                    speaker.Character.HumanoidRootPart.Velocity or
                                    Vector3.new())
                            end
                        )
                    end
                )
                swimming = true
            end
        elseif splitted[1] == prefix .. "logny" then
            logny(getstring(1))
        elseif splitted[1] == prefix .. "esp" then
            logn("This is IY's ESP")
            if not CHMSenabled then
                ESPenabled = true
                for i, v in pairs(Players:GetPlayers()) do
                    if v.Name ~= speaker.Name then
                        ESP(v)
                    end
                end
            else
                logny("ESP", "Disable chams (nochams) before using esp")
            end
        elseif splitted[1] == prefix .. "hidebp" then
            if workspace.Terrain._Game.Workspace:FindFirstChild("Baseplate") then
                move(
                    workspace.Terrain._Game.Workspace:FindFirstChild("Baseplate"),
                    CFrame.new(
                        157290.969,
                        -29124.8887,
                        -37825.0312,
                        0.999996841,
                        -0.00250337017,
                        -8.53495367e-05,
                        0.00250330311,
                        0.999996543,
                        -0.000777005684,
                        8.7294371e-05,
                        0.000776789617,
                        0.999999702
                    )
                )
            else
                logn("Baseplate Not Loaded", 2)
            end
        elseif splitted[1] == prefix .. "hidereg" then
            if workspace.Terrain._Game.Admin:FindFirstChild("Regen") then
                move(workspace.Terrain._Game.Admin:FindFirstChild("Regen"), CFrame.new(157290.969, -29124.8887, -37825.0312, 0.999996841, -0.00250337017, -8.53495367e-05, 0.00250330311, 0.999996543, -0.000777005684, 8.7294371e-05, 0.000776789617, 0.999999702))
            else
                logn("Regen Not Loaded", 2)
            end
        elseif splitted[1] == prefix .. "fixreg" then
            if workspace.Terrain._Game.Admin:FindFirstChild("Regen") then
                move(workspace.Terrain._Game.Admin:FindFirstChild("Regen"), CFrame.new(-7.16500044, 5.42999268, 94.7430038, 0, 0, -1, 0, 1, 0, 1, 0, 0))
            else
                logn("Regen Not Loaded", 2)
            end
        elseif splitted[1] == prefix .. "fixmover" then
            fixmover()
        elseif splitted[1] == prefix .. "noesp" then
            logn("This is IY's NoESP")
            ESPenabled = false
            for i, c in pairs(COREGUI:GetChildren()) do
                if string.sub(c.Name, -4) == "_ESP" then
                    c:Destroy()
                end
            end
        elseif splitted[1] == prefix .. "esptransparency" then
            logn("This is IY's esptransparency")
            local transparencyArg = splitted[2]
            espTransparency = (transparencyArg and isNumber(transparencyArg) and transparencyArg) or 0.3
            updatesaves()

            local espParts = {}
            local partEspTrigger = nil
            function partAdded(part)
                if #espParts > 0 then
                    if FindInTable(espParts, part.Name:lower()) then
                        local a = Instance.new("BoxHandleAdornment")
                        a.Name = part.Name:lower() .. "_PESP"
                        a.Parent = part
                        a.Adornee = part
                        a.AlwaysOnTop = true
                        a.ZIndex = 0
                        a.Size = part.Size
                        a.Transparency = espTransparency
                        a.Color = BrickColor.new("Lime green")
                    end
                else
                    partEspTrigger:Disconnect()
                    partEspTrigger = nil
                end
            end
        elseif splitted[1] == prefix .. "partesp" then
            local partEspName = splitted[2]:lower()
            if not FindInTable(espParts, partEspName) then
                table.insert(espParts, partEspName)
                for i, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("BasePart") and v.Name:lower() == partEspName then
                        local a = Instance.new("BoxHandleAdornment")
                        a.Name = partEspName .. "_PESP"
                        a.Parent = v
                        a.Adornee = v
                        a.AlwaysOnTop = true
                        a.ZIndex = 0
                        a.Size = v.Size
                        a.Transparency = espTransparency
                        a.Color = BrickColor.new("Lime green")
                    end
                end
            end
            if partEspTrigger == nil then
                partEspTrigger = workspace.DescendantAdded:Connect(partAdded)
            end
        elseif splitted[1] == prefix .. "unpartesp" or splitted[1] == prefix .. "nopartesp" then
            local partEspName = splitted[2] and splitted[2]:lower() or nil
            if partEspName then
                if FindInTable(espParts, partEspName) then
                    table.remove(espParts, GetInTable(espParts, partEspName))
                end
                for i, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("BoxHandleAdornment") and v.Name == partEspName .. "_PESP" then
                        v:Destroy()
                    end
                end
            else
                partEspTrigger:Disconnect()
                partEspTrigger = nil
                espParts = {}
                for i, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("BoxHandleAdornment") and v.Name:sub(-5) == "_PESP" then
                        v:Destroy()
                    end
                end
            end
        elseif splitted[1] == prefix .. "view" then
            StopFreecam()
            local players = getPlayer(splitted[2], speaker)
            for i, v in pairs(players) do
                if viewDied then
                    viewDied:Disconnect()
                    viewChanged:Disconnect()
                end
                viewing = Players[v]
                workspace.CurrentCamera.CameraSubject = viewing.Character
                logny("Spectate", "Viewing " .. Players[v].Name)
                local function viewDiedFunc()
                    repeat
                        wait()
                    until Players[v].Character ~= nil and getRoot(Players[v].Character)
                    workspace.CurrentCamera.CameraSubject = viewing.Character
                end
                viewDied = Players[v].CharacterAdded:Connect(viewDiedFunc)
                local function viewChangedFunc()
                    workspace.CurrentCamera.CameraSubject = viewing.Character
                end
                viewChanged = workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(viewChangedFunc)
            end
        elseif splitted[1] == prefix .. "volume" then
            local level = splitted[2] and splitted[2] / 10
            UserSettings():GetService("UserGameSettings").MasterVolume = level
        elseif splitted[1] == prefix .. "savemap" then
            local mapname = string.sub(text, text:split(" ")[1]:len() + 2)
            if not isfile(mapname .. ".json") then
                local table = {}
                for i, v in workspace:GetDescendants() do
                    if
                        v:IsA("BasePart") and IPDOPC(v) == false and
                            v:IsDescendantOf(workspace.Terrain._Game.Folder) == false and
                            v.Name ~= "Head"
                     then
                        table[v.Name] = tostring(v.CFrame)
                    end
                end
                local encoded = game:GetService("HttpService"):JSONEncode(table)
                writefile(mapname .. ".json", encoded)
            else
                logn("File Already Exists With That Name", 3)
            end
        elseif splitted[1] == prefix .. "loadmap" then
            local mapname = string.sub(text, text:split(" ")[1]:len() + 2)
            if isfile(mapname .. ".json") then
                local decoded = game:GetService("HttpService"):JSONDecode(readfile(mapname .. ".json"))
                for i, v in workspace:GetDescendants() do
                    if
                        v:IsA("BasePart") and IPDOPC(v) == false and
                            v:IsDescendantOf(workspace.Terrain._Game.Folder) == false
                     then
                        if decoded[v.Name] then
                            if
                                not isinradius(
                                    v.CFrame,
                                    CFrame.new(
                                        unpack(game:GetService("HttpService"):JSONDecode("[" .. decoded[v.Name] .. "]"))
                                    ),
                                    0.1
                                )
                             then
                                move(
                                    v,
                                    CFrame.new(
                                        unpack(game:GetService("HttpService"):JSONDecode("[" .. decoded[v.Name] .. "]"))
                                    )
                                )
                            end
                        end
                    end
                end
            else
                logn("File Does Not Exist", 3)
            end
            local function split(str, delimiter)
                local result = {}
                for match in (str .. delimiter):gmatch("(.-)" .. delimiter) do
                    table.insert(result, match)
                end
                return result
            end
        elseif splitted[1] == prefix .. "savepaint" then
            local paintname = string.sub(text, #split(text, " ")[1]:len() + 2)
            if not isfile(paintname .. ".json") then
                local paintTable = {}
                for i, v in workspace:GetDescendants() do
                    if
                        v:IsA("BasePart") and IPDOPC(v) == false and
                            v:IsDescendantOf(workspace.Terrain._Game.Folder) == false
                     then
                        paintTable[v.Name] = tostring(v.BrickColor)
                    end
                end
                local encoded = game:GetService("HttpService"):JSONEncode(paintTable)
                writefile(paintname .. ".json", encoded)
            else
                logn("File Already Exists With That Name", 3)
            end
        elseif splitted[1] == prefix .. "loadpaint" then
            local paintname = string.sub(text, text:split(" ")[1]:len() + 2)
            if isfile(paintname .. ".json") then
                local decoded = game:GetService("HttpService"):JSONDecode(readfile(paintname .. ".json"))
                game.Players:Chat("gear me 18474459")
                repeat
                    task.wait()
                until game.Players.LocalPlayer.Backpack:FindFirstChild("PaintBucket")
                game.Players.LocalPlayer.Backpack:FindFirstChild("PaintBucket").Parent =
                    game.Players.LocalPlayer.Character
                repeat
                    task.wait()
                until game.Players.LocalPlayer.Character:FindFirstChild("PaintBucket")
                for i, v in workspace:GetDescendants() do
                    if
                        v:IsA("BasePart") and IPDOPC(v) == false and
                            v:IsDescendantOf(workspace.Terrain._Game.Folder) == false
                     then
                        if decoded[v.Name] and v.BrickColor ~= BrickColor.new(decoded[v.Name]) then
                            color(v, decoded[v.Name])
                        end
                    end
                end
            else
                logn("File Does Not Exist", 3)
            end
        elseif splitted[1] == prefix .. "r.fps" then
            if setfpscap and type(setfpscap) == "function" then
                local num = splitted[2] or 1e6
                if num == "none" then
                    return setfpscap(1e6)
                elseif num > 0 then
                    return setfpscap(num)
                else
                    return chatshit("h/ \n\n\nInvalid argument", "Please provide a number above 0 or 'none'.\n\n\n")
                end
            else
                return chatshit(
                    "h/ \n\n\nIncompatible Exploit",
                    "Your exploit does not support this command (missing fpscap)\n\n\n"
                )
            end
        elseif splitted[1] == prefix .. "unswim" then
            if speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
                workspace.Gravity = oldgrav
                swimming = false
                if gravReset then
                    gravReset:Disconnect()
                end
                if swimbeat ~= nil then
                    swimbeat:Disconnect()
                    swimbeat = nil
                end
                local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
                local enums = Enum.HumanoidStateType:GetEnumItems()
                table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
                for i, v in pairs(enums) do
                    Humanoid:SetStateEnabled(v, true)
                end
            end
        elseif splitted[1] == prefix .. "gametp" or splitted[1] == prefix .. "gameteleport" then
            TeleportService:Teleport(splitted[2])
        elseif splitted[1] == prefix .. "serverhop" or splitted[1] == prefix .. "shop" then
            if httprequest then
                local servers = {}
                local placeIds = {115670532, 112420803}
                local foundServer = false

                for _, placeId in ipairs(placeIds) do
                    local req =
                        httprequest(
                        {
                            Url = string.format(
                                "https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true",
                                placeId
                            )
                        }
                    )
                    local body = HttpService:JSONDecode(req.Body)

                    if body and body.data then
                        for i, v in next, body.data do
                            if
                                type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and
                                    v.playing < v.maxPlayers and
                                    v.id ~= JobId
                             then
                                table.insert(servers, 1, {id = v.id, placeId = placeId})
                            end
                        end
                    end
                end

                if #servers > 0 then
                    local server = servers[math.random(1, #servers)]
                    TeleportService:TeleportToPlaceInstance(server.placeId, server.id, Players.LocalPlayer)
                    foundServer = true
                end

                if not foundServer then
                    chatshit("h/ \n\n\nServerhop: Couldn't find a server.\n\n\n")
                end
            else
                chatshit(
                    "h/ \n\n\nIncompatible Exploit: Your exploit does not support this command (missing request)\n\n\n"
                )
            end
        elseif splitted[1] == prefix .. "joinplayer" or splitted[1] == prefix .. "joinp" then
            local retries = 0
            local function ToServer(User, Place)
                if splitted[3] == nil then
                    Place = PlaceId
                else
                    Place = splitted[3]
                end
                if
                    not pcall(
                        function()
                            local FoundUser, UserId =
                                pcall(
                                function()
                                    if tonumber(User) then
                                        return tonumber(User)
                                    end
                                    return Players:GetUserIdFromNameAsync(User)
                                end
                            )
                            if not FoundUser then
                                chatshit("h/ \n\n\nJoin Error: Username/UserID does not exist\n\n\n")
                            else
                                chatshit("h/ \n\n\nJoin Player: Loading servers. Hold on a second.\n\n\n")
                                local URL2 =
                                    ("https://games.roblox.com/v1/games/" ..
                                    Place .. "/servers/Public?sortOrder=Asc&limit=100")
                                local Http = HttpService:JSONDecode(game:HttpGet(URL2))
                                local GUID

                                local function tablelength(T)
                                    local count = 0
                                    for _ in pairs(T) do
                                        count = count + 1
                                    end
                                    return count
                                end

                                for i = 1, tonumber(tablelength(Http.data)) do
                                    for j, k in pairs(Http.data[i].playerIds) do
                                        if k == UserId then
                                            GUID = Http.data[i].id
                                        end
                                    end
                                end

                                if GUID ~= nil then
                                    chatshit("h/ \n\n\nJoin Player: Joining " .. User .. "\n\n\n")
                                    TeleportService:TeleportToPlaceInstance(Place, GUID, Players.LocalPlayer)
                                else
                                    chatshit("h/ \n\n\n \n\n\nJoin Error: Unable to join user.\n\n\n")
                                end
                            end
                        end
                    )
                 then
                    if retries < 3 then
                        retries = retries + 1
                        chatshit("h/ \n\n\nERROR retrying " .. retries .. "/3\n\n\n")
                        chatshit("h/ \n\n\nJoin Error: Error while trying to join. Retrying " .. retries .. "/3.\n\n\n")
                        ToServer(User, Place)
                    else
                        chatshit("h/ \n\n\nJoin Error: Error while trying to join.\n\n\n")
                    end
                end
            end
            ToServer(splitted[2], splitted[3])
        elseif splitted[1] == prefix .. "ez" then
            game.Players:Chat("music 0000000000000000000007266001792")
            game.Players:Chat("h n\n\n\n\n\n\n\n\n\nYoU ArE an\nI\nD\nI\nO")
            game.Players:Chat("h n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n T")
            wait(1)

            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
            wait(0.5)
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
            wait(0.5)
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
            wait(0.5)
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
            wait(0.1)
            game.Players:Chat(
                "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nYouAreAn\nI\nD\nI\nO"
            )
            game.Players:Chat(
                "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nT\n\n.exe\nLoaded [By Reiko - Made By Dizzy]"
            )
            wait(2)

            game.Players:Chat(
                "gear me 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000178076749"
            )
            wait(0.1)
            game.Players.LocalPlayer.Backpack:WaitForChild("Emerald Knights of the Seventh Sanctum Sword and Shield").Parent =
                game.Players.LocalPlayer.Character
            wait(0.2)
            for i = 1, 100 do
                game.Players:Chat("dog all all all")
            end
            for i = 1, 1000 do
                game.Players:Chat("clone all all all")
            end
        elseif splitted[1] == prefix .. "errorcrash" then
            game.Players:Chat("blind all all all all all all all all all")
            game.Players:Chat(
                "music  0 0 0 00 0 0 0 0 0 00 0 0 0  0 00 0 0 000 0  00  00  00  00 00 00 0 0 00 00 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0315006886"
            )
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nDisconnected")
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nDisconnected")
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nDisconnected")
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nDisconnected")
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nDisconnected")
            game.Players:Chat(
                "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n---------------------------------------------------------------------------"
            )
            game.Players:Chat(
                "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nSame account                                            "
            )
            game.Players:Chat(
                "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                       launched game from differant"
            )
            game.Players:Chat(
                "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\ndevice. Reconnect if you                                         "
            )
            game.Players:Chat(
                "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                    prefer to use this device."
            )
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n  Error          ")
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n          Code:")
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Jisatsu.lua")
            game.Players:Chat(
                "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Origin \n Empathy.lua - By Dizzy"
            )
            game.Players:Chat(
                "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n---------------------------------------------------------------------------"
            )
            wait(0.5)
            for i = 1, 5 do
                chatshit("size all .3")
            end
            for i = 1, 13 do
                chatshit("rocket/all all all fuck")
                chatshit("freeze all all all fuck")
                chatshit("dog all all all fuck")
            end
            for i = 1, 5 do
                chatshit("size all 10")
            end
            for i = 1, 200 do
                chatshit("clone all all all fuck")
            end
        elseif splitted[1] == prefix .. "audiolog" then
            wait(0.1)

            local function getSoundID()
                local game = game:GetService("Workspace")
                local terrain = game:FindFirstChild("Terrain")

                if terrain then
                    local gameFolder = terrain:FindFirstChild("_Game")

                    local Folder = gameFolder:FindFirstChild("Folder")

                    if gameFolder then
                        local sound = Folder:FindFirstChild("Sound")

                        if sound and sound:IsA("Sound") then
                            return sound.SoundId
                        else
                            chatshit("h/ \n\n\nNo Sound found in _Game folder.\n\n\n")
                        end
                    else
                        chatshit("h/ \n\n\n_Game folder not found in Terrain.\n\n\n")
                    end
                else
                    chatshit("h/ \n\n\nTerrain not found in Workspace.\n\n\n")
                end

                return nil
            end

            local function logSoundID(soundID)
                local currentDate = os.date("%Y-%m-%d %H:%M:%S")
                local logEntry = currentDate .. "," .. soundID .. "\n"

                local file = "KahMusicLogged.txt"
                local text = ""

                if isfile(file) then
                    text = readfile(file)
                end

                text = text .. logEntry

                writefile(file, text)
            end

            local soundID = getSoundID()
            if soundID then
                chatshit("h/ \n\n\n<Jisatsu.lua> Sound ID: " .. soundID .. "\n\n\n")
                local txt = soundID .. " Has been saved in the file KahLogged in your executor workspace and is printed"

                game.StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "[AudioLogged]",
                        Text = txt
                    }
                )
                logSoundID(soundID)
            end
        elseif splitted[1] == prefix .. "rocketkick" then
            for i, v in gp(splitted[2]) do
                vars.rocketkicking = true
                game.Players:Chat("setgrav " .. v.Name .. " 5000")
                game.Players:Chat("speed " .. v.Name .. " 0")
                if v.Character.Humanoid.WalkSpeed > 0 then
                    v.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Wait()
                end
                for i = 1, 100 do
                    game.Players:Chat("rocket/all all all fuck")
                end
                task.wait(0.3)
                for i, plr in game.Players:GetPlayers() do
                    if plr ~= v then
                        game.Players:Chat("unrocket/" .. plr.Name .. " fuck")
                    end
                end
                repeat
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2) * CFrame.Angles(0, math.rad(180), 0)
                    game.Players:Chat("rocket/ " .. v.Name .. " me " .. v.Name .. " fuck")
                    game:GetService("RunService").RenderStepped:Wait()
                until not vars.rocketkicking or not table.find(game.Players:GetPlayers(), v)
            end
        elseif splitted[1] == prefix .. "stopkick" then
            if vars.rocketkicking then
                vars.rocketkicking = false
            end
        elseif splitted[1] == prefix .. "whitelist" then
            for i, v in gp(splitted[2]) do
                if not whitelisted[v.Name] then
                    whitelisted[v.Name] = {}
                    local con1 =
                        v.Chatted:Connect(
                        function(msg)
                            if msg:sub(1, #prefix) == prefix then
                                msg = msg:sub(#prefix + 1)
                                local splitted = msg:split(" ")
                                coroutine.wrap(
                                    function()
                                        runcmd(splitted[1], splitted, msg)
                                    end
                                )()
                            end
                        end
                    )
                    table.insert(whitelisted[v.Name], con1)
                end
            end
        elseif splitted[1] == prefix .. "unwhitelist" then
            for i, v in gp(splitted[2]) do
                if whitelisted[v.Name] then
                    for i, v in pairs(whitelisted[v.Name]) do
                        if v.Connected then
                            v:Disconnect()
                        end
                        v = nil
                    end
                end
            end
        elseif splitted[1] == prefix .. "fixcam" then
            local function fixCam()
                local lp = game.Players.LocalPlayer
                local ui = game:GetService("UserInputService")
                local contextActionService = game:GetService("ContextActionService")
                local runService = game:GetService("RunService")

                contextActionService:UnbindAction("ShoulderCameraSprint")
                runService:UnbindFromRenderStep("ShoulderCameraUpdate")
                contextActionService:UnbindAction("ShoulderCameraZoom")

                local function fixCamera()
                    repeat
                        runService.Heartbeat:Wait()
                    until game.Workspace.CurrentCamera.CameraType == Enum.CameraType.Scriptable

                    runService:UnbindFromRenderStep("ShoulderCameraUpdate")
                    contextActionService:UnbindAction("ShoulderCameraZoom")
                    contextActionService:UnbindAction("ShoulderCameraSprint")

                    local weaponSystem = game:GetService("ReplicatedStorage"):FindFirstChild("WeaponsSystem")
                    if weaponSystem then
                        for _, v in pairs(weaponSystem:GetDescendants()) do
                            if v:IsA("Script") then
                                v.Disabled = true
                            end
                            v:Destroy()
                        end
                    end

                    local weaponScript = lp.PlayerGui:FindFirstChild("ClientWeaponsScript")
                    local weaponGui = lp.PlayerGui:FindFirstChild("WeaponsSystemGui")
                    local clientWeaponScript = lp.PlayerScripts:FindFirstChild("ClientWeaponsScript")

                    if weaponScript then
                        weaponScript.Disabled = true
                        weaponScript:Destroy()
                    end

                    if weaponGui then
                        weaponGui:Destroy()
                    end

                    if clientWeaponScript then
                        clientWeaponScript.Disabled = true
                        clientWeaponScript:Destroy()
                    end

                    ui.MouseBehavior = Enum.MouseBehavior.Default
                    ui.MouseIconEnabled = true
                    lp.CameraMaxZoomDistance = 400
                    lp.CameraMinZoomDistance = 0.5

                    local camera = game:GetService("Workspace"):FindFirstChild("Camera")
                    if camera then
                        camera.FieldOfView = 90
                    end

                    game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                    game.Workspace.CurrentCamera.CameraSubject = lp.Character.Humanoid
                    lp.Character.Humanoid.AutoRotate = true
                end

                while true do
                    fixCamera()
                    task.wait(1) -- Wait for 1 second before checking again
                end
            end

            coroutine.wrap(fixCam)()
            chatshit("h/ \n\n\nCamera fix initiated.\n\n\n")
        elseif splitted[1] == prefix .. "hideobby" then
            local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            if Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.07, 8.40, -29.26)
            end

            wait(0.1)
            game.Players:Chat("sit me")
            wait(1)
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")

            wait(0.5)
            game.Players:Chat("trip me")
            wait(0.3)
            game.Players:Chat("respawn me")
            wait(1)
            local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            if Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.07, 8.40, -29.26)
            end

            wait(0.1)
            game.Players:Chat("sit me")
            wait(1)
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")

            wait(0.5)
            game.Players:Chat("trip me")
            wait(0.3)
            game.Players:Chat("respawn me")
            wait(1)
            local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            if Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25.06, 8.38, -29.27)
            end
            wait(0.1)
            game.Players:Chat("sit me")
            wait(1)
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")
            game.Players:Chat("unpunish me")

            wait(0.5)
            game.Players:Chat("trip me")
            wait(0.3)
            game.Players:Chat("respawn me")
        elseif splitted[1] == prefix .. "cloneai" then
            game.Players:Chat("pm me [Jisatsu]\nCredits to Reaper & ii'S Stupid admin for the command idea.")
            local cloneCount = tonumber(splitted[2]) or 1
            for i = 1, cloneCount do
                game.Players:Chat("gear me 72644644")
                wait()
            end
            wait(0.25)

            local toolCount = 0
            for i, v in pairs(plr.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    toolCount = toolCount + 1
                    v.Parent = chr
                end
            end

            if toolCount == cloneCount then
                wait(0.1)
                chatshit("<usetools")
                wait(0.1)
                chatshit("reset me")
            else
                chatshit("h/ \n\n\nFailed to get all tools. Try again.\n\n\n")
            end
        elseif splitted[1] == prefix .. "rtheme" then
            if splitted[2] == "1" then
                chatshit("fix")
                chatshit("music")
                chatshit("unglow all")
                chatshit("music 6673004638")
                chatshit("time -")
                chatshit("disco")
                chatshit("fogend 300")
            elseif splitted[2] == "2" then
                chatshit("fix")
                chatshit("music")
                chatshit("unglow all")
                chatshit("music 9124780123")
                chatshit("fogend 500")
                chatshit("time -")
                chatshit("colorshiftbottom 200 0 400")
                chatshit("fogcolor 75 0 0")
                chatshit("outdoorambient 250 0 0")
                chatshit("ambient 200 0 400")
                chatshit("colorshifttop 200 0 400")
            elseif splitted[2] == "3" then
                chatshit("fix")
                chatshit("music")
                chatshit("unglow all")
                chatshit("music 6708444383")
                chatshit("time -")
                chatshit("ambient 100 0 255")
                chatshit("outdoorambient 100 0 255")
                chatshit("indoorambient 100 0 255")
                chatshit("fogstart 300")
                chatshit("fogend 500")
                chatshit("fogcolor 120 0 255")
            elseif splitted[2] == "4" then
                chatshit("fix")
                chatshit("music")
                chatshit("unglow all")
                chatshit("outdoorambient 0.7 0.7 0.7")
                chatshit("ambient 100 0 100")
                chatshit("fogend 3000")
                chatshit("time 6.9")
                chatshit("colorshifttop 100 50 0")
                chatshit("colorshiftbottom 0 0 0")
            elseif splitted[2] == "5" then
                chatshit("fix")
                chatshit("music")
                chatshit("unglow all")
                chatshit("time 19")
                chatshit("ambient 0 0 0")
                chatshit("outdoorambient 0 0 0")
                chatshit("colorshiftbottom 255 192 203")
                chatshit("colorshifttop 255 192 203")
                chatshit("fogend 2000")
                chatshit("fogstart 10")
                chatshit("fogcolor 255 100 255")
                chatshit("glow all 160 20 150")
            elseif splitted[2] == "6" then
                chatshit("fix")
                chatshit("music")
                chatshit("unglow all")
                chatshit("time 12:00")
                chatshit("ambient 100 100 100")
                chatshit("outdoorambient 50 50 50")
                chatshit("colorshiftbottom 173 216 230")
                chatshit("colorshifttop 173 216 230")
                chatshit("fogend 500")
                chatshit("fogstart 100")
                chatshit("fogcolor 173 216 230")
                chatshit("glow all 160 20 150")
            elseif splitted[2] == "7" then
                chatshit("fix")
                chatshit("music")
                chatshit("unglow all")
                chatshit("time 18:00")
                chatshit("ambient 80 80 80")
                chatshit("outdoorambient 40 40 40")
                chatshit("colorshiftbottom 150 204 155")
                chatshit("colorshifttop 150 204 155")
                chatshit("fogend 800")
                chatshit("fogstart 200")
                chatshit("fogcolor 150 204 155")
                chatshit("glow all 200 150 50")
            elseif splitted[2] == "8" then
                chatshit("fix")
                chatshit("music")
                chatshit("unglow all")
                chatshit("time 20:00")
                chatshit("ambient 30 30 40")
                chatshit("outdoorambient 20 20 30")
                chatshit("colorshiftbottom 60 50 70")
                chatshit("colorshifttop 60 50 70")
                chatshit("fogend 1000")
                chatshit("fogstart 50")
                chatshit("fogcolor 30 20 40")
                chatshit("glow all 50 30 80")
            end
        elseif splitted[1] == prefix .. "cmds" then
            if consoleOn then
                print("-:COMMANDS [" .. tostring(#commandlist) .. "]:-")
            end
            for _, cmd in ipairs(commandlist) do
                if cmd ~= prefix .. "clrlogs" then
                    print(cmd)
                end
            end
        elseif splitted[1] == prefix .. "altcmds" then
            for _, cmd in ipairs(commandlist) do
                chatshit("ff " .. cmd)
                wait()
            end
            wait()
            chatshit("ff -:COMMANDS [" .. tostring(#commandlist) .. "]:-")
            wait()
            logn("Check logs for list of commands.")
        elseif splitted[1] == prefix .. "discoball" then
            for i = 1, tonumber(splitted[2]) do
                chatshit("gear me 27858062")
                lp.Backpack:WaitForChild("DancePotion", 30)
                local potion = lp.Backpack.DancePotion
                potion.Parent = lp.Character
                potion:Activate()
                wait(0.1)
                chatshit("reset me")
                wait(0.1)
            end
        elseif splitted[1] == prefix .. "table" then
            for i = 1, tonumber(splitted[2]) do
                chatshit("gear me 110789105")
                lp.Backpack:WaitForChild("RageTable", 30)
                local tool2 = lp.Backpack["RageTable"]
                tool2.Parent = lp.Character
                wait(0.1)
                tool2:Activate()
                wait(0.1)
                chatshit("reset me")
                wait(0.1)
            end
        elseif splitted[1] == prefix .. "giverandomgears" then
            local gears = {
                "121946387",
                "11419319",
                "168141301",
                "15932306",
                "12187348",
                "225921000",
                "127506105",
                "11377306",
                "212296936",
                "253519495",
                "114020480",
                "257810065",
                "10472779",
                "477910063",
                "22960388",
                "147143863",
                "16688968",
                "306971294",
                "99119158",
                "409745306",
                "11452821",
                "46846246",
                "11563251",
                "517827962",
                "170897263",
                "11999247",
                "286526176",
                "223439643",
                "467138029",
                "11453385",
                "467935723",
                "113328094",
                "1402322831",
                "22787248",
                "928914739",
                "16726030",
                "95951330",
                "12848902",
                "16214845",
                "44115926",
                "42321801",
                "52627419",
                "1060280135",
                "106701659",
                "2350122208",
                "1033136271",
                "83021197",
                "1016183873",
                "168143042",
                "1132887630",
                "101106419",
                "172246669",
                "20721924",
                "111876831",
                "928913996",
                "156467855",
                "150366274",
                "168140949",
                "13745494",
                "83021250",
                "21392199",
                "22788134",
                "162857357",
                "1180418251",
                "101078559",
                "28664212",
                "461488745",
                "11450664",
                "116040770",
                "107458429",
                "30393548",
                "13207169",
                "12890798",
                "243790334",
                "21754543",
                "124126871",
                "170903216",
                "57902859",
                "2605965785",
                "32355966",
                "10727852",
                "306971659",
                "163350265",
                "31314966",
                "103358098",
                "12145515",
                "398675172",
                "183355817",
                "15177716",
                "31839337",
                "22596452",
                "2568114215",
                "321582427",
                "295461517",
                "365674685",
                "81847570",
                "119101539",
                "2463674178",
                "88146486",
                "92142799",
                "115377964",
                "108875151",
                "65545955",
                "96669682",
                "98411393",
                "12547976",
                "26421972",
                "16979083",
                "30847779",
                "123234673",
                "430066424",
                "116040789",
                "125859483",
                "65082246",
                "11956382",
                "49491736",
                "2506347092",
                "24346755",
                "89487934",
                "78730532",
                "383608755",
                "1929597345",
                "16722267",
                "319656339",
                "104642566",
                "104642700",
                "147143848",
                "121925044",
                "343586214",
                "517827255",
                "356212933",
                "335132838",
                "416846710",
                "82357123",
                "27494652",
                "192456288",
                "1304339797",
                "236403380",
                "57983532",
                "639345143",
                "92627988",
                "83704169",
                "14719505",
                "168142869",
                "2261167878",
                "125013849",
                "183355892",
                "82357079",
                "1340206957",
                "99119198",
                "168142394",
                "211944997",
                "26014536",
                "2190019650",
                "542755101",
                "26017478",
                "489196923",
                "10758456",
                "287425246",
                "110789105",
                "21440120",
                "29100449",
                "186868758",
                "105289761",
                "336370943",
                "304721834",
                "1241586091",
                "163348575",
                "88143074",
                "73829214",
                "87361806",
                "35366155",
                "34399428",
                "103234612",
                "439988813",
                "1180417820",
                "18474459",
                "2605966484",
                "346687565",
                "30392263",
                "746686384",
                "168141496",
                "1903663829",
                "835780770",
                "55301897",
                "244082303",
                "97161295",
                "163348987",
                "483899693",
                "330296266",
                "123234510",
                "146047188",
                "2569022418",
                "170896941",
                "255800146",
                "15176169",
                "35683911",
                "81847365",
                "15731350",
                "302281291",
                "14131602",
                "29939404",
                "2136391608",
                "15668963",
                "18482570",
                "425121415",
                "139578061",
                "56561570",
                "563288952",
                "450566409",
                "97311482",
                "277955605",
                "3459922232",
                "13477890",
                "118281609",
                "549915884",
                "58574445",
                "19328185",
                "380204314",
                "295460702",
                "218631022",
                "106064469",
                "2350119937",
                "284135286",
                "27858062",
                "21445765",
                "128160832",
                "109583846",
                "39258329",
                "22152195",
                "46360920",
                "257343434",
                "21351465",
                "2463675080",
                "52625744",
                "58574452",
                "29532138",
                "2103276507",
                "47597835",
                "31314931",
                "31839260",
                "30649735",
                "21440056",
                "1117743696",
                "107458461",
                "172248941",
                "163353363",
                "380210977",
                "27245855",
                "34398653",
                "33683368",
                "57229313",
                "30847733",
                "173781053",
                "15470183",
                "542184488",
                "34901961",
                "46132907",
                "154727251",
                "109583822",
                "94333296",
                "142498104",
                "987032734",
                "1074742019",
                "45754061",
                "1829110586",
                "18409191",
                "206136532",
                "122278207",
                "880506541",
                "114020538",
                "16924676",
                "46846115",
                "928805891",
                "1380774367",
                "114687223",
                "99797403",
                "264989911",
                "78367424",
                "2804667002",
                "28671909",
                "112591865",
                "29100543",
                "25974222",
                "226206253",
                "228588651",
                "19111883",
                "189910805",
                "162857391",
                "236443047",
                "44116233",
                "38327125",
                "323192649",
                "10469910",
                "28672001",
                "101110605",
                "32353654",
                "738924664",
                "101078350",
                "20373160",
                "35684857",
                "14864611",
                "58574416",
                "402305186",
                "11885154",
                "18481407",
                "25162389",
                "41457719",
                "31314849",
                "20642023",
                "1258015943",
                "176219131",
                "29345958",
                "21439965",
                "18479966",
                "25158998",
                "48596324",
                "236441643",
                "105189783",
                "1645056094",
                "11419882",
                "99254437",
                "94794774",
                "78005009",
                "2830533679",
                "435116927",
                "15970544",
                "13206887",
                "47871615",
                "57229337",
                "94794833",
                "88143166",
                "106701702",
                "356213494",
                "1929592959",
                "101079008",
                "13206856",
                "183826384",
                "37816777",
                "218634097",
                "327365543",
                "81154592",
                "29099749",
                "1088051376",
                "113299556",
                "44561400",
                "154727487",
                "120749494",
                "83021236",
                "629893424",
                "420161128",
                "80576952",
                "343587237",
                "402304782",
                "99797381",
                "304720496",
                "71037076",
                "66896638",
                "85754656",
                "335086410",
                "32858586",
                "236401511",
                "445150567",
                "2045764727",
                "215448210",
                "42845896",
                "108158439",
                "170903610",
                "63253706",
                "15973059",
                "79446473",
                "2316760298",
                "48159731",
                "88885481",
                "12504077",
                "101191388",
                "103234296",
                "50938746",
                "42845853",
                "602146440",
                "130925426",
                "160189871",
                "106701564",
                "116040807",
                "1230024287",
                "56561593",
                "101078524",
                "151292047",
                "98411325",
                "65979823",
                "754869699",
                "24791472",
                "21392417",
                "53623248",
                "319656563",
                "21802000",
                "1789547756",
                "189756588",
                "18482562",
                "66416602",
                "12902404",
                "84012460",
                "1760406591",
                "157205782",
                "1191128759",
                "30847746",
                "189910262",
                "93136674",
                "208659586",
                "208659734",
                "96095042",
                "80576928",
                "23306097",
                "77443491",
                "14492601",
                "2620524562",
                "233633874",
                "29532089",
                "66426498",
                "158069071",
                "1215515248",
                "47871597",
                "92142841",
                "69964719",
                "83704154",
                "346687267",
                "271017537",
                "74385438",
                "361950795",
                "155662087",
                "18017365",
                "168142620",
                "1258015236",
                "456221232",
                "160198363",
                "346685995",
                "33732371",
                "93136666",
                "1320966824",
                "306163602",
                "190094313",
                "10831489",
                "1360078533",
                "221181437",
                "69499437",
                "215392741",
                "86492467",
                "55917409",
                "92628074",
                "1609498185",
                "147143821",
                "621090617",
                "126719093",
                "99254164",
                "76170471",
                "176087556",
                "160199141",
                "18426536",
                "2620441860",
                "85879465",
                "97932897",
                "49491781",
                "172246820",
                "1001649855",
                "49929724",
                "1304344132",
                "63721711",
                "233520425",
                "2226815033",
                "292969139",
                "98219158",
                "15973049",
                "359244394",
                "53623322",
                "1492225511",
                "24659699",
                "128160929",
                "154727343",
                "97161222",
                "178076749",
                "248285248",
                "610133129",
                "24015579",
                "99254358",
                "91360052",
                "90718350",
                "1708354246",
                "330296114",
                "125013769",
                "478707595",
                "156467963",
                "86494914",
                "498752764",
                "100472084",
                "150366320",
                "94233391",
                "60888225",
                "106701619",
                "146047220",
                "16986649",
                "190094270",
                "113299590",
                "51346336",
                "95951291",
                "130113146",
                "846792499",
                "49929746",
                "1103012605",
                "61459592",
                "129471121",
                "183355732",
                "295460073",
                "62350846",
                "21439991",
                "129471170",
                "95951270",
                "49491716",
                "191261808",
                "147937284",
                "181550181",
                "226206639",
                "68539623",
                "17237675",
                "15470222",
                "176087597",
                "159229806",
                "336371164",
                "59848474",
                "68848741",
                "124126528",
                "176087466",
                "243007180",
                "335085355",
                "12775410",
                "356212121",
                "91294485",
                "420160506",
                "127506324",
                "79446395",
                "563287969",
                "82357101",
                "69567827",
                "73232803",
                "158069180",
                "2544539559",
                "51757158",
                "1402452608",
                "174752245",
                "12187431",
                "63253701",
                "2535102910",
                "99797357",
                "280662667",
                "81330766",
                "287424278",
                "98341183",
                "35293856",
                "21416138",
                "170902990",
                "904534702",
                "104642550",
                "71597072",
                "1132884456",
                "233660801",
                "315617026",
                "315573586",
                "206136361",
                "105351748",
                "413200176",
                "178076831",
                "74385399",
                "59805584",
                "45177979",
                "218631128",
                "1760404984",
                "2445084910",
                "188643628",
                "233520257",
                "66896542",
                "190880295",
                "87361508",
                "37347081",
                "80597060",
                "204095670",
                "54130543",
                "91360028",
                "77443436",
                "553937189",
                "107458531",
                "1536052210",
                "62350883",
                "11115851",
                "70476451",
                "47262951",
                "61916137",
                "170903868",
                "116055112",
                "95258660",
                "15179006",
                "51346471",
                "170896571",
                "56561607",
                "18462637",
                "41457484",
                "903197575",
                "64220933",
                "174752400",
                "160189476",
                "46846024",
                "76170545",
                "69210407",
                "74904396",
                "87361662",
                "139578571",
                "107458483",
                "261439002",
                "80576967",
                "97885289",
                "583159170",
                "47597760",
                "1241156683",
                "746687364",
                "302280931",
                "99119261",
                "10884288",
                "522587921",
                "268586231",
                "186958653",
                "277954704",
                "206798405",
                "48847374",
                "51757126",
                "532254782",
                "70476435",
                "14516975",
                "34898883",
                "118281529",
                "24396804",
                "243791145",
                "19703476",
                "68354832",
                "835779898",
                "146071355",
                "264990158",
                "120307951",
                "101078326",
                "73232786",
                "129471151",
                "1074738432",
                "116693694",
                "27171403",
                "728207067",
                "162857268",
                "1708355542",
                "123234626",
                "155662051",
                "26013203",
                "23727705",
                "88146497",
                "99254241",
                "50938773",
                "42847923",
                "163348758",
                "332748371",
                "332747438",
                "72644644",
                "97161241",
                "97756645",
                "273970482",
                "161211085",
                "236438668",
                "1149193097",
                "160198658",
                "59175777",
                "300410799",
                "73829202",
                "96669697",
                "99254203",
                "104642522",
                "108149201",
                "176087639",
                "191261930",
                "65079090",
                "119101643",
                "54694334",
                "10468915",
                "117498775",
                "317593302",
                "64220952",
                "114020557",
                "52180871",
                "14131296",
                "156467990",
                "89491407",
                "277955084",
                "163355211",
                "173755801",
                "55917420",
                "2163551089",
                "1492226137",
                "27860496",
                "90220438",
                "204095724",
                "159199263",
                "261827192",
                "88146505",
                "90220371",
                "45513247",
                "79446433",
                "184760397",
                "341109697",
                "569678090",
                "160189720",
                "1033137155",
                "621089209",
                "168140813",
                "71037056",
                "139578136",
                "95354259",
                "215355320",
                "54130559",
                "2568200796",
                "114687236",
                "271017937",
                "257343597",
                "2222648398",
                "178076989",
                "99033296",
                "93136746",
                "65079094",
                "2136389582",
                "2463683230",
                "22152234",
                "40493542",
                "22787168",
                "1117745433",
                "13206984",
                "16641274",
                "928796097",
                "2045767145",
                "241512134",
                "118281463",
                "95484354",
                "98253592",
                "176087640",
                "236440696",
                "155661985",
                "125013830",
                "83021217",
                "150363993",
                "70476425",
                "24686580",
                "76170515",
                "97886188",
                "186868641",
                "431038614",
                "183665698",
                "152233381",
                "52625733",
                "88885506",
                "17527923",
                "156467926",
                "243778818",
                "1241587075",
                "54694329",
                "298087401",
                "359179463",
                "57229357",
                "33866846",
                "74385418",
                "72644629",
                "158069110",
                "45941397",
                "2409286506",
                "159199218",
                "13478015",
                "12909278",
                "1536053426",
                "1587165780",
                "66416590",
                "59190543",
                "1829078563",
                "1241586595",
                "99119240",
                "59175769",
                "257812862",
                "159199229",
                "286527185",
                "188853857",
                "74972442",
                "2316759705",
                "549914420",
                "313547087",
                "52180863",
                "869125445",
                "83704165",
                "583157224",
                "122278276",
                "1320966419",
                "11999279",
                "74904413",
                "66896601",
                "46360870",
                "2014805757",
                "2385189785",
                "52180878",
                "22787189",
                "226205948",
                "33382711",
                "1990279115",
                "93709266",
                "21420014",
                "103338520",
                "28277486",
                "51346271",
                "61916132",
                "302502491",
                "1046322934",
                "271017031",
                "84417104",
                "221173389",
                "330295904",
                "50454041",
                "257813288",
                "78005082",
                "64160547",
                "395205750",
                "13477940",
                "228589017",
                "64647651",
                "255800783",
                "181356054",
                "56561579",
                "34398938",
                "185422295",
                "49052716",
                "106064315",
                "54130552",
                "18776718",
                "128162713",
                "163354553",
                "477911027",
                "503957703",
                "62350856",
                "728205177",
                "162857422",
                "1587175338",
                "88143060",
                "67319425",
                "108158379",
                "11999235",
                "61459678",
                "121385262",
                "53623295",
                "122278316",
                "48159815",
                "157205818",
                "2463693263",
                "248287898",
                "102705430",
                "1001653705",
                "385780758",
                "102705402",
                "13841367",
                "97161262",
                "38326803",
                "283756680",
                "125859385",
                "123234545",
                "24440014",
                "63721732",
                "161220552",
                "25741198",
                "241017426",
                "59806354",
                "709399046",
                "365642085",
                "75556791",
                "212500257",
                "47262108",
                "228588531",
                "304720206",
                "99641902",
                "152187198",
                "892003497",
                "387285940",
                "22971409",
                "183355969",
                "73232825",
                "16987194",
                "25545089",
                "50454086",
                "19111894",
                "80661504",
                "287426148",
                "25926517",
                "10510024",
                "101106464",
                "2620523077",
                "60357959",
                "73265108",
                "130113061",
                "78665215",
                "139577901",
                "20064349",
                "527383094",
                "2385192846",
                "467137230",
                "102705454",
                "15470359",
                "33867016",
                "46362414",
                "147937443",
                "138761013",
                "45094376",
                "68603151",
                "1981813154",
                "236442380",
                "96669687",
                "85145662",
                "903199054",
                "188644205",
                "53130867",
                "42845684",
                "65545971",
                "86492583",
                "537374622",
                "254608905",
                "76262706",
                "22969230",
                "16216702",
                "169602010",
                "241017568",
                "2620521684",
                "472607575",
                "445151478",
                "35366215",
                "32858699",
                "106064277",
                "292969932",
                "304719869",
                "96669943",
                "2620451289",
                "53130896",
                "206799274",
                "503957396",
                "92627975",
                "60357989",
                "483308034",
                "503955938",
                "33382537",
                "87361995",
                "511930668",
                "170896461",
                "113299641",
                "108875216",
                "60888308",
                "70476446",
                "163355404",
                "11719016",
                "187840979",
                "18010691",
                "321345839",
                "34870758",
                "183665514",
                "85145626",
                "52180858",
                "86494893",
                "53917288",
                "45513203",
                "22960435",
                "84418938",
                "858740936",
                "45941451",
                "68478587",
                "55917432",
                "71597048",
                "66426103",
                "93136802",
                "100469994",
                "273969902",
                "152187131",
                "53130887",
                "124127383",
                "332747874",
                "88885497",
                "1149579825",
                "99610601",
                "187688069",
                "15397778",
                "73888479",
                "1469850646",
                "223785473",
                "62803186",
                "1215506016",
                "46846074",
                "1560600467",
                "430065768",
                "45201977"
            }
            for i = 1, tonumber(splitted[2]) do
                chatshit("gear me " .. gears[math.random(1, #gears)])
                wait()
            end
        elseif splitted[1] == prefix .. "fixbaseplate" then -- credits knocks
            if not fixbaseplate then
                fixbaseplate = true
                if workspace.Terrain._Game.Workspace:FindFirstChild("Baseplate") then
                    movep(
                        workspace.Terrain._Game.Workspace.Baseplate,
                        CFrame.new(0, 0.100000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                    )
                else
                    popup("Baseplate Not Loaded!")
                end
                task.wait(0.6)
                fixbaseplate = false
            end
        elseif splitted[1] == prefix .. "spam" then -- credits knocks
            local msgToSpam = table.concat(splitted, " ", 2)
            Loops.spam = true

            spawn(
                function()
                    while Loops.spam do
                        chatshit(msgToSpam)
                        task.wait(0.01)
                    end
                end
            )
        elseif splitted[1] == prefix .. "stop" then -- credits knocks
            Loops.spam = false
        elseif splitted[1] == prefix .. "super" then -- credits knocks
            local msgToSuper = table.concat(splitted, " ", 2)
            for i = 1, 100 do
                chatshit(msgToSuper)
                task.wait(0.01)
            end
        elseif splitted[1] == prefix .. "anticolkick" then -- credits knocks
            if not anticolkicking then
                anticolkicking = true

                connections.antikark =
                    workspace.DescendantAdded:Connect(
                    function(Rocket)
                        if Rocket:IsA("BasePart") and (Rocket.Name == "Rocket" or Rocket.Name == "Addon") then
                            Rocket.CanCollide = false
                            Rocket.CanTouch = false
                            for _, c in pairs(Rocket:GetChildren()) do
                                pcall(
                                    function()
                                        c:Destroy()
                                    end
                                )
                            end
                        end
                    end
                )
                logn("Anti Collision Crash activated.")
            else
                logn("Anti Collision Crash is already active.")
            end
        elseif splitted[1] == prefix .. "antirocket" then -- credits knocks
            Loops.antirocket = true
            spawn(
                function()
                    repeat
                        task.wait()
                        for _, v in pairs(workspace:GetDescendants()) do
                            if v:IsA("Model") and v:FindFirstChild("Humanoid") then
                                local chr = v
                                if chr and chr:FindFirstChild("Rocket") then
                                    for _, rocket in pairs(chr:GetChildren()) do
                                        if rocket.Name == "Rocket" then
                                            rocket:Destroy()
                                        end
                                    end
                                end
                            end
                        end
                    until not Loops.antirocket
                end
            )
        elseif splitted[1] == prefix .. "bend" then
            local target = splitted[2]
            game.Players:Chat("rocket/" .. target)
            wait(0.30)
            game.Players:Chat("freeze " .. target)
            game.Players:Chat("unrocket/" .. target)
            wait(0.30)
            game.Players:Chat("name " .. target .. " " .. game.Players[target].DisplayName)
            wait(0.30)
            game.Players:Chat("thaw " .. target)
            wait(0.30)
            game.Players:Chat("unseizure " .. target)
            game.Players:Chat("tp " .. target .. " " .. target)
            game.Players:Chat("sit " .. target)
        elseif splitted[1] == prefix .. "lay" then
            local target = splitted[2]
            game.Players:Chat("seizure " .. target)
            wait(0.30)
            game.Players:Chat("reset " .. target)
            wait(0.30)
            game.Players:Chat("freeze " .. target)
            wait(0.30)
            game.Players:Chat("name " .. target .. " " .. game.Players[target].DisplayName)
            wait(0.30)
            game.Players:Chat("thaw " .. target)
            wait(0.30)
            game.Players:Chat("sit " .. target)
        elseif splitted[1] == prefix .. "maid" then
            local target = splitted[2]
            game.Players:Chat("shirt " .. target .. " 11576289536")
            game.Players:Chat("pants " .. target .. " 6094401840")
        elseif splitted[1] == prefix .. "furry" then
            local target = splitted[2]
            game.Players:Chat("unpackage " .. target)
            wait(0.05)
            game.Players:Chat("unhat " .. target)
            wait(0.05)
            game.Players:Chat("paint " .. target .. " Institutional white")
            game.Players:Chat("hat " .. target .. " 10563319994")
            game.Players:Chat("hat " .. target .. " 12578728695")
            game.Players:Chat("shirt " .. target .. " 10571467676")
            game.Players:Chat("pants " .. target .. " 10571468508")
        elseif splitted[1] == prefix .. "fmusic" then
            local geared
            if args[5] then
                geared = args[2], args[3], args[4], args[5]
            else
                if args[4] then
                    geared = args[2], args[3], args[4]
                else
                    if args[3] then
                        geared = args[2], args[3]
                    else
                        if args[2] then
                            geared = args[2]
                        end
                    end
                end
            end
            local url =
                "https://search.roblox.com/catalog/json?CatalogContext=2&AssetTypeID=3&PageNumber=1&limit=10&Category=9&SortType=0&keyword=" ..
                args[2] .. "/"
            local returned = http:JSONDecode(game:HttpGet(url))
            if not returned then
                error("Catalog Audio API didn't return anything.")
            end
            local music = returned[1]
            if not music or not music.AssetId then
                error("No Audio found for that search")
            end

            chatshit("music " .. tostring(music.AssetId))
        elseif splitted[1] == prefix .. "fgear" then
            for _Index, Target in pairs(GetPlayer(args[2])) do
                if args[4] and args[4] ~= "" then
                    _G.gear = args[3] .. "%" .. args[4]
                else
                    _G.gear = args[3]
                end
                local gearapi =
                    "https://catalog.roblox.com/v1/search/items?category=Accessories&limit=120&subcategory=Gear&includeNotForSale=true&keyword=" ..
                    _G.gear .. "&limit=120"
                local nm = {}
                for i = 1, 100 do
                    table.insert(nm, i)
                end

                response = http:JSONDecode(game:HttpGet(gearapi))
                for i = 1, 200 do
                    task.wait(.1)
                    chatshit("gear " .. Target.Name .. " " .. response.data[i].id)
                end
            end
        elseif splitted[1] == prefix .. "gearbl" then
            for _Index, Target in pairs(GetPlayer(splitted[2])) do
                _G.cagecheck = false
                chatshit("gear me 00000000000000000082357101")
                if _G.cagecheck == false then
                    _G.cagecheck = true
                    repeat
                        task.wait()
                    until plr.Backpack:FindFirstChild("PortableJustice")
                    plr.Backpack.PortableJustice.Parent = plr.Character
                    repeat
                        task.wait()
                    until game.Workspace[plr.Name].PortableJustice:FindFirstChild("MouseClick")
                    local oldpos = plr.Character.HumanoidRootPart.CFrame
                    plr.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
                    chatshit("unff " .. Target.Name)
                    repeat
                        coroutine.wrap(
                            function()
                                game.Workspace[plr.Name].PortableJustice.MouseClick:FireServer(
                                    game.Workspace[Target.Name]
                                )
                            end
                        )()
                        task.wait()
                    until Target.Character:FindFirstChild("DisableBackpack")
                    coroutine.wrap(
                        function()
                            chatshit("reset me")
                            chatshit("reset " .. Target.Name)
                            _G.cagecheck = false
                            Target.CharacterAdded:Wait()
                            chatshit("pm/" .. Target.Name .. "/get gearbanned lol")
                        end
                    )()
                    plr.CharacterAdded:wait()
                    plr.Character:WaitForChild("HumanoidRootPart")
                    plr.Character.HumanoidRootPart.CFrame = oldpos
                end
            end
        elseif splitted[1] == prefix .. "findhat" then
            local target = splitted[2]
            local hatName = table.concat(splitted, " ", 3)
            local request =
                game:HttpGet(
                "https://catalog.roproxy.com/v1/search/items?category=Accessories&includeNotForSale=true&limit=10&salesTypeFilter=1&Keyword=" ..
                    hatName
            )
            local decode = game:GetService("HttpService"):JSONDecode(request)
            game.Players:Chat("hat " .. target .. " " .. tostring(decode["data"][1]["id"]))
        elseif splitted[1] == prefix .. "findhair" then
            local target = splitted[2]
            local hairName = table.concat(splitted, " ", 3)
            local request =
                game:HttpGet(
                "https://catalog.roblox.com/v1/search/items?category=BodyParts&includeNotForSale=true&limit=120&salesTypeFilter=1&subcategory=HairAccessories&Keyword=" ..
                    hairName
            )
            local decode = game:GetService("HttpService"):JSONDecode(request)
            game.Players:Chat("hair " .. target .. " " .. tostring(decode["data"][1]["id"]))
        elseif splitted[1] == prefix .. "findface" then
            local target = splitted[2]
            local faceName = table.concat(splitted, " ", 3)
            local request =
                game:HttpGet(
                "https://catalog.roproxy.com/v1/search/items?category=BodyParts&includeNotForSale=true&limit=10&salesTypeFilter=1&subcategory=Faces&Keyword=" ..
                    faceName
            )
            local decode = game:GetService("HttpService"):JSONDecode(request)
            game.Players:Chat("face " .. target .. " " .. tostring(decode["data"][1]["id"]))
        elseif splitted[1] == prefix .. "findshirt" then
            local target = splitted[2]
            local shirtName = table.concat(splitted, " ", 3)
            local request =
                game:HttpGet(
                "https://catalog.roproxy.com/v1/search/items?category=Clothing&includeNotForSale=true&limit=10&salesTypeFilter=1&subcategory=ClassicPants&keyword=" ..
                    shirtName
            )
            local decode = game:GetService("HttpService"):JSONDecode(request)
            game.Players:Chat("shirt " .. target .. " " .. tostring(decode["data"][1]["id"]))
        elseif splitted[1] == prefix .. "findpants" then
            local target = splitted[2]
            local pantsName = table.concat(splitted, " ", 3)
            local request =
                game:HttpGet(
                "https://catalog.roproxy.com/v1/search/items?category=Clothing&includeNotForSale=true&limit=10&salesTypeFilter=1&subcategory=ClassicPants&keyword=" ..
                    pantsName
            )
            local decode = game:GetService("HttpService"):JSONDecode(request)
            game.Players:Chat("pants " .. target .. " " .. tostring(decode["data"][1]["id"]))
        elseif splitted[1] == prefix .. "checkperm" then
            local target = splitted[2]
            local has = checkGamepass(game.Players[target], 66254)
            if has == "200" then
                chatshit("h/ \n\n\n" .. game.Players[target].DisplayName .. " has Perm.\n\n\n")
            else
                chatshit("h/ \n\n\n" .. game.Players[target].DisplayName .. " does not have Perm.\n\n\n")
            end
        elseif splitted[1] == prefix .. "checkperson" then
            local target = splitted[2]
            local has = checkGamepass(game.Players[target], 35748)
            if has == "200" then
                chatshit("h/ \n\n\n" .. game.Players[target].DisplayName .. " has Person's Admin.\n\n\n")
            else
                chatshit("h/ \n\n\n" .. game.Players[target].DisplayName .. " doesn't have Person's Admin.\n\n\n")
            end
        elseif splitted[1] == prefix .. "check" then
            local target = splitted[2]
            game.Players:Chat(prefix .. "checkperm " .. target)
            game.Players:Chat(prefix .. "checkperson " .. target)
        elseif splitted[1] == prefix .. "unantikick" then -- credits knocks
            if connections.antikark then
                connections.antikark:Disconnect()
                logn("Anti Collision Crash has been turned off.")
            else
                logn("Anti Collision Crash is not active.")
            end
        elseif splitted[1] == prefix .. "breakvel" then
            local targetName = splitted[2]
            if targetName then
                chatshit("stun" .. targetName)
                for i = 1, 48 do
                    chatshit("unpunish" .. targetName)
                end
                chatshit("seizure" .. targetName)
                chatshit("unskydive" .. targetName)
                for i = 1, 10 do
                    chatshit(
                        "pm/" ..
                            targetName ..
                                "/ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ụ̲ṛ̲ a f̲ạ̲ɡ̲ɡ̲ọ̲ṭ̲ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    )
                end
            end
        elseif splitted[1] == prefix .. "fixfilter" then -- credits cxo for this
            for i = 1, 25 do
                chatshit(Quotes[math.random(1, #Quotes)])
            end
        elseif splitted[1] == prefix .. "clrlogs" then
            logn("Cleared!")
            for i = 1, 100 do
                chatshit("ff " .. Quotes[math.random(1, #Quotes)])
            end
            wait(0.5)
            chatshit("unff all")
            wait(1)
            if allowads == true then
                chatshit("ff Powered by jisatsu")
                chatshit("ff disc kyrofrost")
                chatshit("unff all")
            end
        elseif splitted[1] == prefix .. "movespawn" then -- credits knocks
            local targetName = splitted[2]
            local targetPlayer = game.Players:FindFirstChild(targetName)
            if targetPlayer then
                local function movepart(targetPart)
                    local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
                    spawn(
                        function()
                            while true do
                                game:GetService("RunService").Heartbeat:Wait()
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                                cf.CFrame =
                                    targetPart.CFrame *
                                    CFrame.new(
                                        -1 * (targetPart.Size.X / 2) -
                                            (game.Players.LocalPlayer.Character.Torso.Size.X / 2),
                                        0,
                                        0
                                    )
                            end
                        end
                    )
                    spawn(
                        function()
                            while true do
                                wait(0.1)
                                chatshit("unpunish me")
                            end
                        end
                    )
                    wait(0.3)
                    chatshit("tp me " .. targetPlayer.Name)
                    task.wait(0.4)
                    chatshit("respawn me")
                    task.wait(0.3)
                end
                movepart(workspace.Terrain._Game.Workspace.Spawn1)
            else
                logn("Target player not found.")
            end
        elseif splitted[1] == prefix .. "alteredfreeze" then -- credits to knocks for this
            v = gpfs(splitted[2])
            chatshit("freeze " .. v.Name .. " fuck")
            chatshit("name " .. v.Name .. " " .. v.DisplayName)
            task.wait(0.2)
            chatshit("thaw " .. v.Name)
        elseif splitted[1] == prefix .. "fixvel" then
            local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
            local Workspace_Folder = Game_Folder.Workspace
            local Admin_Folder = Game_Folder.Admin

            if Workspace_Folder:FindFirstChild("Baseplate") then
                Workspace_Folder.Baseplate.Velocity = Vector3.new(0, 0, 0)
                Workspace_Folder.Baseplate.RotVelocity = Vector3.new(0, 0, 0)
            end

            for _, v in pairs(Workspace_Folder["Basic House"]:GetChildren()) do
                v.Velocity = Vector3.new(0, 0, 0)
                v.RotVelocity = Vector3.new(0, 0, 0)
            end

            for _, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
                v.Velocity = Vector3.new(0, 0, 0)
                v.RotVelocity = Vector3.new(0, 0, 0)
            end

            for _, v in pairs(Workspace_Folder["Admin Dividers"]:GetChildren()) do
                v.Velocity = Vector3.new(0, 0, 0)
                v.RotVelocity = Vector3.new(0, 0, 0)
            end

            for _, v in pairs(Workspace_Folder["Obby Box"]:GetChildren()) do
                v.Velocity = Vector3.new(0, 0, 0)
                v.RotVelocity = Vector3.new(0, 0, 0)
            end

            for _, v in pairs(Workspace_Folder["Building Bricks"]:GetChildren()) do
                v.Velocity = Vector3.new(0, 0, 0)
                v.RotVelocity = Vector3.new(0, 0, 0)
            end

            Admin_Folder.Regen.Velocity = Vector3.new(0, 0, 0)
            Admin_Folder.Regen.RotVelocity = Vector3.new(0, 0, 0)

            for _, v in pairs(Admin_Folder.Pads:GetDescendants()) do
                if v.Name == "Head" then
                    v.Velocity = Vector3.new(0, 0, 0)
                    v.RotVelocity = Vector3.new(0, 0, 0)
                end
            end
            logn("Velocity has been fixed!")
        elseif splitted[1] == prefix .. "playlist" then
            game.Players.LocalPlayer.Chatted:Connect(
                function(msg)
                    if msg == "delaudio" then
                        chatshit("h/ \n\n\nAudioDeleted\n\n\n")
                    end
                end
            )

            local songIds = {
                {9043892984, 200, "dele mami"},
                {9043878179, 200, "Kikbak ft Styliztik & Kaisha"},
                {1840040963, 200, "Rhythm"},
                {1841443579, 200, "tripping on love"},
                {7029017448, 206, "play it cool - terry zchong"},
                {1846808350, 200, "get up and boogy"},
                {7023741506, 200, "Elypsis - i miss you"},
                {1848220276, 200, "different than normal"},
                {9042523170, 200, "come closer -- reginald keith"},
                {9043876028, 200, "flexxin on the gram"},
                {9043893928, 200, "sin remordimientos"},
                {9043870264, 200, "shumba - real friend"},
                {6901063458, 200, "rihanna SOS"},
                {7024035759, 250, "dexter king - get to know you"},
                {1835662728, 200, "unknown"},
                {29040163991, 200, "Soviet Anthem"},
                {1836807218, 200, "soarcrash"},
                {183736729, 201, "Hound Dogs of Love"},
                {1840003540, 200, "Tell it to yourself"},
                {1838488910, 230, "Take the Road"},
                {1837871444, 230, "Your love is Anarchy"},
                {1843324953, 235, "Night out"},
                {1840047556, 235, "So bad - Juice music"},
                {1838569831, 235, "Never gonna give you up"},
                {1837258874, 131, "la cucaracha😃😜😀"},
                {1843434135, 235, "Twisted Love"},
                {1837881688, 185, "Shattered Heart"},
                {1837848096, 220, "Feels good to Cry"},
                {9042524725, 33, "Space"},
                {9045373969, 235, "A lo Caliche"},
                {9047105584, 235, "On the Verge"},
                {1836736337, 235, "Just Wanna Dance"},
                {1836736337, 140, "Fur immer deutsch<3"},
                {1836736337, 80, "Wandering"},
                {1845932062, 234, "Vuelve A Mi A"},
                {1836743584, 235, "You Aint Hot"},
                {1840041842, 190, "Till the Mornin"},
                {6708444383, 190, "beats"},
                {6924735395, 150, "Every time"},
                {13530438299, 140, "Beats"},
                {6942391979, 170, "ariashot"},
                {6913550990, 200, "FNAF"},
                {1846458016, 200, "no more"},
                {6924735395, 200, "For me"},
                {1838457617, 200, "Clair De Lune"},
                {6872126938, 200, "Young - Vacations"},
                {6823597327, 200, "Brooklyn Blood Pop"},
                {9047050075, 200, "Lofi Hiphop"},
                {9043887091, 200, "Lofi Chill"},
                {1839707719, 200, "Sweet Dance Song"},
                {1837870681, 200, "Autumn Leaves"},
                {5410082534, 150, "dubstep"},
                {5410082097, 200, "Bad Computer"},
                {5410080857, 200, "F.O.O.L & Midranger - Neon"},
                {5410084346, 240, "Pixel Terror - Amnesia"},
                {1837843587, 220, "a Bit of Rock"},
                {6828176320, 200, "Rolling Stones - Paint it Black"},
                {6772846771, 230, "Thats a bop"},
                {6806140478, 150, "Sad N**ga Hours"},
                {6953866301, 140, "MONTAGEM - EMPINA NA ONDA"},
                {6788646778, 200, "Hella Sketchy - Rare Gem"},
                {7006487793, 200, "Saw you at the Party"},
                {6973084731, 230, "Britney Speirs - Till the World Ends"},
                {6925558165, 200, "Situation Critical - Platinum Blonde"}
            }

            local function sendPlaylistReminder()
                task.wait(3)
                while true do
                    game.Players:Chat(
                        "m/ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nSoar's Playlist❤️\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    )
                    wait(math.random(60, 140))
                end
            end

            local soundFolder = workspace:FindFirstChild("Game")
            if soundFolder then
                local sounds = soundFolder:GetDescendants()
                for _, sound in ipairs(sounds) do
                    if sound:IsA("Sound") and not sound.PlayOnRemove then
                        sound.PlayOnRemove = true
                    end
                end
            end

            spawn(SendPlayListReminder)

            local function sendPlaylistReminder()
                task.wait(3)
                while true do
                    game.Players:Chat(
                        "m/ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nSoar's Playlist❤️\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    )
                    wait(math.random(60, 140))
                end
            end

            local function shuffleSongIds()
                local currentIndex = #songIds
                while currentIndex > 1 do
                    local randomIndex = math.random(1, currentIndex)
                    songIds[currentIndex], songIds[randomIndex] = songIds[randomIndex], songIds[currentIndex]
                    currentIndex = currentIndex - 1
                end
            end

            local audioEnabled = true
            local audioObjects = {} -- to store references to audio objects

            local function enableAudio()
                if not audioEnabled then
                    audioEnabled = true
                    chatshit("h/ \n\n\nAudio Enabled\n\n\n")
                    for _, audioObj in ipairs(audioObjects) do
                        audioObj.Volume = 1
                    end
                end
            end

            local isPaused = false
            local wasPaused = false

            local function pauseAudio()
                while isPaused do
                    for _, sound in pairs(workspace.Terrain._Game.Folder:GetDescendants()) do
                        if sound:IsA("Sound") and sound.Playing then
                            sound.Playing = false
                        end
                    end

                    if not wasPaused then
                        game.Players:Chat("h/ \n\n\nPaused\n\n\n")
                        wasPaused = true
                    end
                    wait()
                end
                wasPaused = false
            end

            game.Players.LocalPlayer.Chatted:Connect(
                function(msg)
                    if string.sub(msg:lower(), 1, #prefix + 9) == prefix .. "loadaudio" then
                        enableAudio()
                    end
                end
            )

            game.Players.LocalPlayer.Chatted:Connect(
                function(msg)
                    if string.sub(msg:lower(), 1, #prefix + 9) == prefix .. "pdelaudio" then
                        isPaused = true
                        pauseAudio()
                    end
                end
            )

            local songperms = {}

            game.Players.LocalPlayer.Chatted:Connect(
                function(msg)
                    if string.sub(msg:lower(), 1, #prefix + 9) == prefix .. "songperms" then
                        msg = msg:split(" ")
                        for _, v in next, game.Players:GetPlayers() do
                            if
                                string.match(
                                    v.Name:lower():sub(1, #msg[2]:lower()),
                                    msg[2]:lower():sub(1, #msg[2]:lower())
                                )
                             then
                                table.insert(songperms, v.Name)
                                v.Chatted:Connect(
                                    function(m)
                                        if m:sub(1, 1) == "!" and table.find(songperms, v.Name) then
                                            chatshit(m)
                                        end
                                    end
                                )
                            end
                        end
                    end
                end
            )

            game.Players.LocalPlayer.Chatted:Connect(
                function(msg)
                    if msg:sub(1, #prefix + 12) == prefix .. "removeperms" then
                        msg = msg:split(" ")
                        for _, v in next, game.Players:GetPlayers() do
                            if string.match(v.Name:lower():sub(1, #msg[2]), msg[2]:lower():sub(1, #msg[2])) then
                                for i in #songperms do
                                    if songperms[i] == v.Name then
                                        table.remove(songperms, i)
                                    end
                                end
                            end
                        end
                    end
                end
            )

            local function selectAudio(audio)
                local currentSong = songIds[audio]
                local currentSongId = currentSong[1]
                local currentSongDuration = currentSong[2]
                local currentSongName = currentSong[3]

                chatshit("music " .. tostring(currentsongId))

                chatshit("h \n\n\n\n\n\n\n\n\n\n\nNow playing: \n" .. currentSongName .. "\n\n\n\n\n\n\n\n\n\n\n")

                local elapsedTime = 0
                while elapsedTime < currentSongDuration do
                    wait(1)
                    elapsedTime = elapsedTime + 1
                end

                playNextSong()
            end

            game.Players.LocalPlayer.Chatted:Connect(
                function(msg)
                    if string.sub(msg:lower(), 1, #prefix + 6) == prefix .. "select" then
                        s = msg:split(" ")
                        selectAudio(tonumber(s[2]))
                    end
                end
            )

            local function disableAudio()
                if audioEnabled then
                    audioEnabled = false
                    for _, sound in pairs(workspace:GetDescendants()) do
                        if sound:IsA("Sound") or sound:IsA("SoundGroup") then
                            table.insert(audioObjects, sound) -- idek
                            sound.Volume = 0
                        end
                    end
                    chatshit("h/ \n\n\nAudio Disabled")
                end
            end

            game.Players.LocalPlayer.Chatted:Connect(
                function(msg)
                    if msg == prefix .. "delaudio" then
                        disableAudio()
                    elseif msg == prefix .. "loadaudio" then
                        enableAudio()
                    end
                end
            )

            -- hook into new audio creation & disable if audio is disabled
            workspace.DescendantAdded:Connect(
                function(obj)
                    if not audioEnabled and (obj:IsA("Sound") or obj:IsA("SoundGroup")) then
                        table.insert(audioObjects, obj) -- store references to new audio objects
                        obj.Volume = 0
                    end
                end
            )

            local currentIndex = 0

            local function playNextSong()
                currentIndex = currentIndex + 1

                if currentIndex > #songIds then
                    currrentIndex = 1
                    shuffleSongIds()
                end

                local currentSong = songIds[currentIndex]
                local currentSongId = currentSong[1]
                local currentSongDuration = currentSong[2]
                local currentSongName = currentSong[3]

                chatshit("music " .. tostring(currentSongId))

                chatshit("h \n\n\n\n\n\n\n\n\n\n\nNow playing: \n" .. currentSongName .. "\n\n\n\n\n\n\n\n\n\n\n")

                local elapsedTime = 0
                while elapsedTime < currentSongDuration do
                    wait(1)
                    elapsedTime = elapsedTime + 1
                end

                playNextSong()
            end

            game.Players.LocalPlayer.Chatted:Connect(
                function(msg)
                    if string.sub(msg:lower(), 1, #prefix + 4) == prefix .. "skip" then
                        playNextSong()
                    end
                end
            )

            game.Players.LocalPlayer.Chatted:Connect(
                function(msg)
                    if string.sub(msg:lower(), 1, #prefix + 5) == prefix .. "clean" then
                        game.Players:Chat("fix")
                        game.Players:Chat("removejails")
                        game.Players:Chat("removeclones")
                        game.Players:Chat(
                            "ungear me                                                               others fuck"
                        )
                    end
                end
            )

            game.Players.LocalPlayer.Chatted:Connect(
                function(msg)
                    if string.sub(msg:lower(), 1, #prefix + 9) == prefix .. "soarcrash" then
                        chatshit("h/ \n\n\nSoarCrash\n\n\n")
                        chatshit("music 1836807218")
                        chatshit("h/ \n\n\nSoarCrash\n\n\n")
                        chatshit("respawn all all all//")
                        wait(0.30)
                        for i = 1, 10 do
                            for i = 1, 99 do
                                chatshit("shield/all all all youknowsoar")
                                chatshit("dog all all all justsoar")
                                chatshit("rocket/all/all/all doingsoarstuff")
                                chatshit("tp all me")
                                chatshit("clone all all all")
                            end
                            wait(0.5)
                            for i = 1, 10 do
                                wait(0.5)
                                chatshit("clone all all all")
                                chatshit("tp all me")
                                chatshit("shield/all all all fuckin soar is cool")

                                for i = 1, 10 do
                                    for i = 1, 99 do
                                        chatshit("shield/all all all soarfuckedthis")
                                        chatshit("dog all all all ordidshe")
                                        chatshit("rocket/all/all/all urgamesweak")
                                    end
                                    wait(0.5)
                                    for i = 1, 10 do
                                        wait(0.5)
                                        chatshit("shield/all all all fuckin noobs")
                                        chatshit("tp all me")
                                        chatshit("clone all all all")
                                    end
                                end
                            end
                        end
                    end
                end
            )

            chatshit(
                "m/ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n❤️Now playing from Joey's Playlist❤️\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            )

            wait(5)

            shuffleSongIds()

            playNextSong()
            print(songIds)


            if not game:GetService("ReplicatedStorage"):FindFirstChild("Xeno") then
                warn("Xeno module not found in ReplicatedStorage.")
        elseif splitted[1] == prefix .. "stonemap" then
            local player = game.Players.LocalPlayer
            chatshit("gear me 59190534")

            local function findAndUseStaff()
                for _, v in pairs(player.Backpack:GetChildren()) do
                    if v.Name == "StatueStaffOfStonyJustice" then
                        v.Parent = player.Character
                        task.wait(0.01)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                        task.wait(8)
                        chatshit("ungear me")
                        chatshit("clr")
                        return true
                    end
                end
                return false
            end

            local attempts = 0
            while not findAndUseStaff() and attempts < 10 do
                task.wait(0.1)
                attempts = attempts + 1
            end
        elseif splitted[1] == prefix .. "aura" or splitted[1] == prefix .. "forcefield" then -- credits to cxo for this
            if nadoublechatkys == true then
                return
            else
                nadoublechatkys = true
                blehhhhhhhhh = true

                local function getparticlz()
                    if lp.Backpack:FindFirstChild("OmegaRainbowSword") then
                        local ors = lp.Backpack:FindFirstChild("OmegaRainbowSword")
                        ors.Parent = lp.Character
                        repeat
                            task.wait()
                        until ors.Parent == lp.Character
                        ors.Parent = lp.Backpack
                    else
                        if
                            not lp.Backpack:FindFirstChild("OmegaRainbowSword") and
                                not lp.Character:FindFirstChild("OmegaRainbowSword")
                         then
                            chatshit("gear me " .. hidegears .. "287426148")
                            task.wait(0.2)
                            local ors = lp.Backpack:WaitForChild("OmegaRainbowSword")
                            ors.Parent = lp.Character
                            repeat
                                task.wait()
                            until ors.Parent == lp.Character or blehhhhhhhhh == false
                            ors.Parent = lp.Backpack
                        end
                    end
                end

                local function listenupbuddy()
                    if workspacecon then
                        workspacecon:Disconnect()
                    end
                    if backpackcon then
                        backpackcon:Disconnect()
                    end

                    workspacecon =
                        workspace.ChildRemoved:Connect(
                        function(cxogroomedme)
                            if cxogroomedme.Name == lp.Name .. "'s Particles" and blehhhhhhhhh == true then
                                repeat
                                    task.wait()
                                until lp.Backpack:FindFirstChild("OmegaRainbowSword") or
                                    lp.Character:FindFirstChild("OmegaRainbowSword")
                                getparticlz()
                            end
                        end
                    )

                    backpackcon =
                        lp.Backpack.ChildRemoved:Connect(
                        function(me_when_i_uh)
                            if me_when_i_uh.Name == "OmegaRainbowSword" and blehhhhhhhhh == true then
                                task.wait(0.3)
                                if
                                    not lp.Backpack:FindFirstChild("OmegaRainbowSword") and
                                        not lp.Character:FindFirstChild("OmegaRainbowSword")
                                 then
                                    chatshit("gear me " .. hidegears .. "287426148")
                                    repeat
                                        task.wait()
                                    until lp.Backpack:FindFirstChild("OmegaRainbowSword") or
                                        lp.Character:FindFirstChild("OmegaRainbowSword")
                                    getparticlz()
                                end
                            end
                        end
                    )
                end

                getparticlz()
                listenupbuddy()

                lp.CharacterAdded:Connect(
                    function()
                        if blehhhhhhhhh == true then
                            if pdiddyrapedme == true then
                                return
                            end
                            pdiddyrapedme = true
                            repeat
                                task.wait()
                            until lp and lp.Character
                            getparticlz()
                            listenupbuddy()
                            pdiddyrapedme = false
                        end
                    end
                )
            end
        elseif splitted[1] == prefix .. "f3x" or splitted[1] == prefix .. "fex" then
            loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
        elseif splitted[1] == prefix .. "age" then
            local players = getPlayer(splitted[2], speaker)
            local ages = {}
            for i, v in pairs(players) do
                local p = Players[v]
                table.insert(ages, p.Name .. "'s age is: " .. p.AccountAge)
            end
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                "Account Age",
                table.concat(ages, ",\n")
            )
        elseif splitted[1] == prefix .. "chatage" then
            local players = getPlayer(splitted[2], speaker)
            local ages = {}
            for i, v in pairs(players) do
                local p = Players[v]
                table.insert(ages, p.Name .. "'s age is: " .. p.AccountAge)
            end
            local chatString = table.concat(ages, ", ")
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatString)
        elseif splitted[1] == prefix .. "joindate" or splitted[1] == prefix .. "jd" then
            local players = getPlayer(splitted[2], speaker)
            local dates = {}
            logny("Loading", "Hold on a sec")
            for i, v in pairs(players) do
                local user = game:HttpGet("https://users.roblox.com/v1/users/" .. Players[v].UserId)
                local json = HttpService:JSONDecode(user)
                local date = json["created"]:sub(1, 10)
                local splitDates = string.split(date, "-")
                table.insert(
                    dates,
                    Players[v].Name .. " joined: " .. splitDates[2] .. "/" .. splitDates[3] .. "/" .. splitDates[1]
                )
            end
            local chatString = table.concat(dates, ", ")
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatString)
        elseif splitted[1] == prefix .. "house" then
            wait(0.1)
            local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            if Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    -30.1969719,
                    8.22999954,
                    72.12043,
                    -0.998412967,
                    -2.57047859e-08,
                    0.0563161708,
                    -2.74235497e-08,
                    1,
                    -2.97470795e-08,
                    -0.0563161708,
                    -3.12442587e-08,
                    -0.998412967
                )
            end
        elseif splitted[1] == prefix .. "spawn" then
            wait(0.1)
            local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            if Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-41.18, 12.66, -24.17)
            end
        elseif splitted[1] == prefix .. "cagespawn" then -- credits to knocks for this
            movep(
                workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel40,
                CFrame.new(
                    -38.314312,
                    31.3491211,
                    -19.8837395,
                    0.999993742,
                    0.00250258623,
                    -0.00250259414,
                    -0.00250258623,
                    -6.19888306e-06,
                    -0.999996841,
                    -0.00250259414,
                    0.999996841,
                    5.96046448e-08
                )
            )
        elseif splitted[1] == prefix .. "rj" then -- also joins Private Servers. Credits to cxo for this (mine was more complicated and didn't work for private servers)
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.jobId)
        elseif splitted[1] == prefix .. "ie" then
            chatshit(
                "h/ \n\n " ..
                    Quotes[math.random(#Quotes)] ..
                        "\nJisatsu is a PRIVATE SCRIPT!\nOnly a select few people have access to this script, and that\nmost likely does not include you. There are " ..
                            tostring(#commandlist) ..
                                " commands in\nour script, and the commands can be viewed by running " ..
                                    prefix .. "cmds\nor " .. prefix .. "altcmds in chat."
            )
        elseif splitted[1] == prefix .. "combustablelemon" then -- credits to ii's admin
            chatshit(
                "pm me I'M THE MAN THAT'S GONNA [REDACTED] YOUR HOUSE DOWN!\nWITH THE LEMONS!\n\nTo use, click while holding the lemon.\nOr, for the mobile users (imagine), hit the button in the bottom right corner"
            )
            chatshit("gear me 19703476")
            repeat
                game:GetService("RunService").RenderStepped:Wait()
            until game.Players.LocalPlayer.Backpack:FindFirstChild("YellowSnowball")
            logn("<Jisatsu.lua> found da snowball")
            local CombustableLemon = game.Players.LocalPlayer.Backpack:FindFirstChild("YellowSnowball")
            CombustableLemon:FindFirstChildOfClass("LocalScript").Disabled = true
            CombustableLemon.TextureId = "rbxassetid://7285797360"
            CombustableLemon.Name = "CombustableLemon"

            -- Gui to Lua
            -- Version: 3.2

            -- Instances:

            local lemonui = Instance.new("ScreenGui")
            local lemonbutton = Instance.new("TextButton")

            --Properties:

            lemonui.Name = "lemonui"
            lemonui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
            lemonui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            lemonui.Enabled = false

            lemonbutton.Name = "lemonbutton"
            lemonbutton.Parent = lemonui
            lemonbutton.AnchorPoint = Vector2.new(1, 1)
            lemonbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            lemonbutton.Position = UDim2.new(1, 0, 1, 0)
            lemonbutton.Size = UDim2.new(0, 110, 0, 110)
            lemonbutton.Font = Enum.Font.SourceSans
            lemonbutton.Text = "imagine being on mobile"
            lemonbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
            lemonbutton.TextScaled = true
            lemonbutton.TextSize = 14.000
            lemonbutton.TextWrapped = true

            local bombing = false
            CombustableLemon.Equipped:Connect(
                function(yeahh)
                    lemonui.Enabled = true
                    chatshit("music 899460722")
                    repeat
                        wait()
                    until workspace.Terrain["_Game"].Folder.Sound.IsLoaded
                    wait(0.1)
                    spawn(
                        function()
                            wait(game:GetService("Workspace").Terrain["_Game"].Folder.Sound.TimeLength - 0.2)
                            chatshit("music nan")
                        end
                    )
                end
            )

            CombustableLemon.Unequipped:Connect(
                function()
                    lemonui.Enabled = false
                end
            )

            game:GetService("UserInputService").InputBegan:Connect(
                function(ip, gp)
                    if
                        not bombing and not gp and ip.UserInputType == Enum.UserInputType.MouseButton1 and
                            CombustableLemon and
                            CombustableLemon.Parent == game.Players.LocalPlayer.Character
                     then
                        bombing = true
                        chatshit("music 132323614")
                        wait(0.6)
                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            unpack(
                                {
                                    "I'M THE MAN WHO'S GONNA BURN YOUR HOUSE DOWN!",
                                    "All"
                                }
                            )
                        )
                        wait(2.9)
                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            unpack({"WITH THE LEMONS!", "All"})
                        )
                        wait(0.6)
                        chatshit("explode me")
                        wait(0.7)
                        chatshit("music nan")
                    end
                end
            )

            lemonbutton.MouseButton1Click:Connect(
                function()
                    if
                        not bombing and CombustableLemon and
                            CombustableLemon.Parent == game.Players.LocalPlayer.Character
                     then
                        bombing = true
                        chatshit("music 132323614")
                        wait(0.6)
                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            unpack(
                                {
                                    "I'M THE MAN WHO'S GONNA BURN YOUR HOUSE DOWN!",
                                    "All"
                                }
                            )
                        )
                        wait(2.9)
                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            unpack({"WITH THE LEMONS!", "All"})
                        )
                        wait(0.6)
                        chatshit("explode me")
                        wait(0.7)
                        chatshit("music nan")
                    end
                end
            )
        elseif splitted[1] == prefix .. "spawnkill" then -- credits to ii's admin / knocks for this
            chatshit(prefix .. "nok")
            movep(
                game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump9,
                CFrame.new(-41.0650024, 1.30000007, -28.601058959961, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            )
        elseif splitted[1] == prefix .. "alpaca" then -- credits to ii's admin
            for i = 1, tonumber(splitted[2]) do
                chatshit("gear me 292969139")
                wait()
            end
            wait(0.25)
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                local staff = v
                v.Parent = game.Players.LocalPlayer.Character
            end
            wait(0.1)
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") then
                    v:Activate()
                end
            end
        elseif splitted[1] == prefix .. "mozart" then -- credits to ii's admin for this
            for i = 1, tonumber(splitted[2]) do
                chatshit("gear me 113299590")
                wait()
            end
            wait(0.25)
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                local staff = v
                v.Parent = game.Players.LocalPlayer.Character
            end
            wait(0.1)
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") then
                    v:Activate()
                end
            end
        elseif splitted[1] == prefix .. "removeobby" then -- THIS IS CLIENT SIDED = credits to knocks for this and addobby.
            workspace.Terrain["_Game"]["Workspace"].Obby.Parent = game.Chat
            workspace.Terrain["_Game"]["Workspace"]["Obby Box"].Parent = game.Chat
        elseif splitted[1] == prefix .. "addobby" then -- THIS IS CLIENT SIDED = credits to knocks for this and removeobby.
            game.Chat:FindFirstChild("Obby").Parent = workspace.Terrain["_Game"]["Workspace"]
            game.Chat:FindFirstChild("Obby Box").Parent = workspace.Terrain["_Game"]["Workspace"]
        elseif splitted[1] == prefix .. "banan" then -- credits to ii's admin for this / cxo for the name
            for i = 1, tonumber(splitted[2]) do
                chatshit("gear me 29100449")
                wait()
            end
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                local staff = v
                v.Parent = game.Players.LocalPlayer.Character
            end
            wait(0.1)
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") then
                    v:Activate()
                end
            end
        elseif splitted[1] == prefix .. "railcannon" then -- credits to ii's admin for this
            local s, f =
                pcall(
                function()
                    local args = {15}
                    for i2 = 1, args[1] do
                        for i = 1, args[1] do
                            chatshit("gear me 79446473")
                            repeat
                                wait()
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Railgun")
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Railgun").GripPos =
                                (CFrame.Angles(0, 0, math.rad(i2 * (360 / args[1]))) *
                                CFrame.new(math.cos(i * (360 / args[1])) * 10, 0, math.sin(i * (args[1] / 360)) * 10)).p
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Railgun").Parent =
                                game.Players.LocalPlayer.Character
                        end
                    end
                end
            )
            if not s then
                print(f)
            end
            wait(0.25)
            chatshit("invisible me fuck")
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 8
            connections.cannonthing =
                game:GetService("UserInputService").InputBegan:Connect(
                function(inputa, gp)
                    if gp then
                        return
                    end
                    if inputa.UserInputType == Enum.UserInputType.MouseButton1 then
                        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v:IsA("Tool") then
                                v.Click:FireServer(game.Players.LocalPlayer:GetMouse().Hit.p)
                            end
                        end
                    end
                end
            )
        elseif splitted[1] == prefix .. "g/c" then -- FE cock script... (credits to jotunnheim) <FYI THIS DOES NOT WORK WITH JISATSU>
            local function cockScript()
                repeat
                    task.wait(0.1)
                    local hasenoughcocks = false

                    local gearid = "356212933"
                    local toolname = "SteampunkSteamGun"

                    local cockamount = getgenv().giantcock and 450 or 180

                    for i = 1, math.ceil(cockamount / 3) do
                        task.wait()
                        chatshit("gear me " .. gearid)
                    end

                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if i >= cockamount then
                            hasenoughcocks = true
                        end
                    end
                until hasenoughcocks == true

                repeat
                    task.wait()
                    chatshit("gear me 34399428")
                until game.Players.LocalPlayer.Backpack:FindFirstChild("ConfettiCannon")

                local loop = cockamount / 7
                local ballradius = 1
                local cockradius = 0.7

                local lp = game.Players.LocalPlayer
                local Position = lp.Character.HumanoidRootPart.CFrame

                local function equipTool(pos)
                    local tool = lp.Backpack:FindFirstChild(toolname)
                    tool.GripPos = pos
                    tool.Parent = lp.Character
                    return tool
                end

                for i = 1, loop do
                    equipTool(Vector3.new((ballradius * math.cos(i) + 0), (ballradius * math.sin(i) + 2), -21))
                end

                for i = 1, loop do
                    equipTool(Vector3.new((ballradius * math.cos(i) + 3), (ballradius * math.sin(i) + 2), -21))
                end

                for i = 1, loop do
                    equipTool(Vector3.new((ballradius * math.cos(i) + 1.5), (cockradius * math.sin(i) + 2), -21))
                end

                for i = 1, loop do
                    local tool =
                        equipTool(Vector3.new((cockradius * math.cos(i) + 1.5), (cockradius * math.sin(i) + 2), -18))
                    tool.Handle.Velocity = Vector3.new(1000, 1000, 10000)
                end

                for i = 1, loop do
                    local tool =
                        equipTool(Vector3.new((cockradius * math.cos(i) + 1.5), (cockradius * math.sin(i) + 2), -15))
                    tool.Handle.Velocity = Vector3.new(1000, 1000, 10000)
                end

                for i = 1, loop do
                    local tool =
                        equipTool(Vector3.new((cockradius * math.cos(i) + 1.5), (cockradius * math.sin(i) + 2), -12))
                    tool.Handle.Velocity = Vector3.new(1000, 1000, 10000)
                end

                local confetti = lp.Backpack:FindFirstChild("ConfettiCannon")
                confetti.GripPos = Vector3.new((1 * math.cos(1) + 1), (cockradius * math.sin(1) + 1.7), 12.5)
                confetti.Parent = lp.Character
                confetti.Handle.Velocity = Vector3.new(1000, 1000, 10000)
            end

            cockScript()
        elseif splitted[1] == prefix .. "blockchat" then -- thanks cxo
            if loops.spamming == true then
                logn("<Jisatsu.lua> You are already spamming!")
                return
            else
                loops.spamming = true
                task.spawn(
                    function()
                        repeat
                            task.wait()
                            chatshit(
                                "h guns.IoI/cxo & guns.lol/reiko | martin touched me | clyde kozy cxo ontop 😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹😹\n\n\n\n\nagspureiam: You diggin in me..\n\n\n\n\n"
                            )
                        until not loops.spamming
                    end
                )
            end
        elseif splitted[1] == prefix .. "stop2" then -- New stop2 command
            if loops.spamming == false then
                logn("Spamming is already stopped!")
            else
                loops.spamming = false
                logn("Spamming has been stopped.")
            end
        elseif splitted[1] == prefix .. "usetools" then -- credits to jotunnheim
            local Backpack = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
            for _, v in ipairs(Backpack:GetChildren()) do
                v.Parent = game.Players.LocalPlayer.Character
                v:Activate()
            end
        elseif
            splitted[1] == prefix .. "hatkick" or splitted[1] == prefix .. "mushcrush" or splitted[1] == prefix .. "ios" or
                splitted[1] == prefix .. "hkick"
         then
            for i, v in gp(splitted[2]) do
                game.Players:Chat("respawn " .. v.Name .. "                                              FUCK")
                v.CharacterAdded:Wait()
                game.Players:Chat("blind " .. v.Name .. "                                                FUCK")
                for i = 1, 5 do
                    game.Players:Chat("skydive " .. v.Name .. " " .. v.Name .. " " .. v.Name .. "                FUCK")
                end
                game.Players:Chat("size " .. v.Name .. " 9.9")
                game.Players:Chat("size " .. v.Name .. " 10")
                game.Players:Chat("unseizure " .. v.Name .. " " .. v.Name .. "                               FUCK")
                task.wait(0.1)
                game.Players:Chat("freeze " .. v.Name .. "                                               FUCK")
                game.Players:Chat("invisible " .. v.Name .. "                                            FUCK")
                for i = 1, 100 do
                    game.Players:Chat("hat " .. v.Name .. " 0000000000000000000000000000000000000000000018219890448")
                end
                task.delay(
                    3,
                    function()
                        if splitted[3] then
                            if type(tonumber(splitted[3])) == "number" then
                                logn("PMKicking " .. v.Name .. " For " .. splitted[3] .. " Round(s)", 3)
                                for i = 1, tonumber(splitted[3]) do
                                    if not table.find(game.Players:GetPlayers(), v) then
                                        break
                                    end
                                    for i = 1, 100 do
                                        game.Players:Chat(
                                            "pm " ..
                                                v.Name ..
                                                    " 🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️🤦‍♀️"
                                        )
                                    end
                                    task.wait(5)
                                end
                            end
                        end
                    end
                )
                task.wait(5.5)
            end
        elseif splitted[1] == prefix .. "hban" then
            for i, v in gp(splitted[2]) do
                if not table.find(hatbanned, v.UserId) then
                    table.insert(hatbanned, v.UserId)
                    if cmds["hatkick"] and cmds["hatkick"].func then
                        cmds["hatkick"].func({v.Name})
                    else
                        warn("Error: cmds['hatkick'] or its 'func' field is nil")
                    end
                end
            end
        elseif splitted[1] == prefix .. "fixpaint" then -- credits to knocks and ii's admin
            --nil
            -- Roblox ColorAPI, Thank you siyamicik and Kevin (bumanoid) for recovering/improving this
            -- https://mega.nz/file/XHZXzZba#nH1GKXeckVSvLT4vOjPXh-HzP7TolaJkIfHvYhid1L0 Original API Archived (thanks to siya again)

            colorAPI = {}

            colorAPI.color = function(Part, color)
                local thread =
                    coroutine.create(
                    function()
                        -- x3.5 speed boost
                        local Arguments = {
                            ["Part"] = Part,
                            ["Color"] = color
                        }
                        game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild(
                            "Remotes"
                        ).ServerControls:InvokeServer("PaintPart", Arguments)
                    end
                )
                coroutine.resume(thread)
            end

            colorAPI.transformToColor3 = function(col)
                local r = col.r
                local g = col.g
                local b = col.b
                return Color3.new(r, g, b)
            end

            -- colorAPI.Color3 = function(brickColor)
            --     return colorAPI.transformToColor3(BrickColor.new(brickColor))
            -- end

            colorAPI.colorObbyBox = function(color) -- Default is "Teal"
                for i, v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
                    colorAPI.color(v, color) -- colorAPI.transformToColor3(BrickColor.new("Bright red"))
                end
            end

            colorAPI.colorObbyBricks = function(color) -- Default is "Really red"
                for i, v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby"]:GetChildren()) do
                    colorAPI.color(v, color)
                end
            end

            colorAPI.colorAdminDivs = function(color) -- Default is "Dark stone grey"
                for i, v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
                    colorAPI.color(v, color)
                end
            end

            colorAPI.colorPads = function(color) -- Default is "Bright green"
                for i, v in pairs(game.Workspace.Terrain["_Game"].Admin["Pads"]:GetChildren()) do
                    colorAPI.color(v.Head, color)
                end
            end

            colorAPI.colorHouse = function(arg)
                local wallsC = arg.wallsC
                local baseC = arg.baseC
                local roofC = arg.roofC
                local WANDDC = arg.WANDDC
                local stairsC = arg.stairsC
                local floorC = arg.floorC
                local rooftsC = arg.rooftsC
                local chiC = arg.chiC

                -------------------------------------------------------------------- House (really messy ik) --------------------------------------------------------------------

                for i, v in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetChildren()) do
                    coroutine.wrap(
                        function()
                            if
                                v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or
                                    v.Name == "SmoothBlockModel106" or
                                    v.Name == "SmoothBlockModel108" or
                                    v.Name == "SmoothBlockModel11" or
                                    v.Name == "SmoothBlockModel113" or
                                    v.Name == "SmoothBlockModel114" or
                                    v.Name == "SmoothBlockModel115" or
                                    v.Name == "SmoothBlockModel116" or
                                    v.Name == "SmoothBlockModel118" or
                                    v.Name == "SmoothBlockModel122" or
                                    v.Name == "SmoothBlockModel126" or
                                    v.Name == "SmoothBlockModel129" or
                                    v.Name == "SmoothBlockModel13" or
                                    v.Name == "SmoothBlockModel130" or
                                    v.Name == "SmoothBlockModel131" or
                                    v.Name == "SmoothBlockModel132" or
                                    v.Name == "SmoothBlockModel134" or
                                    v.Name == "SmoothBlockModel135" or
                                    v.Name == "SmoothBlockModel14" or
                                    v.Name == "SmoothBlockModel140" or
                                    v.Name == "SmoothBlockModel142" or
                                    v.Name == "SmoothBlockModel147" or
                                    v.Name == "SmoothBlockModel15" or
                                    v.Name == "SmoothBlockModel154" or
                                    v.Name == "SmoothBlockModel155" or
                                    v.Name == "SmoothBlockModel164" or
                                    v.Name == "SmoothBlockModel166" or
                                    v.Name == "SmoothBlockModel173" or
                                    v.Name == "SmoothBlockModel176" or
                                    v.Name == "SmoothBlockModel179" or
                                    v.Name == "SmoothBlockModel185" or
                                    v.Name == "SmoothBlockModel186" or
                                    v.Name == "SmoothBlockModel190" or
                                    v.Name == "SmoothBlockModel191" or
                                    v.Name == "SmoothBlockModel196" or
                                    v.Name == "SmoothBlockModel197" or
                                    v.Name == "SmoothBlockModel198" or
                                    v.Name == "SmoothBlockModel20" or
                                    v.Name == "SmoothBlockModel201" or
                                    v.Name == "SmoothBlockModel203" or
                                    v.Name == "SmoothBlockModel205" or
                                    v.Name == "SmoothBlockModel207" or
                                    v.Name == "SmoothBlockModel208" or
                                    v.Name == "SmoothBlockModel209" or
                                    v.Name == "SmoothBlockModel210" or
                                    v.Name == "SmoothBlockModel211" or
                                    v.Name == "SmoothBlockModel213" or
                                    v.Name == "SmoothBlockModel218" or
                                    v.Name == "SmoothBlockModel22" or
                                    v.Name == "SmoothBlockModel223" or
                                    v.Name == "SmoothBlockModel224" or
                                    v.Name == "SmoothBlockModel226" or
                                    v.Name == "SmoothBlockModel26" or
                                    v.Name == "SmoothBlockModel29" or
                                    v.Name == "SmoothBlockModel30" or
                                    v.Name == "SmoothBlockModel31" or
                                    v.Name == "SmoothBlockModel36" or
                                    v.Name == "SmoothBlockModel37" or
                                    v.Name == "SmoothBlockModel38" or
                                    v.Name == "SmoothBlockModel39" or
                                    v.Name == "SmoothBlockModel41" or
                                    v.Name == "SmoothBlockModel48" or
                                    v.Name == "SmoothBlockModel49" or
                                    v.Name == "SmoothBlockModel51" or
                                    v.Name == "SmoothBlockModel56" or
                                    v.Name == "SmoothBlockModel67" or
                                    v.Name == "SmoothBlockModel68" or
                                    v.Name == "SmoothBlockModel69" or
                                    v.Name == "SmoothBlockModel70" or
                                    v.Name == "SmoothBlockModel72" or
                                    v.Name == "SmoothBlockModel75" or
                                    v.Name == "SmoothBlockModel8" or
                                    v.Name == "SmoothBlockModel81" or
                                    v.Name == "SmoothBlockModel85" or
                                    v.Name == "SmoothBlockModel93" or
                                    v.Name == "SmoothBlockModel98"
                             then
                                colorAPI.color(v, wallsC) -- Default is "Brick yellow"
                            end -- House walls

                            if v.Name == "SmoothBlockModel40" then
                                colorAPI.color(v, baseC) -- Default is "Bright green"
                            end -- House grass base

                            if
                                v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or
                                    v.Name == "SmoothBlockModel104" or
                                    v.Name == "SmoothBlockModel107" or
                                    v.Name == "SmoothBlockModel109" or
                                    v.Name == "SmoothBlockModel110" or
                                    v.Name == "SmoothBlockModel111" or
                                    v.Name == "SmoothBlockModel119" or
                                    v.Name == "SmoothBlockModel12" or
                                    v.Name == "SmoothBlockModel120" or
                                    v.Name == "SmoothBlockModel123" or
                                    v.Name == "SmoothBlockModel124" or
                                    v.Name == "SmoothBlockModel125" or
                                    v.Name == "SmoothBlockModel127" or
                                    v.Name == "SmoothBlockModel128" or
                                    v.Name == "SmoothBlockModel133" or
                                    v.Name == "SmoothBlockModel136" or
                                    v.Name == "SmoothBlockModel137" or
                                    v.Name == "SmoothBlockModel138" or
                                    v.Name == "SmoothBlockModel139" or
                                    v.Name == "SmoothBlockModel141" or
                                    v.Name == "SmoothBlockModel143" or
                                    v.Name == "SmoothBlockModel149" or
                                    v.Name == "SmoothBlockModel151" or
                                    v.Name == "SmoothBlockModel152" or
                                    v.Name == "SmoothBlockModel153" or
                                    v.Name == "SmoothBlockModel156" or
                                    v.Name == "SmoothBlockModel157" or
                                    v.Name == "SmoothBlockModel158" or
                                    v.Name == "SmoothBlockModel16" or
                                    v.Name == "SmoothBlockModel163" or
                                    v.Name == "SmoothBlockModel167" or
                                    v.Name == "SmoothBlockModel168" or
                                    v.Name == "SmoothBlockModel169" or
                                    v.Name == "SmoothBlockModel17" or
                                    v.Name == "SmoothBlockModel170" or
                                    v.Name == "SmoothBlockModel172" or
                                    v.Name == "SmoothBlockModel177" or
                                    v.Name == "SmoothBlockModel18" or
                                    v.Name == "SmoothBlockModel180" or
                                    v.Name == "SmoothBlockModel184" or
                                    v.Name == "SmoothBlockModel187" or
                                    v.Name == "SmoothBlockModel188" or
                                    v.Name == "SmoothBlockModel189" or
                                    v.Name == "SmoothBlockModel19" or
                                    v.Name == "SmoothBlockModel193" or
                                    v.Name == "SmoothBlockModel2" or
                                    v.Name == "SmoothBlockModel200" or
                                    v.Name == "SmoothBlockModel202" or
                                    v.Name == "SmoothBlockModel21" or
                                    v.Name == "SmoothBlockModel214" or
                                    v.Name == "SmoothBlockModel215" or
                                    v.Name == "SmoothBlockModel216" or
                                    v.Name == "SmoothBlockModel219" or
                                    v.Name == "SmoothBlockModel220" or
                                    v.Name == "SmoothBlockModel221" or
                                    v.Name == "SmoothBlockModel222" or
                                    v.Name == "SmoothBlockModel225" or
                                    v.Name == "SmoothBlockModel227" or
                                    v.Name == "SmoothBlockModel229" or
                                    v.Name == "SmoothBlockModel23" or
                                    v.Name == "SmoothBlockModel230" or
                                    v.Name == "SmoothBlockModel231" or
                                    v.Name == "SmoothBlockModel25" or
                                    v.Name == "SmoothBlockModel28" or
                                    v.Name == "SmoothBlockModel32" or
                                    v.Name == "SmoothBlockModel33" or
                                    v.Name == "SmoothBlockModel34" or
                                    v.Name == "SmoothBlockModel42" or
                                    v.Name == "SmoothBlockModel44" or
                                    v.Name == "SmoothBlockModel47" or
                                    v.Name == "SmoothBlockModel54" or
                                    v.Name == "SmoothBlockModel55" or
                                    v.Name == "SmoothBlockModel58" or
                                    v.Name == "SmoothBlockModel59" or
                                    v.Name == "SmoothBlockModel6" or
                                    v.Name == "SmoothBlockModel61" or
                                    v.Name == "SmoothBlockModel62" or
                                    v.Name == "SmoothBlockModel63" or
                                    v.Name == "SmoothBlockModel74" or
                                    v.Name == "SmoothBlockModel76" or
                                    v.Name == "SmoothBlockModel77" or
                                    v.Name == "SmoothBlockModel78" or
                                    v.Name == "SmoothBlockModel79" or
                                    v.Name == "SmoothBlockModel80" or
                                    v.Name == "SmoothBlockModel84" or
                                    v.Name == "SmoothBlockModel86" or
                                    v.Name == "SmoothBlockModel87" or
                                    v.Name == "SmoothBlockModel88" or
                                    v.Name == "SmoothBlockModel90" or
                                    v.Name == "SmoothBlockModel91" or
                                    v.Name == "SmoothBlockModel92" or
                                    v.Name == "SmoothBlockModel94" or
                                    v.Name == "SmoothBlockModel95" or
                                    v.Name == "SmoothBlockModel96"
                             then
                                colorAPI.color(v, roofC) -- Default is "Bright red"
                            end -- House roof

                            if
                                v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or
                                    v.Name == "SmoothBlockModel117" or
                                    v.Name == "SmoothBlockModel121" or
                                    v.Name == "SmoothBlockModel144" or
                                    v.Name == "SmoothBlockModel145" or
                                    v.Name == "SmoothBlockModel146" or
                                    v.Name == "SmoothBlockModel148" or
                                    v.Name == "SmoothBlockModel150" or
                                    v.Name == "SmoothBlockModel159" or
                                    v.Name == "SmoothBlockModel161" or
                                    v.Name == "SmoothBlockModel171" or
                                    v.Name == "SmoothBlockModel174" or
                                    v.Name == "SmoothBlockModel175" or
                                    v.Name == "SmoothBlockModel181" or
                                    v.Name == "SmoothBlockModel182" or
                                    v.Name == "SmoothBlockModel183" or
                                    v.Name == "SmoothBlockModel192" or
                                    v.Name == "SmoothBlockModel194" or
                                    v.Name == "SmoothBlockModel195" or
                                    v.Name == "SmoothBlockModel199" or
                                    v.Name == "SmoothBlockModel204" or
                                    v.Name == "SmoothBlockModel206" or
                                    v.Name == "SmoothBlockModel212" or
                                    v.Name == "SmoothBlockModel217" or
                                    v.Name == "SmoothBlockModel228" or
                                    v.Name == "SmoothBlockModel24" or
                                    v.Name == "SmoothBlockModel27" or
                                    v.Name == "SmoothBlockModel35" or
                                    v.Name == "SmoothBlockModel4" or
                                    v.Name == "SmoothBlockModel43" or
                                    v.Name == "SmoothBlockModel45" or
                                    v.Name == "SmoothBlockModel46" or
                                    v.Name == "SmoothBlockModel50" or
                                    v.Name == "SmoothBlockModel53" or
                                    v.Name == "SmoothBlockModel57" or
                                    v.Name == "SmoothBlockModel60" or
                                    v.Name == "SmoothBlockModel64" or
                                    v.Name == "SmoothBlockModel65" or
                                    v.Name == "SmoothBlockModel66" or
                                    v.Name == "SmoothBlockModel7" or
                                    v.Name == "SmoothBlockModel71" or
                                    v.Name == "SmoothBlockModel73" or
                                    v.Name == "SmoothBlockModel82" or
                                    v.Name == "SmoothBlockModel83" or
                                    v.Name == "SmoothBlockModel89" or
                                    v.Name == "SmoothBlockModel99"
                             then
                                colorAPI.color(v, WANDDC) -- Default is "Dark orange"
                            end -- House windows and door outlines

                            if
                                v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or
                                    v.Name == "SmoothBlockModel5" or
                                    v.Name == "SmoothBlockModel9"
                             then
                                colorAPI.color(v, stairsC) -- Default is "Dark stone grey"
                            end -- House Stairs

                            if v.Name == "SmoothBlockModel112" then
                                colorAPI.color(v, floorC) -- Default is "Medium blue"
                            end -- House floor

                            if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
                                colorAPI.color(v, rooftsC) -- Default is "Reddish brown"
                            end -- House roof thingys

                            if
                                v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or
                                    v.Name == "SmoothBlockModel165" or
                                    v.Name == "SmoothBlockModel178"
                             then
                                colorAPI.color(v, chiC) -- Default is "Sand red"
                            end -- Chi top part
                        end
                    )()
                end
            end

            colorAPI.colorBuildingBricks = function(arg)
                local DarkStoneGrey = arg.DarkStoneGrey
                local DeepBlue = arg.DeepBlue
                local NY = arg.NY
                local IW = arg.IW
                local LimeGreen = arg.LimeGreen
                local MSG = arg.MSG
                local RB = arg.RB
                local RR = arg.RR
                local TP = arg.TP

                -------------------------------------------------------------------- Building Bricks --------------------------------------------------------------------

                for i, v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetChildren()) do
                    coroutine.wrap(
                        function()
                            if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
                                colorAPI.color(v, DarkStoneGrey) -- Default is "Dark stone grey"
                            end

                            if
                                v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or
                                    v.Name == "Part43"
                             then
                                colorAPI.color(v, DeepBlue) -- Default is "Deep blue"
                            end

                            if
                                v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or
                                    v.Name == "Part6"
                             then
                                colorAPI.color(v, NY) -- Default is "New Yeller"
                            end

                            if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
                                colorAPI.color(v, IW) -- Default is "Institutional white"
                            end

                            if
                                v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part9" or
                                    v.Name == "Part5"
                             then
                                colorAPI.color(v, LimeGreen) -- Default is "Lime green"
                            end

                            if
                                v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or
                                    v.Name == "Part35" or
                                    v.Name == "Part36" or
                                    v.Name == "Part39" or
                                    v.Name == "Part40" or
                                    v.Name == "Part41" or
                                    v.Name == "Part42" or
                                    v.Name == "Part46" or
                                    v.Name == "Part47" or
                                    v.Name == "Part48" or
                                    v.Name == "Part49" or
                                    v.Name == "Part50" or
                                    v.Name == "Part51" or
                                    v.Name == "Part52" or
                                    v.Name == "Part53" or
                                    v.Name == "Part54" or
                                    v.Name == "Part56" or
                                    v.Name == "Part57" or
                                    v.Name == "Part58" or
                                    v.Name == "Part59" or
                                    v.Name == "Part60" or
                                    v.Name == "Part61"
                             then
                                colorAPI.color(v, MSG) -- Default is "Medium Stone grey"
                            end

                            if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
                                colorAPI.color(v, RB) -- Default is "Really black"
                            end

                            if
                                v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or
                                    v.Name == "Part37"
                             then
                                colorAPI.color(v, RR) -- Default is "Really red"
                            end

                            if
                                v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or
                                    v.Name == "Part8"
                             then
                                colorAPI.color(v, TP) -- Default is "Toothpaste"
                            end
                        end
                    )()
                end
            end
            game:GetService("Players"):Chat("gear me 00000000000000000018474459")
            local Backpack = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
            game.Players.LocalPlayer.Backpack:WaitForChild("PaintBucket")
            for _, v in ipairs(Backpack:GetChildren()) do
                v.Parent = game.Players.LocalPlayer.Character
                v:Activate()
            end
            task.wait(0.1)
            coroutine.wrap(
                function()
                    colorAPI.colorHouse(
                        {
                            wallsC = colorAPI.transformToColor3(BrickColor.new("Brick yellow")),
                            baseC = colorAPI.transformToColor3(BrickColor.new("Bright green")),
                            roofC = colorAPI.transformToColor3(BrickColor.new("Bright red")),
                            WANDDC = colorAPI.transformToColor3(BrickColor.new("Dark orange")),
                            stairsC = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
                            floorC = colorAPI.transformToColor3(BrickColor.new("Medium blue")),
                            rooftsC = colorAPI.transformToColor3(BrickColor.new("Reddish brown")),
                            chiC = colorAPI.transformToColor3(BrickColor.new("Sand red"))
                        }
                    )
                end
            )()
            task.spawn(
                function()
                    colorAPI.colorBuildingBricks(
                        {
                            DarkStoneGrey = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
                            DeepBlue = colorAPI.transformToColor3(BrickColor.new("Deep blue")),
                            NY = colorAPI.transformToColor3(BrickColor.new("New Yeller")),
                            IW = colorAPI.transformToColor3(BrickColor.new("Institutional white")),
                            LimeGreen = colorAPI.transformToColor3(BrickColor.new("Lime green")),
                            MSG = colorAPI.transformToColor3(BrickColor.new("Medium Stone grey")),
                            RB = colorAPI.transformToColor3(BrickColor.new("Really black")),
                            TP = colorAPI.transformToColor3(BrickColor.new("Toothpaste")),
                            RR = colorAPI.transformToColor3(BrickColor.new("Really red"))
                        }
                    )
                end
            )
            colorAPI.color(
                game.Workspace.Terrain["_Game"].Workspace["Baseplate"],
                colorAPI.transformToColor3(BrickColor.new("Bright green"))
            )
            task.spawn(
                function()
                    colorAPI.colorObbyBox(colorAPI.transformToColor3(BrickColor.new("Teal")))
                end
            )
            task.spawn(
                function()
                    colorAPI.colorObbyBricks(colorAPI.transformToColor3(BrickColor.new("Really red")))
                end
            )
            task.spawn(
                function()
                    colorAPI.colorAdminDivs(colorAPI.transformToColor3(BrickColor.new("Dark stone grey")))
                end
            )
            task.spawn(
                function()
                    colorAPI.colorPads(colorAPI.transformToColor3(BrickColor.new("Bright green")))
                end
            )
            wait(0.6)
            chatshit(
                "ungear                                                                                               me fuck " ..
                    math.random(99999)
            )
        elseif splitted[1] == prefix .. "nok" then -- credits to knocks
            for i, v in pairs(workspace.Terrain._Game.Workspace.Obby:GetChildren()) do
                if v.CanTouch then
                    v.CanTouch = false
                end
            end
        elseif splitted[1] == prefix .. "antikick" then
            if not cons.antikick then
                cons.antikick =
                    workspace.DescendantAdded:Connect(
                    function(part)
                        if part.Name == "Rocket" or part.Name == "Addon" and part:IsA("BasePart") then
                            part.CanCollide = false
                            part.CanTouch = false
                        elseif
                            part:IsA("Accessory") and tostring(part.AccessoryType) == "Enum.AccessoryType.Back" and
                                part.Name == "Accessory (Chicken Triangle)"
                         then
                            game:GetService("RunService").RenderStepped:Wait()
                            part:Destroy()
                        end
                    end
                )
                for i, part in pairs(workspace:GetDescendants()) do
                    if part.Name == "Rocket" or part.Name == "Addon" and part:IsA("BasePart") then
                        part.CanCollide = false
                        part.CanTouch = false
                    elseif
                        part:IsA("Accessory") and tostring(part.AccessoryType) == "Enum.AccessoryType.Back" and
                            part.Name == "Accessory (Chicken Triangle)"
                     then
                        part:Destroy()
                    end
                end
            end
        elseif splitted[1] == prefix .. "closescript" then
            for i, v in pairs(connections) do
                v:disconnect()
            end
            for i, v in pairs(workspace.Terrain._Game.Workspace.Obby:GetChildren()) do
                if not v.CanTouch then
                    v.CanTouch = true
                end
            end
            for i, v in pairs(Loops) do
                v = false
            end
            JISATSU = false
        elseif splitted[1] == prefix .. "soundspam" then -- credits to ii's admin
            local frequency = tonumber(splitted[2]) or 1
            local delay = tonumber(splitted[3]) or 0

            for i = 1, frequency do
                chatshit("hat me 305888394")
                if delay > 0 then
                    task.wait(delay)
                end
            end
        elseif splitted[1] == prefix .. "buildswordfightingarena" then -- credits to ii's admin
            if PersonsAdmin then
                local partIndex = 1
                local indexPosition = {
                    CFrame.new(-130, 5, -55),
                    CFrame.new(-140, 5, -55),
                    CFrame.new(-150, 5, -55),
                    CFrame.new(-130, 5, -65),
                    CFrame.new(-140, 5, -65),
                    CFrame.new(-150, 5, -65),
                    CFrame.new(-130, 5, -75),
                    CFrame.new(-140, 5, -75),
                    CFrame.new(-150, 5, -75),
                    CFrame.new(-154, 8, -51),
                    CFrame.new(-126, 8, -79),
                    CFrame.new(-154, 8, -79),
                    CFrame.new(-126, 8, -51),
                    CFrame.new(-154, 9, -56, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                    CFrame.new(-154, 9, -65, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                    CFrame.new(-154, 9, -74, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                    CFrame.new(-126, 9, -56, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                    CFrame.new(-126, 9, -65, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                    CFrame.new(-126, 9, -74, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                    CFrame.new(-131, 9, -79, 0, 0, 1, 0, 1, 0, -1, 0, 0),
                    CFrame.new(-140, 9, -79, 0, 0, 1, 0, 1, 0, -1, 0, 0),
                    CFrame.new(-149, 9, -79, 0, 0, 1, 0, 1, 0, -1, 0, 0),
                    CFrame.new(-131, 9, -51, 0, 0, 1, 0, 1, 0, -1, 0, 0),
                    CFrame.new(-140, 9, -51, 0, 0, 1, 0, 1, 0, -1, 0, 0),
                    CFrame.new(-149, 9, -51, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                }
                local origin = CFrame.new(-130, 3.7, -45)
                chr.HumanoidRootPart.CFrame = origin
                wait(0.25)
                local basepart = Instance.new("Part", chr)
                basepart.CFrame = CFrame.new(-140, 5, -65)
                basepart.Anchored = true
                basepart.Transparency = 0.5
                basepart.Size = Vector3.new(30, 2.55, 30)

                local function teleportPeopleYes()
                    for i, v in pairs(GetPlayers(splitted[2])) do
                        chr.HumanoidRootPart.CFrame =
                            CFrame.new(
                            128.923386,
                            14,
                            -53.6450806,
                            0.677816927,
                            3.43786546e-08,
                            0.735230744,
                            3.28579688e-08,
                            1,
                            -7.70511051e-08,
                            -0.735230744,
                            7.63847297e-08,
                            0.677816927
                        )
                        wait(0.25)
                        game.Players:Chat("tp " .. v.Name .. " me")
                    end
                    wait(0.5)
                    for i, v in pairs(GetPlayers(args[2])) do
                        chr.HumanoidRootPart.CFrame =
                            CFrame.new(
                            151.167755,
                            14,
                            -76.1952133,
                            -0.709251344,
                            -1.77910238e-08,
                            -0.704955637,
                            -4.14884234e-08,
                            1,
                            1.65041545e-08,
                            0.704955637,
                            4.09530934e-08,
                            -0.709251344
                        )
                        wait(0.25)
                        game.Players:Chat("tp " .. v.Name .. " me")
                    end
                end

                Connections.arena =
                    workspace.Terrain["_Game"].Folder.ChildAdded:Connect(
                    function(part)
                        if
                            part.Size == Vector3.new(10, 2.5, 10) or part.Size == Vector3.new(1, 5, 1) or
                                part.Size == Vector3.new(1, 1, 9)
                         then
                            local localIndex = partIndex
                            partIndex = partIndex + 1
                            if partIndex > 25 then
                                teleportPeopleYes()
                                Connections.arena:Disconnect()
                            end
                            spawn(
                                function()
                                    while true do
                                        game:GetService("RunService").Heartbeat:Wait()
                                        if isnetworkowner(part) then
                                            part.Velocity = Vector3.new(-30, 0, 0)
                                            part.CanCollide = false
                                            part.CFrame = indexPosition[localIndex]
                                        else
                                            chr.HumanoidRootPart.CFrame = part.CFrame
                                        end
                                    end
                                end
                            )
                        end
                    end
                )

                for i = 1, 9 do
                    game.Players:Chat("part/10/2.5/10")
                    wait(0.5)
                end
                wait(0.5)
                for i = 1, 4 do
                    game.Players:Chat("part/1/5/1")
                    wait(0.5)
                end
                wait(0.5)
                for i = 1, 12 do
                    game.Players:Chat("part/1/1/9")
                    wait(0.5)
                end
                wait()
            else
                logn("This command does not work without Person's Admin.")
            end
        elseif splitted[1] == prefix .. "pads" then
            logn("Teleported to pads!")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
        elseif splitted[1] == prefix .. "skydive" then
            logn("Skydived!")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                Vector3.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
            )
        elseif splitted[1] == prefix .. "house" then
            logn("Teleported to house!")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
        elseif splitted[1] == prefix .. "spawn" then
            logn("Teleported to spawn!")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))
        elseif splitted[1] == prefix .. "bkick" then -- credits to digitality for the kick method and Tech for the usetools
            local v = gpfs(splitted[2])
            repeat
                chatshit("gear me 1645056094")
                game:GetService("RunService").RenderStepped:Wait()
            until #game.Players.LocalPlayer.Backpack:GetChildren() == 600
            task.wait(3)
            chatshit("speed " .. v.Name .. " 0")
            chatshit("ff " .. v.Name)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4) * CFrame.Angles(0, math.rad(360), 0)
            task.wait(0.25)
            local Backpack = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
            for _, v in ipairs(Backpack:GetChildren()) do
                v.Parent = game.Players.LocalPlayer.Character
                v:Activate()
            end
            wait()
            local VirtualUser = game:GetService("VirtualUser")
            VirtualUser:CaptureController()
            VirtualUser:ClickButton1(Vector2.new())
            task.wait(4)
            for i = 1, 5 do
                chatshit("punish me")
                task.wait(1.5)
                chatshit("unpunish me")
                task.wait(1.5)
            end
        end
