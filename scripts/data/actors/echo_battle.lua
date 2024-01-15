local actor, super = Class(Actor, "echo_battle")

function actor:init()
    super:init(self)

    -- Display name (optional)
    self.name = "Echo"

    -- Width and height for this actor, used to determine its center
    self.width = 45
    self.height = 51

    -- Whether this actor flips horizontally (optional, values are "right" or "left", indicating the flip direction)
    self.flip = nil

    -- Path to this actor's sprites (defaults to "")
    self.path = "enemies/echo"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "nice"

    -- Sound to play when this actor speaks (optional)
    self.voice = "echo1"
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = nil
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = nil

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false

    -- Table of talk sprites and their talk speeds (default 0.25)
    self.talk_sprites = {
        ["nice"] = 0.2,
        ["evil"] = 0.2,
        ["cheeky"] = 0.2,
        ["nice_side"] = 0.2,
        ["pissed"] = 0.2,
        ["plain"] = 0.2,
        ["plain_side"] = 0.2,
        ["newcut"] = 0.2,
    }

    -- Table of sprite animations
    self.animations = {
        -- Movement animations
        ["eyereveal"]               = {"eyereveal", 2/30, false},
    }

    -- Table of sprite offsets (indexed by sprite name)
    self.offsets = {}
end

return actor