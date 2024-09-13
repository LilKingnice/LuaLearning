-- 使用#获取字符串长度(注意只对字符串有用！！！)，在Lua中一个中文字占3个字节，英文字母占用一个字节

--错误示范
--[[
A = 2
local a=#A
print(a)
]]


local str = "Hello, World!"
local length = string.len(str)  -- 使用string.len函数
print(length)  -- 输出字符串长度
 
local length2 = #str  -- 使用#操作符
print(length2)  -- 输出字符串长度


--多行打印
print("你好\n世界")
local a=[[

你好
世界
]]
print(a)



---字符串拼接
print(string.format("我已经 %d 岁了",2))


--显示转换
local a=2
local b=tostring(a)

print(string.format("今天是学习lua的第%d天",1))
