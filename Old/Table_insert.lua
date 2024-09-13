print("*********表的公共操作********")


t1={{age=1,name="newname1"},{age=2,name="newname2"}}

--t2={{man=true,info="这是T2"}}
t2={man=true,info="这是T2"}

print(#t1)
print(#t2)

table.insert(t1,t2)
print(t1[1].age)
print(t1[1].name)
print(t1[2].age)
print(t1[2].name)

print(t1[3].man)
print(t1[3].info)

--print(t2[1].man)
--print(t2[1].info)

print("***************移除***************")
t3={{name="iii",age=1},{name="jjjj",age=2},{name="kkkkk",age=3}}

--table.remove(t3)
--print(t3[2].name)--默认移除的就是最后一个

table.remove(t3,2)--移除第二个
print(t3[2].age)--现在的第二个就是原来的第三个

--print(t3[3])



print("***************正序排序***************")

--正序排序
t4={2,6,1,10,118,35}
table.sort(t4)
for _,v in pairs(t4) do
	print(v) 
end

print("***************倒序排序***************")
--倒序排序
table.sort(
	t4,
	function(a,b)
		if a>b then
		 return true
		end
	end)

for _,v in pairs(t4) do
	print(v) 
end




print("************连接元素********************")
--按照要求连接表中元素
t5={"abc","def","ghi","jkl"}
str=table.concat( t5, ":")
print(str)
