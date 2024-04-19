print("**********复杂表：实现面向对象***************")

--[[
Student={
	name="IKUN",
	age=1,
	Upper=function()
		print("成长函数调用")
	end,
	Lowwer=function()
		print("降低函数")
	end
}
print(Student.name)
Student.Upper()


--添加或修改变量和函数
Student.name="IIIIIIKKKKUN"
Student.speak=function()
	print("说话")
end
print(Student.name)
Student.speak()


--另一种声明方式
function Student.Method( ... )
	print("函数声明方式2")
end
]]--
Teacher={
	name="Teacher",

	testname=function(a)
		print(a.name)
	end
}

Student={
	name="IKUN",

	testname=function(a)
		print(a.name)
	end,

	testname2=function(t)
		print("成长函数调用"..t.name)
	end
}
Student.testname(Student)
Student:testname2() 

--外部声明通过传值调用类的内部参数
function Student.Play(t)
	print(t.name.."在玩")
end
Student.Play(Student)


--外部声明的方法可以使用冒号，使用self关键字
function Student:speak()
	print(self.name.."默认调用的字段开口说话了！")
end
Student:speak()

--多参数传入
function Student:speak(t,k)
	print(self.name.."开口说话了！")
	print(k.name.."开口说话了！")
end

Student:speak(Student,Teacher)


print("****************")
--多参数传入
function Student.speak(t,k)
	print(t.name.."开口说话了！")
	print(k.name.."开口说话了！")
end

Student.speak(Student,Teacher)



print("**********表的公共操作***********")
--如果需要进行表操作，需要这样声明


t1={{age=1,name="newname1"},{age=2,name="newname2"}}
--如果需要单纯的获取表中的值就这样声明
t2={man=true,info="这是T2"}
--这样插入不了，不知道
--t2={man=true,info="这是T2",man=false,info="这是T44"}
print(#t2)


table.insert(t1,t2)--表示将表t2插入到表t1中
print(t1[1].age)--输出1
print(t1[1].name)--输出newname1
print(t1[2].age)--输出2
print(t1[2].name)--输出newname2
print(t1[3].man)--true
print(t1[3].info)--这是一个男人

--print(t1[3].man)--true
--print(t1[3].info)--这是一个男人