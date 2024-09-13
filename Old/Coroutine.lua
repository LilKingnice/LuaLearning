print("***********协程***********")

function mycoroutine()
	print(123)
end

co=coroutine.create(mycoroutine)
print(type(co))


co2=coroutine.wrap(mycoroutine)
print(type(co2))


coroutine.resume(co)
co2()



print("******协程的挂起********")


function Newyield()
	local x = 0
	while true do
		x=x+1
		print("协程挂起"..x)
		coroutine.yield(x)
	end
end

myco1=coroutine.create(Newyield)
return1,return2=coroutine.resume(myco1)
print(return1,return2)
return1,return2=coroutine.resume(myco1)
print(return1,return2)
return1,return2=coroutine.resume(myco1)
print(return1,return2)

print("********使用_忽略不需要的值*******")
myco1=coroutine.create(Newyield)
_,return2=coroutine.resume(myco1)
print(return2)
_,return2=coroutine.resume(myco1)
print(return2)
_,return2=coroutine.resume(myco1)
print(return2)

print("第二方法")
myco2=coroutine.wrap(Newyield)
return3=myco2()
print(return3)
return3,return4=myco2()
print(return3)
return3,return4=myco2()
print(return3)



print("***********协程状态**********")

print(coroutine.status(co))
print(coroutine.status(myco1))


function coroutineStatus()
	local x = 0
	while true do
		x=x+1
		print("协程状态："..coroutine.status(newstatus))
		coroutine.yield(x)
	end
end
newstatus=coroutine.create(coroutineStatus)
coroutine.status(newstatus)
coroutine.resume(newstatus)
