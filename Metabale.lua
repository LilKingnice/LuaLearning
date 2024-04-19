print("*******元表********")

meta6 ={}
meta6.__newindex={}--相当于新创建了一个表
myTable6={speak="说话"}
setmetatable(myTable6,meta6)

myTable6.name="nihao"
myTable6.age=12

print(myTable6.age)--nil
print(myTable6.name)--nil
print(myTable6.speak)--说话

print(meta6.__newindex.age)--12
print(meta6.__newindex.name)--nihao
print(meta6.__newindex.speak)--nil


print("**********")




meta={}
myTable={}

setmetatable(myTable,meta)

meta2 ={
	--__tostring=function(a)
	--	return a.name
	--end,
	__call=function(t)
		print("call",t)
	end
}

myTable2={name= "myTable2"}

setmetatable(myTable2,meta2)

--print(myTable2)

myTable2(1)

print("运算符重载")


meta3={
	__add = function(t1,t2)
		return t1.age+t2.ages
	end,
	__sub = function(t1,t2)
		return t1.age-t2.ages
	end,
	__mul = function(t1,t2)
		return t1.age*t2.ages
	end,
	__div = function(t1,t2)
		return t1.age/t2.ages
	end,
	__mod = function(t1,t2)
		return t1.age%t2.ages
	end,
	__pow = function(t1,t2)
		return t1.age^t2.ages
	end,
	__eq = function(t1,t2)
		return t1.age==t2.ages
	end,
	__lt = function(t1,t2)
		return t1.age<t2.ages
	end,
	__le = function(t1,t2)
		return t1.age<=t2.ages
	end,
	__concat=function()
		return "连接"
	end

}

myTable3={age=6}
setmetatable(myTable3,meta3)
myTable4={ages=6}


print(myTable3+myTable4)
print(myTable3-myTable4)
print(myTable3*myTable4)
print(myTable3/myTable4)
print(myTable3%myTable4)
print(myTable3^myTable4)


setmetatable(myTable4,meta3)
print(myTable3==myTable4)
print(myTable3<myTable4)
print(myTable3<=myTable4)

print(myTable3..myTable4)




print("***********index*************")

META={
	name="META"
}
META.__index=META

meta5 ={
	agess=1
}

meta5.__index=meta5

myTable5={age=3}

setmetatable(meta5,META)
setmetatable(myTable5,meta5)
print(myTable5.age)
print(myTable5.agess)
print(myTable5.name)
print(rawget(myTable5,"name"))

print("********newindex*****")


meta6 ={speak="说话"}

meta6.__newindex={}

myTable6={}
setmetatable(myTable6,meta6)
myTable6.name="nihao"
myTable6.age=12

print(myTable6.age)
print(myTable6.name)
print(myTable6.speak)

rawset(myTable6,"name","123")
rawset(myTable6,"age",1)
rawset(myTable6,"speak","修改说话")


print(myTable6.age)
print(myTable6.name)
print(myTable6.speak)


--[[
local mt = {}
local another_table = {} -- 声明并初始化另一个表
function mt.__newindex(t, key, value)
  if key == "immutable_key" then
    print("Cannot assign to immutable key!")
  else
    -- 其他赋值逻辑，如将键值对存入另一个表或其他处理
    print("成功传入")
  end
end

local t = {}
setmetatable(t, mt)
t.immutable_key = "trying to assign" -- 这里会抛出错误

]]--

print("*****rawset****")

