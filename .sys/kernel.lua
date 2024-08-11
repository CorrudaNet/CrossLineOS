os.pullEventRaw()

local permission = 0


local errorCode = ""

term.clear()
term.setCursorPos(1,1)
print("Crossline OS Kernel")

local function RedScreenOfDeath()
term.clear()
term.setBackgroundColor(colors.red)

term.setCursorPos(1,1)
term.write("Kernel panic: ", errorCode)

sleep(3)
os.reboot()

end

local id = multishell.launch({}, ".sys/debug.lua")
multishell.setTitle(id, "")

return {errorCode, RedScreenOfDeath }

