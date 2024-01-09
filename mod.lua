function Mod:init()
    print("Loaded "..self.info.name.."!")
end

function Mod:postInit(new_file)
    if new_file then
        local newFile = NewFile()
        newFile.layer = WORLD_LAYERS["ui"]
        Game.stage:addChild(newFile)
    end
end

function Mod:load(data, new_file, slot)
end