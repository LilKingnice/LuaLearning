print("*********垃圾回收************")

test = {id=1,name="123465"}

print(collectgarbage("count"))

test=nil

collectgarbage("collect")
print(collectgarbage("count"))


print("******看效果********")

for i=1,6000 do
	i={id=i,name=""..i}
end

print(collectgarbage("count"))
--[[
for i=1,6000 do
	i=nil
end
]]--
collectgarbage("collect")

print(collectgarbage("count"))