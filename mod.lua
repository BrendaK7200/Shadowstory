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