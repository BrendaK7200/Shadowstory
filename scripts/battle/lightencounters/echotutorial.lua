local encounter, super = Class(LightEncounter)

function encounter:init()
    super:init(self)

    self.text = ""

    self.story = true
    self.background = false

    self.no_end_message = true

    self.music = nil

    self:addEnemy("echo", SCREEN_WIDTH/2, 230)
end

function encounter:getDialogueCutscene()
    return function(cutscene)
        cutscene:wait(1)
        local echo = Game.battle.enemies[1]
        echo:spawnSpeechBubble(scr_gettext("ECHOBATTLE_1"), {no_sound_overlap = true})
    end
end

return encounter