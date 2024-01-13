local actor, super = Class(Actor, "alphys")

function actor:init()
    super:init(self)

    -- Display name (optional)
    self.name = "Alphys"

    -- Width and height for this actor, used to determine its center
    self.width = 19
    self.height = 31

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = {0, 11, 19, 20}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = {1, 1, 0}

    -- Whether this actor flips horizontally (optional, values are "right" or "left", indicating the flip direction)
    self.flip = nil

    -- Path to this actor's sprites (defaults to "")
    self.path = "npcs/alphys"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "walk"

    -- Sound to play when this actor speaks (optional)
    self.voice = "alphys"
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = "face/alphys"
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = nil

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false

    -- Table of talk sprites and their talk speeds (default 0.25)
    self.talk_sprites = {}

    -- Table of sprite animations
    self.animations = {}

    -- Table of sprite offsets (indexed by sprite name)
    self.offsets = {
        ["walk/right"]   = {-5, 0},
        ["walk/right_2"] = {-5, 1},
        ["walk/right_4"] = {-5, 1},
        ["walk/down"]    = { 0, 0},
        ["walk/left"]    = {-5, 0},
        ["walk/left_2"]  = {-5, 1},
        ["walk/left_4"]  = {-5, 1},
        ["walk/up"]      = { 0, 0},
    }
end

function actor:onWorldUpdate(chara)
    if not chara.pika_checked then
        chara.pika_checked = true
        if chara.data and chara.data.properties and chara.data.properties["pika"] then
            chara.has_pikachu = true
        end
    end

    if chara.has_pikachu then
        if not chara.pikachu_sprite then
            local sprite = ActorSprite("pikachu")
            sprite.layer = 10
            sprite:setOrigin(0.5, 1)
            sprite:setPosition(chara.width/2, chara.height - 22)
            chara:addChild(sprite)
            chara.pikachu_sprite = sprite
        end
        chara.pikachu_sprite.facing = chara.facing
        if chara.facing == "down" and chara.pikachu_sprite.layer == 10 then
            chara.pikachu_sprite:setLayer(-10)
        elseif chara.facing ~= "down" and chara.pikachu_sprite.layer ~= 10 then
            chara.pikachu_sprite:setLayer(10)
        end
    elseif chara.pikachu_sprite then
        chara.pikachu_sprite:remove()
        chara.pikachu_sprite = nil
    end
end

return actor