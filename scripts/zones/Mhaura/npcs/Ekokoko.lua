-----------------------------------
-- Area: Mhaura
--  NPC: Ekokoko
-- Gouvernor of Mhaura
-- Involved in Quest: Riding on the Clouds
-- !pos -78 -24 28 249
-----------------------------------
package.loaded["scripts/zones/Mhaura/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/zones/Mhaura/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)

    if (player:getQuestStatus(JEUNO,RIDING_ON_THE_CLOUDS) == QUEST_ACCEPTED and player:getVar("ridingOnTheClouds_3") == 6) then
        if (trade:hasItemQty(1127,1) and trade:getItemCount() == 1) then -- Trade Kindred seal
            player:setVar("ridingOnTheClouds_3",0);
            player:tradeComplete();
            player:addKeyItem(dsp.ki.SOMBER_STONE);
            player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.SOMBER_STONE);
        end
    end

end;

function onTrigger(player,npc)

    if (math.random() > 0.5) then
        player:startEvent(51);
    else
        player:startEvent(52);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;