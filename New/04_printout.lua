--输入输出库

--输出通常情况使用print
print("Hello World!")

--标准情况需要使用io
io.write("Hello World!\n")

io.stderr:write("Error: Hello World!\n")
--io.write：适用于正常程序输出，输出到标准输出流（stdout）。
-- io.stderr:write：适用于错误消息或警告信息，输出到标准错误流（stderr）。
local b=io.read()
print(b)

--[[
local file = io.open("output.txt", "w+")
file:write("Hello World552!\n")

-- 重新定位文件指针到文件开头
file.seek(file,"set", 0)

-- 读取文件内容
local content = file.read(file,"*a")  -- 读取整个文件的内容

-- 输出读取的内容
print(content)

file:close()
]]


-- local file=io.open("D:\\Desktop\\helloworld\\output.txt", "w+")
-- file:write("hellow\norld","nihao","abaababab",5646)

-- file:seek("set",0)
-- -- 读取文件内容
-- local content = file:read("*a")  -- 读取整个文件的内容

-- -- 输出读取的内容
-- print(content)

-- file:close()

-- local message = string.format("Hello World!\n")
-- io.write(message)


-- local data = { ["name"] = "Alice", ["age"] = 25 }
-- table.foreach(data, function(k, v)
--     io.write(k .. ": " .. v .. "\n")
-- end)


