-----------------------------------
-- Area: Southern San d'Oria
--  NPC: Katharina
--  General Info NPC
-------------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Southern_San_dOria/TextIDs");
require("scripts/globals/settings");

function onTrade(player,npc,trade)

end;

function onTrigger(player,npc)
    player:startEvent(887);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;