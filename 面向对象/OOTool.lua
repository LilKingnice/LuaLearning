print("*************lua面向对象工具*************")

--万物之父Object  所有对象的基类
--封装所有的东西都封装到这里
Object = {}

--实例化方法
function Object:new()
	local obj={}
	--给空对象设置元表 以及 __index
	self.__index=self
	setmetatable(obj,self)
	return obj
end

--实现一个继承的方法
function Object:subClass(className)
	--根据名字使用大G表生成一张表 （就是一个类）
	_G[className]={}
	local Gobj = _G[className]

	--创建base方法 设置自己的“父类”
	Gobj.base=self

	--给子类设置元表 以及 __index
	self.__index=self
	setmetatable(Gobj,self)
end


--申明一个新的类
Object:subClass("GameObject")
--成员变量
GameObject.posX=1
GameObject.posY=1
--成员方法
function GameObject:Move()
	self.posX=self.posX+1
	self.posY=self.posY+1
end

--实例化对象使用
--obj1
local obj1=GameObject:new()
print("obj1posX："..obj1.posX.." obj1posY："..obj1.posY)
obj1:Move()
print("obj1posX："..obj1.posX.." obj1posY："..obj1.posY)

--obj2
local obj2=GameObject:new()
print("obj2posX："..obj2.posX.." obj2posY："..obj2.posY)
obj2:Move()
print("obj2posX："..obj2.posX.." obj2posY："..obj2.posY)


--申明一个新的类 Player 继承 GameObject
GameObject:subClass("Player")

print("******开始实现多态*********")
--多态 重写了 GameObject的Move方法
function Player:Move()
	--base调用父类方法 用.自己传第一个参数
	self.base.Move(self)
end

--具体使用
local p1 = Player:new()
print("p1posX："..p1.posX.." p1posY："..p1.posY)
p1:Move()
print("p1posX："..p1.posX.." p1posY："..p1.posY)


local p2 = Player:new()
print("p2posX："..p2.posX.." p2posY："..p2.posY)
p2:Move()

