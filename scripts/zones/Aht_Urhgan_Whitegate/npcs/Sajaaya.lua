-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Sajaaya
-- Type: Weather Reporter
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(502,0,0,0,0,0,0,0,VanadielTime());
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;