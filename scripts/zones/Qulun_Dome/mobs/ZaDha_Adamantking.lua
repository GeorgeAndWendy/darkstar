-----------------------------------
-- Area: Qulun Dome
--   NM: Za'Dha Adamantking
-- TODO: messages should be zone-wide
-----------------------------------
package.loaded["scripts/zones/Qulun_Dome/TextIDs"] = nil
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
require("scripts/zones/Qulun_Dome/TextIDs")
require("scripts/globals/status")
require("scripts/globals/titles")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(dsp.mobMod.ADD_EFFECT, 1)
end

function onMobEngaged(mob,target)
    mob:showText(mob, QUADAV_KING_ENGAGE)
end

function onAdditionalEffect(mob, player)
    local resist = applyResistanceAddEffect(mob,player,dsp.magic.ele.EARTH,dsp.effect.SLOW)
    if resist <= 0.5 then
        return 0,0,0
    else
        local power = 3000
        local duration = 30
        if mob:getMainLvl() > player:getMainLvl() then
            duration = duration + (mob:getMainLvl() - player:getMainLvl())
        end
        duration = utils.clamp(duration,1,45)
        duration = duration * resist
        if not player:hasStatusEffect(dsp.effect.SLOW) then
            player:addStatusEffect(dsp.effect.SLOW, power, 0, duration)
        end
        return dsp.subEffect.NONE, dsp.msg.basic.ADD_EFFECT_STATUS, dsp.effect.SLOW
    end
end

function onMobDeath(mob, player, isKiller)
    player:addTitle(dsp.title.ADAMANTKING_USURPER)
    if isKiller then
        mob:showText(mob, QUADAV_KING_DEATH)
    end
end

function onMobDespawn(mob)
    -- reset hqnm system back to the nm placeholder
    local nqId = mob:getID() - 1
    SetServerVariable("[POP]Za_Dha_Adamantking", os.time() + 259200) -- 3 days
    SetServerVariable("[PH]Za_Dha_Adamantking", 0)
    DisallowRespawn(mob:getID(), true)
    DisallowRespawn(nqId, false)
    UpdateNMSpawnPoint(nqId)
    GetMobByID(nqId):setRespawnTime(math.random(75600, 86400))
end
