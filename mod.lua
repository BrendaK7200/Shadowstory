modRequire("scripts/main/scr_gettext")

function Mod:init()
    print("Loaded "..self.info.name.."!")
    love.mouse.setVisible(true)
end

function Mod:postInit(new_file)
    Mod.is_new_file = new_file
    Game:setBorder("simple")
    Game.world:startCutscene(function(cutscene)
        local logo = Sprite("logo", 0, 0)
        logo:setOrigin(0, -0.42)
        Game.world:addChild(logo)
        logo.layer = WORLD_LAYERS["top"]
        cutscene:wait(1.25)
        logo:remove()
        Game.story = StoryHandler()
        Game.world:addChild(Game.story)
        Game.story.layer = WORLD_LAYERS["above_ui"] - 50
        cutscene:wait(function() return Game.story:isOver() end)
        Game.story:remove()
    end)
end

function Mod:loadStory()
    if Game.utt then Game.utt:remove() end
    if not Game.world.cutscene then
        Game.world:startCutscene(function(cutscene)
            Game.story = StoryHandler()
            Game.world:addChild(Game.story)
            Game.story.layer = WORLD_LAYERS["above_ui"] - 50
            cutscene:wait(function() return Game.story:isOver() end)
            Game.story:remove()
        end)
    else
        Game.story = StoryHandler()
        Game.world:addChild(Game.story)
        Game.story.layer = WORLD_LAYERS["above_ui"] - 50
        Game.world.cutscene:wait(function() return Game.story:isOver() end)
        Game.story:remove()
    end
end

function Mod:loadMenus()
    if Mod.is_new_file then
        Game.lw_money = 0
        Game:setFlag("has_cell_phone", false)
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

function Mod:save(data)
    data.shadowstory = {}
    data.shadowstory["language"] = Mod.language
    data.shadowstory["action_box_style"] = Mod.action_box_style
    data.shadowstory["use_player_name"] = Mod.use_player_name
end

function Mod:load(data, new_file, slot)
    if new_file then
        Mod.language = "english"
        Mod.action_box_style = "swap"
        Mod.use_player_name = true
    else
        data.shadowstory = data.shadowstory or {}
        Mod.language = data.shadowstory["language"]
        Mod.action_box_style = data.shadowstory["action_box_style"]
        Mod.use_player_name = data.shadowstory["use_player_name"]
    end
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

function Mod:getLightCurrency()
    if Mod.language == "engrish" then
        return "Dollar"
    elseif Mod.language == "spanish" then
        return "Oro"
    elseif Mod.language == "portuguese" then
        return "Ouro"
    else
        return "Gold"
    end
end
function Mod:getLightCurrencyShort()
    if Mod.language == "engrish" then
        return "D"
    elseif Mod.language == "spanish" then
        return "O"
    elseif Mod.language == "portuguese" then
        return "O"
    else
        return "G"
    end
end