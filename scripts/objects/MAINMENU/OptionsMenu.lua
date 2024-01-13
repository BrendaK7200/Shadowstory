local OptionsMenu, super = Class(Object, "OptionsMenu")

function OptionsMenu:init(x, y, skip)
    super.init(self)
    Input.clear("confirm")

    Game.world.state = "MENU"
    local r = Rectangle(0,0,SCREEN_WIDTH,SCREEN_HEIGHT)
    r.color = {0,0,0}
    r.layer = 500
    self:addChild(r)
    self.extreme = 0
    self.extreme2 = 0

    Game.world.music:stop()

    self.rectile = 0
    self.siner = 0

    self.state = "INTRO" --MAIN, INTRO

    self.second = false

    self.font = Assets.getFont("main")
    self.font2 = Assets.getFont("small")

    self.messages = {
        -- ENGLISH
        {
            winter   = "cold outside\nbut stay warm\ninside of you",
            spring   = "spring time\nback to school",
            fall     = "sweep a leaf\nsweep away a\ntroubles",
            summer   = "try to withstand\nthe sun's life-\ngiving rays",
        },
        -- SPANISH
        {
            winter   = "hace frío afuera\npero mantiene calor\ndentro de ti",
            spring   = "tiempo de primavera\nvuelta al colegio",
            fall     = "barre una hoja\nbarre un\nproblemas",
            summer   = "trata de resistir\nlos rayos\ndel sol",
        },
        -- PORTUGUESE
        {
            winter   = "cold outside\nbut stay warm\ninside of you",
            spring   = "spring time\nback to school",
            fall     = "sweep a leaf\nsweep away a\ntroubles",
            summer   = "try to withstand\nthe sun's life-\ngiving rays",
        },
        -- ENGRISH
        {
            winter   = "snowgrave outside\nbut hot in yous",
            spring   = "its pizza time\ncan someone get\nthe door?",
            fall     = "sweep sweep\nlook at me im\nSweeping",
            summer   = "the sun\nthe sun is\na deadly laser",
        },
    }

    self.weather = 0
    self.weathermusic = "none"
    if not skip then
        local month = os.date("*t").month
        if month >= 3 and month <= 5 then
            self.weather = 2
            self.weathermusic = "options_fall"
        elseif month >= 6 and month <= 8 then
            self.weather = 3
            self.weathermusic = "options_summer"
        elseif month >= 9 and month <= 11 then
            self.weather = 4
            self.weathermusic = "options_fall"
        elseif month >= 12 or month < 3 then
            self.weather = 1
            self.weathermusic = "options_winter"
        end
    end

    self.selected = 1

    self.nodoubleinput = false
end

function OptionsMenu:draw()
    super.draw(self)
    self.siner = self.siner + 1

    if self.weather == 1 then
        local flake = obj_ct_fallobj(0,0)
        flake.layer = 900
        self:addChild(flake)
        love.graphics.setColor(0.5,0.5,0.5)
        if Mod.language == "english" then
            love.graphics.printf(self.messages[1].winter, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "spanish" then
            love.graphics.printf(self.messages[2].winter, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "portuguese" then
            love.graphics.printf(self.messages[3].winter, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "engrish" then
            love.graphics.printf(self.messages[4].winter, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        end
        if not self.dog then
            self.dog = Sprite("ui/settings/tobdog_winter", 250*2, 218*2)
            self:addChild(self.dog)
        end
        self.dog:setScale(2)
        self.dog.layer = 1000
    elseif self.weather == 2 then
        local flake = obj_ct_fallobj(0,0,"ui/settings/fallleaf")
        flake.sprite.color = Utils.mergeColor({1,0,0}, {1,1,1}, 0.5)
        flake.layer = 900
        self:addChild(flake)
        love.graphics.setColor(0.5,0.5,0.5)
        if Mod.language == "english" then
            love.graphics.printf(self.messages[1].spring, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "spanish" then
            love.graphics.printf(self.messages[2].spring, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "portuguese" then
            love.graphics.printf(self.messages[3].spring, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "engrish" then
            love.graphics.printf(self.messages[4].spring, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        end
        if not self.dog then
            self.dog = Sprite("ui/settings/tobdog_spring", 250*2, 218*2)
            self:addChild(self.dog)
            self.dog:play(0.5, true)
        end
        self.dog:setScale(2)
        self.dog.layer = 1000
    elseif self.weather == 3 then
        love.graphics.setColor(1,1,0)
        love.graphics.circle("fill", (258 + (math.cos((self.siner / 18)) * 6))*2, (40 + (math.sin((self.siner / 18)) * 6))*2, (28 + (math.sin((self.siner / 6)) * 4))*2)
        love.graphics.setColor(0.5,0.5,0.5)
        if Mod.language == "english" then
            love.graphics.printf(self.messages[1].summer, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "spanish" then
            love.graphics.printf(self.messages[2].summer, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "portuguese" then
            love.graphics.printf(self.messages[3].summer, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "engrish" then
            love.graphics.printf(self.messages[4].summer, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        end

        self.extreme2 = self.extreme2 + 1
        if (self.extreme2 >= 240) then
            self.extreme = self.extreme + 1
            if ((self.extreme >= 1100) and (math.abs(math.sin(self.siner / 15)) < 0.1)) then
                self.extreme = 0
                self.extreme2 = 0
            end
        end
        
        if not self.dog then
            self.dog = Sprite("ui/settings/tobdog_summer", 250*2, 225*2)
            self:addChild(self.dog)
            self.dog:play(0.5, true)
        end
        self.dog:setOrigin(0.5,1)
        self.dog:setScale((2 + (math.sin(self.siner / 15) * (0.2 + (self.extreme / 800))))*2, (2 - (math.sin(self.siner / 15) * (0.2 + (self.extreme / 900))))*2)
        self.dog.layer = 1000
    elseif self.weather == 4 then
        local flake = obj_ct_fallobj(0,0,"ui/settings/fallleaf")
        flake.sprite.color = Utils.pick{{1,0,0}, {1, 161/255, 66/255}, {1,1,0}}
        flake.layer = 900
        self:addChild(flake)
        love.graphics.setColor(0.5,0.5,0.5)
        if Mod.language == "english" then
            love.graphics.printf(self.messages[1].fall, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "spanish" then
            love.graphics.printf(self.messages[2].fall, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "portuguese" then
            love.graphics.printf(self.messages[2].fall, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        elseif Mod.language == "engrish" then
            love.graphics.printf(self.messages[2].fall, ((220-8) + math.sin((self.siner / 9))), ((120+40) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", 19.2)
        end
        love.graphics.setColor(1,1,1)
        if not self.dog then
            self.dog = Sprite("ui/settings/tobdog_autumn", 250*2, 218*2)
            self:addChild(self.dog)
        end
        self.dog:setScale(2)
        self.dog.layer = 1000
    end
    love.graphics.setColor(1,1,1)
    love.graphics.setFont(Assets.getFont("main", 64))
    if Mod.language == "engrish" then
        love.graphics.printf(scr_gettext("OPTIONS_1"), 10, 0, SCREEN_WIDTH, "center")
    else
        love.graphics.printf(scr_gettext("OPTIONS_1"), 0, 20, SCREEN_WIDTH, "center") 
    end

    love.graphics.setFont(self.font)
    if self.selected == 1 then love.graphics.setColor(1,1,0) else love.graphics.setColor(1,1,1) end
    love.graphics.print(scr_gettext("OPTIONS_2"), 40, 80)
    if self.selected == 2 then love.graphics.setColor(1,1,0) else love.graphics.setColor(1,1,1) end
    love.graphics.print(scr_gettext("OPTIONS_3"), 40, 140)
    if Mod.language == "engrish" then
        love.graphics.print(Mod.language:upper(), 228, 140)
    else
        love.graphics.print(Mod.language:upper(), 184, 140)
    end
    if self.selected == 3 then love.graphics.setColor(1,1,0) else love.graphics.setColor(1,1,1) end
    love.graphics.print(scr_gettext("OPTIONS_4"), 40, 200)
    love.graphics.print("NONE", 40 + self.font:getWidth(scr_gettext("OPTIONS_4")) + 40, 200)

    love.graphics.setColor(0.5,0.5,0.5)
    if Mod.language == "english" then
        --love.graphics.printf("fsdgsdfgfgd", ((-180) + math.sin((self.siner / 9))), ((420) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", -19.1)
    elseif Mod.language == "spanish" then
        love.graphics.printf("Este idioma no\nesta completado.\nVan a haber\nerrores.", ((-180) + math.sin((self.siner / 9))), ((400) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", -19.1)
    elseif Mod.language == "portuguese" then
        love.graphics.printf("Este idioma não\nestá completo.\nHaverá erros.", ((-180) + math.sin((self.siner / 9))), ((420) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", -19.1)
    elseif Mod.language == "engrish" then
        love.graphics.printf("SOz!! ;< dis lengueghshe\nis not completionz...\nu will", ((-150) + math.sin((self.siner / 9))), ((360) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", -19)
        love.graphics.setColor(1,0,0)
        love.graphics.printf("                        \n                    \n                       DIE.\nIs this understood?", ((-150) + math.sin((self.siner / 9))), ((360) + math.cos((self.siner / 9))), SCREEN_WIDTH, "center", -19)
    end

    if self.weather ~= 0 then
        if self.state == "INTRO" then
            if (self.rectile == 16) then
                Assets.playSound("harpnoise")
            end
            self.rectile = self.rectile + 4
            love.graphics.setColor(0,0,0)
            love.graphics.rectangle("fill", (-168+2 - self.rectile)*2, -10*2, 330*2, 250*2)
            love.graphics.setColor(0,0,0)
            love.graphics.rectangle("fill", (164-2 + self.rectile)*2, -10*2, 330*2, 250*2)
            if (self.rectile >= 170) then
                Game.world.music:play(self.weathermusic, 0.8, 1)
                self.state = "MAIN"
            end
        end
    else
        self.state = "MAIN"
    end
end

function OptionsMenu:update()
    super.update(self)
    if self.state == "MAIN" then
        if Input.pressed("down") then
            Input.clear("down")
            if self.selected < 3 then
                self.selected = self.selected + 1
            end
        end
        if Input.pressed("up") then
            Input.clear("up")
            if self.selected > 1 then
                self.selected = self.selected - 1
            end
        end
        if Input.pressed("left") then
            Input.clear("left")
            if self.selected == 2 and self.nodoubleinput == false then
                if Mod.language == "engrish" then
                    Mod.language = "portuguese"
                elseif Mod.language == "portuguese" then
                    Mod.language = "spanish"
                elseif Mod.language == "spanish" then
                    Mod.language = "english"
                elseif Mod.language == "english" then
                    Mod.language = "engrish"
                end
            end
        end
        if Input.pressed("right") then
            Input.clear("right")
            if self.selected == 2 and self.nodoubleinput == false then
                if Mod.language == "engrish" then
                    Mod.language = "english"
                elseif Mod.language == "english" then
                    Mod.language = "spanish"
                elseif Mod.language == "spanish" then
                    Mod.language = "portuguese"
                elseif Mod.language == "portuguese" then
                    Mod.language = "engrish"
                end
            end
        end
        if Input.pressed("confirm") then
            Input.clear("confirm")
            if self.selected == 1 and self.nodoubleinput == false then
                if Kristal.hasSaveFile() then
                    local continueFile = ContinueFile()
                    continueFile.layer = WORLD_LAYERS["ui"]
                    Game.stage:addChild(continueFile)
                    self:remove()
                else
                    local newFile = NewFile()
                    newFile.layer = WORLD_LAYERS["ui"]
                    newFile.nodoubleinput = true
                    Game.stage:addChild(newFile)
                    self:remove()
                end
            elseif self.selected == 2 and self.nodoubleinput == false then
                if Mod.language == "engrish" then
                    Mod.language = "english"
                elseif Mod.language == "english" then
                    Mod.language = "spanish"
                elseif Mod.language == "spanish" then
                    Mod.language = "portuguese"
                elseif Mod.language == "portuguese" then
                    Mod.language = "engrish"
                end
            end
        end
    end
    self.nodoubleinput = false
end

return OptionsMenu