function Mod:init()
    print("Loaded "..self.info.name.."!")
end

function Mod:postInit(new_file)
    Game:setBorder("simple")
    if new_file then
        Game.lw_money = 0
        local newFile = NewFile()
        newFile.layer = WORLD_LAYERS["ui"]
        Game.stage:addChild(newFile)
    else
        Game:setFlag("realplaytime", Game.playtime)
        local continueFile = ContinueFile()
        continueFile.layer = WORLD_LAYERS["ui"]
        Game.stage:addChild(continueFile)
    end
end

function Mod:load(data, new_file, slot)
end

function Game:enter(previous_state, save_id, save_name)
    self.previous_state = previous_state

    self.music = Music()

    self.quick_save = nil

    Kristal.callEvent("init")

    self.lock_movement = false

    if save_id then
        Kristal.loadGame(save_id, false)
    else
        self:load(nil, nil, false)
    end

    if save_name then
        self.save_name = save_name
    end

    self.started = true

    if Kristal.getModOption("encounter") then
        self:encounter(Kristal.getModOption("encounter"), false)
    elseif Kristal.getModOption("shop") then
        self:enterShop(Kristal.getModOption("shop"), {menu = true})
    end

    DISCORD_RPC_PRESENCE = {}

    Kristal.callEvent("postInit", self.is_new_file)

    if next(DISCORD_RPC_PRESENCE) == nil then
        Kristal.setPresence({
            state = Kristal.callEvent("getPresenceState") or ("Playing " .. (Kristal.getModOption("name") or "a mod")),
            details = Kristal.callEvent("getPresenceDetails"),
            largeImageKey = Kristal.callEvent("getPresenceImage") or "logo",
            largeImageText = "Kristal v" .. tostring(Kristal.Version),
            startTimestamp = math.floor(os.time() - self.playtime),
            instance = 0
        })
    end
end