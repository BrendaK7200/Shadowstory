local bullet, super = Class(Bullet)

function bullet:init(x, y)
    super:init(self, x, y)
    self:setSprite("bullets/froggit/bulletsm", 1, true)

    self:setScale(1, 1)
    self:setOrigin(0.5, 0.5)
    self:setHitbox(2, 2, 3, 3)

    local angle = Utils.angle(x, y, Game.battle.soul.x + 2, Game.battle.soul.y + 2)
    self.physics.direction = angle
    self.physics.speed = 2.5

end

function bullet:update()
    super.update(self)

    if self.x < Game.battle.arena.left then
        self:remove()
    elseif self.x > Game.battle.arena.right then
        self:remove()
    elseif self.y > Game.battle.arena.bottom then
        self:remove()
    elseif self.y < Game.battle.arena.top then
        self:remove()
    end
end

return bullet