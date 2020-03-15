#!/usr/local/bin/lua

-- usage: ./ed.lua 5

lfs = require "lfs"

-- from https://stackoverflow.com/a/40180465
function split(s, sep)
  local fields = {}

  local sep = sep or " "
  local pattern = string.format("([^%s]+)", sep)
  string.gsub(s, pattern, function(c) fields[#fields + 1] = c end)

  return fields
end

-- from https://stackoverflow.com/a/2705804
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

home = os.getenv("HOME")
staticdir = lfs.currentdir()

staticdir = string.gsub(staticdir, home, "~")
currentdir = split(staticdir, "/")

if tablelength(currentdir) < 6 then
  print(staticdir)
else
  start = tonumber(arg[1])
  stop = tablelength(currentdir) - 1

  for x,item in pairs(currentdir) do
    if x >= start and x < stop then
      currentdir[x] = ".."
    end
  end

  print(table.concat(currentdir, "/"))
end


