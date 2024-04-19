print("***********多脚本执行*************")
--[[
--在任何地方声明都是 全局变量
a=1

--局部变量 加local
local x = 1


--在当前脚本中执行其他脚本
require("demo1")--需要在同一目录下，不同目录需要写文件路径

print(text)
print(textlocal)

--require(demo1.textlocal)

--脚本是否被执行过，返回Boolean
print(package.loaded["demo1"])

print("**********************")
for k,v in pairs(_G) do
	print(k,v)
end
]]--


for k,v in pairs(_G) do
	print(k,v)
end
print("**************************")
greeting="hello"

function sayhello()
	print(greeting)
end

sayhello()
for k,v in pairs(_G) do
	if type(v)=="function" then
		print("Function:",k)
	end
end
print("***************")
for k,v in pairs(_G) do
	if type(v)=="string" then
		print("Variable:",k,"=",v)
	end
end









