--循环

local a=0
-- 初始化变量
a = 0

-- while 循环
io.write("While Loop: ")
while a < 4 do
    a = a + 1
    io.write(a .. " ")
end

-- do...while 循环
io.write("\nDo-While Loop: ")
b = 0
repeat
    b = b + 1
    io.write(b .. " ")
until b >= 4 --注意这里的条件是退出的条件

-- for 循环
io.write("\nFor Loop:span 1 ")
for c = 1, 4 do
    io.write(c .. " ")
end

-- for 循环中间间隔2 步
io.write("\nFor Loop:span 2 ")
for c = 1, 4 ,2 do
    io.write(c .. " ")
end


-- for 循环倒序排列
io.write("\nFor Loop: Reverse order ")
for c = 6, 1 ,-1 do
    io.write(c .. " ")
end