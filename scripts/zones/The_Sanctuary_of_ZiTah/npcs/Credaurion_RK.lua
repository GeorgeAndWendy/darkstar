-----------------------------------
-- Area: The Sanctuary of Zi'Tah
--  NPC: Credaurion, R.K.
-- Outpost Conquest Guards
-- !pos -40.079 -0.642 -148.785 121
-----------------------------------
package.loaded["scripts/zones/The_Sanctuary_of_ZiTah/TextIDs"] = nil
-----------------------------------
require("scripts/zones/The_Sanctuary_of_ZiTah/TextIDs")
require("scripts/globals/conquest")
-----------------------------------

local guardNation = dsp.nation.SANDORIA
local guardType   = dsp.conq.guard.OUTPOST
local guardRegion = dsp.region.LITELOR
local guardEvent  = 32763

function onTrade(player,npc,trade)
    dsp.conq.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

function onTrigger(player,npc)
    dsp.conq.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent, guardRegion)
end

function onEventUpdate(player,csid,option)
    dsp.conq.overseerOnEventUpdate(player, csid, option, guardNation)
end

function onEventFinish(player,csid,option)
    dsp.conq.overseerOnEventFinish(player, csid, option, guardNation, guardType, guardRegion)
end