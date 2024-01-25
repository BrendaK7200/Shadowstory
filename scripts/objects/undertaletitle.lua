local UndertaleTitle, super = Class(Object, "UndertaleTitle")

function UndertaleTitle:init()
    super:init(self)

    self.parallax_x = 0
    self.parallax_y = 0

    self.timer = 0

    self.can_click = true
    
    self.logo = Sprite("logo", 0, 2)
    self.logo:setOrigin(0, 0)
    self.logo.layer = WORLD_LAYERS["top"]
    self:addChild(self.logo)
    Assets.playSound("intronoise")
end

function UndertaleTitle:draw()
    super:draw(self)

    if self.timer > 80 then
        Draw.setColor(0.5,0.5,0.5)
        love.graphics.setFont(Assets.getFont("small"))
        love.graphics.printf(scr_gettext("[PRESS Z OR ENTER]"), 0, 360, SCREEN_WIDTH, "center")
    end
end

function UndertaleTitle:update()
    super.update(self)
    self.timer = self.timer+DTMULT

    if self.can_click == true then
        if Input.pressed("confirm", false) then
            self.can_click = false
            Input.clear("confirm")
            if Game.story then Game.story:remove() end
            Mod:loadMenus()
        end
    end
end

return UndertaleTitle