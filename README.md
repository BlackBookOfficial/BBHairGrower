# BBHairGrower ( Requires SkinChanger! )
Simple script i put together to tackle down on majority of wanted functions.
It requires you to have mythic_notify for notification popups.

# What does it contain?
- Config to set time how long it takes to grow hair per minute.

# Updates:
Updates will happen eventually.
Just keep eyes on this rep.

# Requirements:
https://github.com/JayMontana36/mythic_notify

# Inegration ESX ( ADD ):
- esx_basicneeds: server.lua
```
ESX.RegisterUsableItem('shaver', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local randomshavetext = math.random(0, 200)

	if randomshavetext >= 0 and randomshavetext <= 50 then
		TriggerClientEvent('mythic_notify:client:DoHudText', source, { type = 'inform', text = 'This beard grows too much..', length = 4000 })
		xPlayer.removeInventoryItem('shaver', 1)
		TriggerClientEvent('bb_beardshave:shave', source)
	elseif randomshavetext >= 51 and randomshavetext <= 100 then
		TriggerClientEvent('mythic_notify:client:DoHudText', source, { type = 'inform', text = 'Need a smooth face!', length = 4000 })
		xPlayer.removeInventoryItem('shaver', 1)
		TriggerClientEvent('bb_beardshave:shave', source)
	elseif randomshavetext >= 101 and randomshavetext <= 150 then
		TriggerClientEvent('mythic_notify:client:DoHudText', source, { type = 'inform', text = 'Wonder if this gets me a job?', length = 4000 })
		xPlayer.removeInventoryItem('shaver', 1)
		TriggerClientEvent('bb_beardshave:shave', source)
	elseif randomshavetext >= 151 and randomshavetext <= 200 then
		TriggerClientEvent('mythic_notify:client:DoHudText', source, { type = 'inform', text = 'This beard is the best, but needs to be gone!', length = 4000 })
		xPlayer.removeInventoryItem('shaver', 1)
		TriggerClientEvent('bb_beardshave:shave', source)
	end
end)
```
AND:
```
ESX.RegisterUsableItem('browtrimmer', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local randomtrimmertext = math.random(0, 200)

	if randomtrimmertext >= 0 and randomtrimmertext <= 50 then
		TriggerClientEvent('mythic_notify:client:DoHudText', source, { type = 'inform', text = 'This beard grows too much..', length = 4000 })
		xPlayer.removeInventoryItem('browtrimmer', 1)
		TriggerClientEvent('bb_beardshave:trim', source)
	elseif randomtrimmertext >= 51 and randomtrimmertext <= 100 then
		TriggerClientEvent('mythic_notify:client:DoHudText', source, { type = 'inform', text = 'Need a smooth face!', length = 4000 })
		xPlayer.removeInventoryItem('browtrimmer', 1)
		TriggerClientEvent('bb_beardshave:trim', source)
	elseif randomtrimmertext >= 101 and randomtrimmertext <= 150 then
		TriggerClientEvent('mythic_notify:client:DoHudText', source, { type = 'inform', text = 'Wonder if this gets me a job?', length = 4000 })
		xPlayer.removeInventoryItem('browtrimmer', 1)
		TriggerClientEvent('bb_beardshave:trim', source)
	elseif randomtrimmertext >= 151 and randomtrimmertext <= 200 then
		TriggerClientEvent('mythic_notify:client:DoHudText', source, { type = 'inform', text = 'This beard is the best, but needs to be gone!', length = 4000 })
		xPlayer.removeInventoryItem('browtrimmer', 1)
		TriggerClientEvent('bb_beardshave:trim', source)
	end
end)
```
