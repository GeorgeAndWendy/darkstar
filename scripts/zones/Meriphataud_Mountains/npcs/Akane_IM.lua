-----------------------------------
-- Area: Meriphataud Mountains
--  NPC: Akane, I.M.
-- Type: Outpost Conquest Guards
-- !pos -294.470 15.806 420.117 119
-----------------------------------
package.loaded["scripts/zones/Meriphataud_Mountains/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Meriphataud_Mountains/TextIDs")
require("scripts/globals/conquest")
-----------------------------------

local guardNation = dsp.nation.BASTOK
local guardType   = dsp.conq.guard.OUTPOST
local guardRegion = dsp.region.ARAGONEU
local guardEvent  = 32761

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