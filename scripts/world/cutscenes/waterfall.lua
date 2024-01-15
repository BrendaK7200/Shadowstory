return {
    echo = function (cutscene, event)
        local echo = cutscene:getCharacter("echo")
        echo:setAnimation("rise")
        cutscene:wait(1)
        Game.world.music:play("echo", 1, 1)
        echo:setSprite("nice")
        cutscene:text(scr_gettext("ECHO_1"), "nice", echo)
        cutscene:text(scr_gettext("ECHO_2"), "nice_side", echo)
        cutscene:text(scr_gettext("ECHO_3"), "nice", echo)
        cutscene:text(scr_gettext("ECHO_4"), "cheeky", echo)
        Game:encounter("echotutorial")
    end
}