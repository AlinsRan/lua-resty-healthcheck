package = "lua-resty-healthcheck-api7-master"
version = "0-0"
source = {
   url = "git://github.com/api7/lua-resty-healthcheck",
   branch = "master",
}

description = {
   summary = "Healthchecks for OpenResty to check upstream service status",
   detailed = [[
      lua-resty-healthcheck is a module that can check upstream service
      availability by sending requests and validating responses at timed
      intervals.
   ]],
   homepage = "https://github.com/api7/lua-resty-healthcheck",
   license = "Apache 2.0"
}

dependencies = {
   "lua-resty-worker-events ~> 2",
   "penlight ~> 1.7",
   "lua-resty-timer ~> 1"
}
build = {
   type = "builtin",
   modules = {
      ["resty.healthcheck"] = "lib/resty/healthcheck.lua",
   }
}
