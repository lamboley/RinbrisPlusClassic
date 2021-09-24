local SellingJunks = CreateFrame("FRAME")
SellingJunks:RegisterEvent("MERCHANT_SHOW")
SellingJunks:SetScript("OnEvent", function() 
    local icon, quality
    for bagID = 0, 4 do
        for slot = 1, GetContainerNumSlots(bagID) do
            icon, _, _, quality = GetContainerItemInfo(bagID, slot)
            if quality == 0 and MerchantFrame:IsShown() then
                UseContainerItem(bagID, slot)
            end
        end
    end
end)