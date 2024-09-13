print("**************变量****************")
--lua当中的简单变量类型
--lua中所有的变量类型都不需要声明 内部会自动判断


-- 简单四种：nil  number  string boolean
--复杂四种：
--函数 function
--表 table
--数据结构 userdata
--协同程序 thread线程


print("******空类型****")
a=nil
print(a)
print(type(a))


--所有数值类型都是number
print("*******number******")
a=1
print(a)
a=1.2
print(a)
print(type(a))
--单引号双引号都可，所有数值类型都是string，这个特性要记住后面会用到
print("*******string******")
a="1"
print(a)
a='1.2'
print(a)
print(type(a))
print("*****boolean****")
a=false
print(a)
print(type(a))

--复杂数据结构
--函数 function
--表 table
--数据结构 userdataa
--协同程序 thread

print("************字符串操作*************")
--字符串操作
str="abcDEfg"
strtest="asdf你好世界"
print(#strtest)--获取字符串长度，在Lua中一个中文字占3个字节，英文字母占用一个字节

--多行打印
print("多行\n打印")

s=
[[

第二个
多行
打印
]]
print(s)


print("*********字符串拼接**********")
--字符串拼接
a=1.2
b="123"
c=456

print(a..b..c)--字符串拼接通过两个点进行，最多进行string+number+float

--string字符串匹配
print(string.format("今天是学习lua的第%d天",1))




print(string.upper(str))--字符串转大写

print(string.lower(str))--字符串转小写

print(string.reverse(str))--字符串倒转

print(string.find(str,"cDE"))--字符串查找

print(string.sub(str,3))--字符串截取
print(string.sub(str,3,4))--重载字符串截取，划定范围

print(string.rep(str,2))--字符串重复

print(string.gsub(str,"cD","**"))--字符串修改

print(string.byte("a"))











