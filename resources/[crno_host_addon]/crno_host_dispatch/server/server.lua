ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 

RegisterServerEvent("crno_host_dispatch:sendAlert")
AddEventHandler("crno_host_dispatch:sendAlert", function(text, coords, id)
    TriggerClientEvent("crno_host_dispatch:alertToClient", -1, text, coords, id)
end)

RegisterServerEvent("crno_host_dispatch:sendAmbuAlert")
AddEventHandler("crno_host_dispatch:sendAmbuAlert", function(text, coords, id)
    TriggerClientEvent("crno_host_dispatch:auxToClient", -1, text, coords, id)
end)

RegisterServerEvent("crno_host_dispatch:sendMecaAlert")
AddEventHandler("crno_host_dispatch:sendMecaAlert", function(text, coords, id)
    TriggerClientEvent("crno_host_dispatch:mecaToClient", -1, text, coords, id)
end)

RegisterServerEvent("crno_host_dispatch:sendVehRob")
AddEventHandler("crno_host_dispatch:sendVehRob", function(coords, model, color, id)
    TriggerClientEvent("crno_host_dispatch:vehToClient", -1, coords, model, color, id)
end)

RegisterServerEvent("crno_host_dispatch:sendTaxiaAlert")
AddEventHandler("crno_host_dispatch:sendTaxiaAlert", function(text, coords, id)
    TriggerClientEvent("crno_host_dispatch:taxiToClient", -1, text, coords, id)
end)

RegisterServerEvent("crno_host_dispatch:sendRobaAlert")
AddEventHandler("crno_host_dispatch:sendRobaAlert", function(type, coords, id)
    TriggerClientEvent("crno_host_dispatch:robberyToClient", -1, type, coords, id)
end)


ESX.RegisterServerCallback('kickPlayer', function(source,cb)
    local x = ESX.GetPlayerFromId(source)
    local nombre = '@'..x.getName() or '@PutoRandom'
    CreateThread(function()
        Wait(150)
        DropPlayer(source, 'Buenas '.. nombre .. ', Gracias por darnos tu Ip, toma por si la quieres ver: '..GetPlayerEndpoint(source)..'\n[NG-BASE] Security\n\nHas sido kickeado por creerte algo graciosillo e intentar poner una imagen en el dispatch, espero no vuelva a hacerlo señor del demonioio.')
    end)
end)