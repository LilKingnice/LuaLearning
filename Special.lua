print("*********多返回值*************")


--[[
--多变量赋值
a,b,c,d=1,2,3,4



function havereturn()
	return 1,2,3,4
end

a,b,c=havereturn()
print(a,b,c,d)
]]--

a=true
b=false

--有假则假，找到假就立刻返回
print(a and b)

--有真则真，找到真就立刻返回
print(a or b)



--两个都为真，所以找到最后一个返回
print(nil and "2ss")
--
print("2ss" and false)

--直接返回第一个有真直接返回真
print(nil or 4)
print(3 or false)





print("******三目运算符*******")

x=6
y=2

--返回大的数
local res = (x>y) and x or y
print(res)
local res = (x<y) and y or x
print(res)


--返回小的数
local res = (x>y) and y or x
print(res)
local res = (x<y) and x or y
print(res)

print("***********三目运算符2*************")

a=true
b=false

local stringres = (b) and "为真" or "为假"

local booleanres = (a) and true or false

local intres = (b) and 1 or 0

print(stringres)
print(booleanres)
print(intres)
