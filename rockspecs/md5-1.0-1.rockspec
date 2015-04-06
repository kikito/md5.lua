package = "md5"
version = "1.0-1"
source = {
  url = "https://github.com/kikito/md5.lua/archive/v1.0.1.tar.gz",
  dir = "md5.lua-1.0.1"
}
description = {
   summary = "MD5 sum in pure Lua, with no C and no external dependencies",
   detailed = "This pure-Lua module computes md5 in Lua 5.1, Lua 5.2 and LuaJIT, using native bit-manipulation libraries when available, and falling back to table-based manipulation of integers in 5.1",
   homepage = "https://github.com/kikito/md5.lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      md5 = "md5.lua"
   }
}
