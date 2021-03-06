-- Grow process
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.browminutes * 60000)
        TriggerEvent('skinchanger:getSkin', function(skinData)
            if skinData ~= nil then
                if skinData['eyebrows_2'] > 1 and skinData['eyebrows_2'] < 10 then
                    skinData['eyebrows_2'] = skinData['eyebrows_2'] + 1
                    TriggerEvent('skinchanger:loadSkin', skinData)
                    TriggerServerEvent('esx_skin:save', skinData)
                end
            end
        end)
    end
end)

-- Notification process
if Config.EnableNotify then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(Config.notify * 60000)
            TriggerEvent('skinchanger:getSkin', function(skinData)
                if skinData ~= nil then
                    local beard = skinData['eyebrows_2']
                    if beard == 1 then
                        exports['mythic_notify']:DoHudText('inform', 'I feel hairs on my brow?', 5000)
                    elseif beard == 2 then
                        exports['mythic_notify']:DoHudText('inform', 'Brows.. hmmmm.....', 5000)
                    elseif beard == 3 then
                        exports['mythic_notify']:DoHudText('inform', 'It is there.. But should i trim?', 5000)
                    elseif beard == 4 then
                        exports['mythic_notify']:DoHudText('inform', 'Yep, they can see my brows now..', 5000)
                    elseif beard == 5 then
                        exports['mythic_notify']:DoHudText('inform', 'Brows! It is there!', 5000)
                    elseif beard == 6 then
                        exports['mythic_notify']:DoHudText('inform', 'I like my Brow!!', 5000)
                    elseif beard == 7 then
                        exports['mythic_notify']:DoHudText('inform', 'There is a bush above my eyes', 5000)
                    elseif beard == 8 then
                        exports['mythic_notify']:DoHudText('inform', 'Stop! Drop and roll the brows!', 5000)
                    elseif beard == 9 then
                        exports['mythic_notify']:DoHudText('inform', 'There are brows above my eyes!', 5000)
                    elseif beard == 10 then
                        local chance = math.random(0, 100)
                        if chance > 0 and chance < 50 then
                            exports['mythic_notify']:DoHudText('inform', 'Boss brows present!', 5000)
                        elseif chance > 51 then
                            exports['mythic_notify']:DoHudText('inform', 'I might need to shave it now.. YEP!', 5000)
                        end
                    end
                end
            end)
        end
    end)
end
