RegisterNetEvent('bb_beardshave:shave')
AddEventHandler('bb_beardshave:shave', function()
    TriggerEvent('skinchanger:getSkin', function(skinData)
        if skinData ~= nil then
            if skinData['beard_2'] > 1 then
                skinData['beard_2'] = 1
                TriggerEvent('skinchanger:loadSkin', skinData)
                TriggerServerEvent('esx_skin:save', skinData)
            end
        end
    end)
end)

RegisterNetEvent('bb_beardshave:trim')
AddEventHandler('bb_beardshave:trim', function()
    TriggerEvent('skinchanger:getSkin', function(skinData)
        if skinData ~= nil then
            if skinData['eyebrows_2'] > 1 then
                skinData['eyebrows_2'] = 1
                TriggerEvent('skinchanger:loadSkin', skinData)
                TriggerServerEvent('esx_skin:save', skinData)
            end
        end
    end)
end)
