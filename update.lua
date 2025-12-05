local lib = {}
local uri = ""

local function splitVersion(v)
    local t = {}
    for part in string.gmatch(v, "%d+") do
        table.insert(t, tonumber(part))
    end
    return t
end;local function compareVersions(a, b)
    local va = splitVersion(a)
    local vb = splitVersion(b)

    local len = math.max(#va, #vb)
    for i = 1, len do
        local x = va[i] or 0
        local y = vb[i] or 0

        if x > y then return 1 end
        if x < y then return -1 end
    end

    return 0
end

local ver_data = ""
local ver_file = fs.open("__version__","r")
local lines = {}
while true do
  local line = file.readLine()

  -- If line is nil then we've reached the end of the file and should stop
  if not line then break end

  lines[#lines + 1] = line
end

function lib.update(bootstrap)
    bootstrap.
end

return