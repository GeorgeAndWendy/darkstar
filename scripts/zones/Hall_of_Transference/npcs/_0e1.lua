-----------------------------------
-- Area: Hall of Transference
--  NPC: Cermet Gate - Dem
-- !pos -220 -46 -279 14
-----------------------------------
package.loaded["scripts/zones/Hall_of_Transference/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/missions");
require("scripts/zones/Hall_of_Transference/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    if (player:getCurrentMission(COP) > BELOW_THE_ARKS) then
        player:startEvent(150);
    else
        player:messageSpecial(NO_RESPONSE_OFFSET+1); -- The door is firmly shut.
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 150 and option == 1) then
        player:setPos(185.891, 0, -52.331, 128, 18); -- To Promyvion Dem {R}
    end
end;