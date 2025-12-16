local sides = {
    "bottom", "top", "left", "right", "front"
};local sign_sides = {
    "front", "left", "right"
};local dir_sides = {
    "top", "bottom"
}
if not turtle then
    print("DEVICE IS NOT A CC_TURTLE TYPE.\nAUTO-SELECTING \"just acting as useless computer taking up ram and cpu\" OPTION.")
    return
end

local function detectSigns()
    local signs = {}
    for _,s in pairs(sign_sides) do
        if not peripheral.getType(s) == "minecraft:sign" then return false end
        local psign = peripheral.wrap(s)
    end
    return signs
end



local function SignOnFront(sign)
    local content = sign.getSignText()
    print("")
    print("Sign on FRONT")
    for step=1,4 do
        if content[step] or content[step] ~= "" then print(content[step]) end
    end
end



local function SignOnLeft(sign)
    local content = sign.getSignText()
    print("")
    print("Sign on LEFT")
    for step=1,4 do
        if content[step] or content[step] ~= "" then print(content[step]) end
    end
end



local function SignOnRight(sign)
    local content = sign.getSignText()
    print("")
    print("Sign on RIGHT")
    for step=1,4 do
        if content[step] or content[step] ~= "" then print(content[step]) end
    end
end



while true do
    local pfront = peripheral.wrap("front")
    local pleft = peripheral.wrap("left")
    local pright = peripheral.wrap("right")
    if pleft then
        if peripheral.getType(pleft) == "minecraft:sign" then
            SignOnLeft(pleft)
        end
    elseif pfront then
        if peripheral.getType(pfront) == "minecraft:sign" then
            SignOnRight(pfront)
        end
    elseif pright then
        if peripheral.getType(pright) == "minecraft:sign" then
            SignOnFront(pright)
        end
    end
end