-----------------------------------
-- Area: Pashhow Marshlands
--  NPC: Tahmasp
-- Type: Outpost Vendor
-- !pos 464 24 416 109
-----------------------------------
package.loaded["scripts/zones/Pashhow_Marshlands/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Pashhow_Marshlands/TextIDs")
require("scripts/globals/conquest")
require("scripts/globals/shop")
-----------------------------------

local vendorRegion  = dsp.region.DERFLAND
local vendorEvent   = 32756

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
    dsp.conquest.vendorOnTrigger(player, vendorRegion, vendorEvent)
end

function onEventUpdate(player,csid,option)
    dsp.conquest.vendorOnEventUpdate(player, vendorRegion)
end

function onEventFinish(player,csid,option)
    dsp.conquest.vendorOnEventFinish(player, option, vendorRegion)
end