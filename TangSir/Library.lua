print("*********常用公共库*************")


--闭包示例
function outer(x)
	local y = 1
	--定义内嵌函数inner，并返回它
	return function(z)
		--这个内部函数就是一个闭包，应为它可以访问外部函数outer的作用域中的变量x和y
		print("传入参数:".."  ".."x="..x,"y="..y,"z="..z)
		return x+y+z
	end
end
--创建并保存一个闭包
local closure = outer(5)--此时闭包记住了x的值为5
--调用闭包，尽管outer函数执行完毕，但闭包仍能访问到原视的x和y值。
print(closure(8))



print("**********自带库************")
--string
--table
print("**********时间************")
--系统时间
print(os.time())
--自己传入参数 得到时间
print(os.time({year = 2014, month = 8, day = 14}))

--os.date("*t")
local nowTime = os.date("*t")
for k,v in pairs(nowTime) do
	print(k,v)
end
print(nowTime.hour)

print("**********数学运算************")
--math
--绝对值
print(math.abs(-11))
--弧度转角度
print(math.deg(math.pi))
--三角函数 传弧度
print(math.cos(math.pi))

--向下向上取整
print(math.floor(2.6))
print(math.ceil(5.2))

--最大最小值
print(math.max(1,2))
print(math.min(4,5))

--小数分离 分成整数部分和小数部分
print(math.modf(1.2))
--幂运算
print(math.pow(2, 5))

--随机数
--先设置随机数种子
math.randomseed(os.time())
print(math.random(100))
print(math.random(100))
--开方
print(math.sqrt(4))

print("**********路径************")
--lua脚本加载路径
print(package.path)
--package.path = package.path .. ";C:\\"
print(package.path)

--查看大G表
for k,v in pairs(_G) do
	print(k,v)
end


print("************IO文件读写*************")
--io