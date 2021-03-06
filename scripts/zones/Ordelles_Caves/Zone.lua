-----------------------------------
--
-- Zone: Ordelles_Caves (193)
--
-----------------------------------
package.loaded["scripts/zones/Ordelles_Caves/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Ordelles_Caves/TextIDs");
require("scripts/zones/Ordelles_Caves/MobIDs");
require("scripts/globals/conquest");
-----------------------------------

function onInitialize(zone)
    UpdateNMSpawnPoint(MORBOLGER);
    GetMobByID(MORBOLGER):setRespawnTime(math.random(900, 10800));

    UpdateTreasureSpawnPoint(ORDELLES_TREASURE_CHEST);
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(-76.839,-1.696,659.969,122);
    end
    if (prevZone == 102 and player:getVar("darkPuppetCS") == 1) then
        cs = 10;
    end
    return cs;
end;

function onConquestUpdate(zone, updatetype)
    dsp.conq.onConquestUpdate(zone, updatetype)
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 10) then
        player:setVar("darkPuppetCS",2);
    end
end;
