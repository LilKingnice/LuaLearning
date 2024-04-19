print("*******复杂Table*********")

--字典
 
dictionary={["name"]="IKUN",["age"]=2.5,["man"]=true}

--字典查找
print(dictionary["name"])
print(dictionary["age"])
print(dictionary.man)

--字典修改
dictionary["name"]="KUNKUN"
print("name修改后："..dictionary["name"])

--字典增加
dictionary["Height"]="180"
print(dictionary.Height)

--字典删除,lua中的删除就是将一个参数的值置空
dictionary["Height"]=nil
print(dictionary.Height)



--字典遍历使用paris
print("遍历")
for k,v in pairs(dictionary) do
	print(k,v)
end

print("遍历2")
for k in pairs(dictionary) do
	print(k)
	--print(dictionary[k])
end

print("遍历3")
for _,v in pairs(dictionary) do
	print(v)
end







