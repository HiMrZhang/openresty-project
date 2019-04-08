--
-- Created by IntelliJ IDEA.
-- User: zhangyunpeng
-- Date: 2019-02-22
-- Time: 16:06
-- To change this template use File | Settings | File Templates.
--

--初始化耗时的模块
local redis = require 'resty.redis'
local cjson = require 'cjson'

--全局变量，不推荐
count = 1

--共享全局内存
local shared_data = ngx.shared.shared_data
shared_data:set("count", 1)