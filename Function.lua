--函数
--基本函数写法



print("**************")
function nihao()
	print("普通函数")
	end

nihao()


hello=function( ... )
	print("被赋值的函数")
end
hello()

print("*******有参函数********")
--有参数
function ParametricMethod(a)
	print(a)
	end
--什么值都能传类似于var
ParametricMethod("有参函数")
ParametricMethod(123)
ParametricMethod(true)



ParametricMethod()
ParametricMethod(1,5,8,9)

print(string.byte("a"))
print(string.byte("Asd"),1)
print(string.char(65))


---有返回值的函数
function F3(a)
	return a,"nihao",true
end
TEMP,md,md2=F3(555)
print(TEMP,md,md2)
print(F3(456))

--变长函数
print("************变长函数**********")
function ChangeLengthMethod( ... )
	arg={...}
	for i=1,#arg do
		print(arg[i])
	end
end

ChangeLengthMethod(1,"变长函数",true,F3(3))


--函数嵌套
function insideFunc()
	return function(a)
		print(a)
	end
end
insideFunc()("这是嵌套函数")
f22=insideFunc()
f22("这是嵌套函数")


print("*****高级玩法闭包*******")
function outer(y)
	local x = 1

	return function(z)
		print("传入参数:".."  ".."x="..x,"y="..y,"z="..z)
		return x+y+z
	end
end

local closure = outer(5)

print(closure(8))