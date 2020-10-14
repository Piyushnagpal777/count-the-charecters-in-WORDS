--[[
*****************************************************************************************
*
*
*  This script is code stub for CodeChef problem code WLEN_LUA
*  under contest PYLT20TS in Task 0 of Nirikshak Bot (NB) Theme (eYRC 2020-21).
*
*  Filename:			WLEN_LUA.lua
*  Created:				07/10/2020
*  Last Modified:		07/10/2020
*  Author:				e-Yantra Team
*
*****************************************************************************************
]]--
--[[
2
@Debugging is being the detective in a criminal movie where you are also the murderer
@Good code is its own best documentation
]]

-- countChar function to count the characters in each word of given string
function countChar(str)
	-- write your code here
  str1 = {}
  for substring in str:gmatch("%S+") do
    table.insert(str1, substring)
  end
  for i=1, #str1 do
    if(i == 1) then
      io.write(#str1[i] - 1)
    else
      io.write(",", #str1[i])
    end
  end
end

-- for each case, call countChar function to count the characters in each word of given string
tc = tonumber(io.read())
str = {}
for i=1, tc do
  table.insert(str, io.read())
end
for i = 1, tc do
  countChar(str[i])
  if(i == tc) then
    break
  else
    io.write("\n")
  end
end
