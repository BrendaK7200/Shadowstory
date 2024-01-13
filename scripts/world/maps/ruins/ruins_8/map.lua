local room, super = Class(Map)

function room:load()
    super:load(self)
    
    if Game:getFlag("#ruins.candybowl", false) == true then
        Game.world.map:getEvent("candything").tile = 16
    end
end

return room
