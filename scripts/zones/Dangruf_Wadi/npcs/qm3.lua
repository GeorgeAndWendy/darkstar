-----------------------------------
--  NPC: ??? (QM3)
-- Type: Saltvix dice roll game part 2
-- !zone 191
-- Involved in quest "As Thick As Thieves"
-----------------------------------
package.loaded["scripts/zones/Dangruf_Wadi/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/quests");
require("scripts/zones/Dangruf_Wadi/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)

    local thickAsThievesGamblingCS = player:getVar("thickAsThievesGamblingCS");

    if (thickAsThievesGamblingCS == 2) then
        if (trade:hasItemQty(936,1) and trade:getItemCount() == 1) then -- Trade 1x rock slat
            local rand1 = math.random(1,999);
            local rand2 = math.random(1,999);

            if (rand1 > rand2) then
                player:startEvent(136,1092,0,rand1,rand2); -- complete 1/3 gamble mini quest
            else
                player:startEvent(139,0,0,rand1,rand2); -- player looses
            end
        end
    end

end;

function onTrigger(player,npc)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)

    if (csid == 139 and option == 1) then -- player looses dice game
        player:tradeComplete();
        player:setVar("thickAsThievesGamblingCS",2);
    elseif (csid == 136 and option == 0) then -- player wins dice game
        player:tradeComplete();
        player:setVar("thickAsThievesGamblingCS",3);
    end

end;

