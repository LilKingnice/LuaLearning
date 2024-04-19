print("*************面向对象**************")

print("*************封装**************")
Object = {}
Object.id=1

--冒号 会自动将调用这个函数的对象 作为第一个参数传入
function Object:new()
	--定义一个空表
	local obj={}
	--通过使用元表和index的概念达到“继承”的目的
	--self 代表的是默认传入的第一个参数
	self.__index=self
	setmetatable(obj,self)
	
	return obj
end

--测试调用方法
function Object:Test()
	print("这里是Test方法")
	print(self.id)
end
 
 --创建一个实例
 local myobj=Object:new()

 print(myobj)
  --调用或访问其中的字段或方法
 print(myobj.id)
 myobj:Test()


print("************继承**************")

function Object:subClass(className)
	_G[className]={}
	local Gobj = _G[className]
	self.__index=self

	--子类定义一个base属性 base属性代表父类
	Gobj.base=self
	setmetatable(Gobj,self)

end

Object:subClass("Person")
print(type(Person))

local p1 = Person:new()
print(p1.id)--层层往上找找到Object中的id返回回来
p1:Test()
p1.id=100--修改后，自己表中有了id这个值
print(p1.id)--后面找到的都是自己表中的值
p1:Test()



print("***********多态**************")

Object:subClass("GameObject")
GameObject.posX=0
GameObject.posY=0

function GameObject:Move()
	self.posX=self.posX+1
    self.posY=self.posY+1
    print(self.posX)
    print(self.posY)
end

GameObject:subClass("Player")
function Player:Move()
	--self.base:Move()
	self.base.Move(self)

end

local p1 =Player:new()
p1:Move()
p1:Move()
p1:Move()

print("p2调用")
local p2 =Player:new()
p2:Move()
