print("******面向对象**************")
print("******封装**************")
print("******继承**************")
print("******多态**************")
-- 定义一个类（封装）
local Animal = {}
Animal.__index = Animal

function Animal:new(name)
  local instance = setmetatable({name = name}, Animal) -- 创建一个新的实例并设置元表
  return instance
end

-- 封装属性和方法
function Animal:speak()
  print(self.name .. " makes a sound.")
end

-- 创建实例并调用方法
local myDog = Animal:new("Rex")
myDog:speak() -- 输出: Rex makes a sound.



-- 定义子类 Dog，继承自 Animal
local Dog = setmetatable({}, {__index = Animal}) -- 继承 Animal

-- 添加或覆盖父类的方法
function Dog:speak()
  print(self.name .. " barks.")
end

-- 创建 Dog 实例
local myDog = Dog:new("Buddy")
myDog:speak() -- 输出: Buddy barks.



-- 定义另一个子类 Cat
local Cat = setmetatable({}, {__index = Animal})

function Cat:speak()
  print(self.name .. " meows.")
end

local myCat = Cat:new("Whiskers")
myCat:speak() -- 输出: Whiskers meows.

-- 定义一个处理不同动物发声的通用函数
function makeAnimalSpeak(animal)
  animal:speak() -- 这里体现了多态，根据animal的实际类型调用相应的方法
end

makeAnimalSpeak(myDog) -- 输出: Buddy barks.
makeAnimalSpeak(myCat) -- 输出: Whiskers meows.
