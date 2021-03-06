-----------------------------------
-- Area: Cloister of Gales
-- BCNM: Trial-size Trial by Wind
-- !pos -361 1 -381 201
-----------------------------------
package.loaded["scripts/zones/Cloister_of_Gales/TextIDs"] = nil;
-------------------------------------

require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Cloister_of_Gales/TextIDs");

-----------------------------------

-- After registering the BCNM via bcnmRegister(bcnmid)
function onBcnmRegister(player,instance)
end;

-- Physically entering the BCNM via bcnmEnter(bcnmid)
function onBcnmEnter(player,instance)
end;

-- Leaving the BCNM by every mean possible, given by the LeaveCode
-- 1=Select Exit on circle
-- 2=Winning the BC
-- 3=Disconnected or warped out
-- 4=Losing the BC
-- via bcnmLeave(1) or bcnmLeave(2). LeaveCodes 3 and 4 are called
-- from the core when a player disconnects or the time limit is up, etc

function onBcnmLeave(player,instance,leavecode)
-- print("leave code "..leavecode);
    
    if (leavecode == 2) then -- play end CS. Need time and battle id for record keeping + storage
        player:startEvent(32001,1,1,1,instance:getTimeInside(),1,0,0);
    elseif (leavecode == 4) then
        player:setVar("TrialSizeWind_date",tonumber(os.date("%j"))); -- If you loose, you need to wait 1 real day
        player:startEvent(32002);
    end
    
end;

function onEventUpdate(player,csid,option)
-- print("bc update csid "..csid.." and option "..option);
end;
    
function onEventFinish(player,csid,option)
-- print("bc finish csid "..csid.." and option "..option);
    
    if (csid == 32001) then
        if (player:hasSpell(301) == false) then
        player:addSpell(301); -- Garuda
        player:messageSpecial(GARUDA_UNLOCKED,0,0,3);
        end
        if (player:hasItem(4181) == false) then
            player:addItem(4181);
            player:messageSpecial(ITEM_OBTAINED,4181); -- Scroll of instant warp
        end
        player:setVar("TrialSizeWind_date", 0);
        player:addFame(RABAO,30);
        player:completeQuest(OUTLANDS,TRIAL_SIZE_TRIAL_BY_WIND);
    end
    
end;