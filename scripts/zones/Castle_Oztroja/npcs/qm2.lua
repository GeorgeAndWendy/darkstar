-----------------------------------
-- Area: Castle Oztroja
--  NPC: qm2 (???)
-- Used In Quest: Whence Blows the Wind
-- !pos -100 -63 58 151
-----------------------------------
package.loaded["scripts/zones/Castle_Oztroja/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/zones/Castle_Oztroja/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    if (player:getQuestStatus(JEUNO,WHENCE_BLOWS_THE_WIND) == QUEST_ACCEPTED and player:hasKeyItem(dsp.ki.YAGUDO_CREST) == false) then
        player:addKeyItem(dsp.ki.YAGUDO_CREST);
        player:messageSpecial(KEYITEM_OBTAINED, dsp.ki.YAGUDO_CREST);
    else
        player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;