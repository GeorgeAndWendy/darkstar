-----------------------------------
-- Area: East Sarutabaruta
--  NPC: Heih Porhiaap
-- !pos -118.876 -4.088 -515.731 116
-----------------------------------
package.loaded["scripts/zones/East_Sarutabaruta/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/East_Sarutabaruta/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:showText(npc,HEIH_PORHIAAP_DIALOG);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
