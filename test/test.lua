---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhangyunpeng.
--- DateTime: 2019-04-02 16:55
---
local base_home = "/Library/Programes/workspace-me/luaDemo/"
package.path = package.path  .. ";" .. base_home .. "lua/?.lua;" .. base_home .. "lualib/?.lua;;"
package.cpath = package.path  .. ";"  .. base_home .. "lualib/?.so;;"
ngx.say("hello word！")