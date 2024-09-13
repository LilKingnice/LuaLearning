print("******运算符******")

--没有自增自减
--没有复合运算符
--字符串可以进行算数运算符操作，(但是必须保证字符串中是数字)会自动转换成number进行操作

--算术运算符
print("123"+2)
print("123.33"-2)
print("123.5"*2)
print("123"/2)
print("123"%2)--取余
print("123"^2)--幂运算，次方 


--条件运算符
--独特点不等于表示为
print(3~=1)--表示为3不等于1，返回true



--&&写为and
print(true and false)
print(true and false)
--||写为or
print(true or false)
print(true or false)
--！写为not
print(not true)--取反

--lua的逻辑运算支持“短路”
print(true and print("111"))--输出111和nil，因为Print函数返回的是String不是Boolean类型所以为nil 
print(false and print("111"))--输出false

