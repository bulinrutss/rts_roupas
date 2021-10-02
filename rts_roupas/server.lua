

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

mapreedev = {}
vRP = Proxy.getInterface("vRP")
vRPClient = Tunnel.getInterface("vRP")
Tunnel.bindInterface("rts_roupas", mapreedev)


function mapreedev.shopBuy(price)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.tryFullPayment(user_id,price) then
            if price > 0 then
                TriggerClientEvent("Notify",source,"sucesso","Você Comprou <b>R$"..vRP.format(parseInt(price)).."</b> em roupas e acessórios.")
                return true
            end
        else
            TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
            return false
        end
    end
end
 print("^4script edited by ! RTS HOST")