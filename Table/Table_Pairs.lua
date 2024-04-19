print("********迭代器遍历********")

--由于使用#号遍历数组不准确

a={[0]=1,2,[-1]=3,4,5}


--ipairs，无法遍历自定义表
for i,k in ipairs(a) do
	print(i.."_"..k)
end


print("分割线")
--pairs，可以遍历自定义表
for i,v in pairs(a) do
	print(i.."_"..v)
end

print()