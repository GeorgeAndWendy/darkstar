-----------------------------------------
-- ID: 4534
-- Item: bowl_of_medicinal_gruel
-- Food Effect: 4Hrs, All Races
-----------------------------------------
-- Vitality -1
-- Agility 2
-- Ranged Accuracy % 15 (cap 15)
-- HP Recovered While Healing 4
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,14400,4534)
end

function onEffectGain(target,effect)
    target:addMod(dsp.mod.VIT, -1)
    target:addMod(dsp.mod.AGI, 2)
    target:addMod(dsp.mod.FOOD_RACCP, 15)
    target:addMod(dsp.mod.FOOD_RACC_CAP, 15)
    target:addMod(dsp.mod.HPHEAL, 4)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.VIT, -1)
    target:delMod(dsp.mod.AGI, 2)
    target:delMod(dsp.mod.FOOD_RACCP, 15)
    target:delMod(dsp.mod.FOOD_RACC_CAP, 15)
    target:delMod(dsp.mod.HPHEAL, 4)
end
