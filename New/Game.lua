-- 导入 math 库用于生成随机数
math.randomseed(os.time())

-- 生成一个 1 到 100 之间的随机数
local secret_number = math.random(1, 100)

-- 提示用户开始游戏
io.write("game Start!write a 1-100 number\n")

-- 标记是否已经输出过错误提示
local has_printed_error = false

-- 主循环
while true do
    -- 读取用户输入
    local guess = io.read("*n")  -- 读取一个数字

    -- 检查输入是否有效
    if guess == nil then
        if not has_printed_error then
            has_printed_error = true
            io.write("print an number!!!\n")
        end
        io.read()
    else
        has_printed_error = false
        -- 检查用户猜测的数字
        if guess < secret_number then
            io.write("small again!\n")
        elseif guess > secret_number then
            io.write("too big try again!\n")
        else
            io.write("right!!! answer is:" .. secret_number .. ".\n")
            break  -- 结束循环
        end
    end
end


--终端输入
-- lua D:\LUA\StudyForLua\New\Game.lua