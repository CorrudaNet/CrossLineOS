local permission = 0
 
 
local errorCode = ""
 
local monitor = peripheral.wrap("top")
monitor.write("Hello, From the kernel")
 
term.clear()
term.setCursorPos(1,1)
print("Crossline OS Kernel")
 
shell.execute(".sys/menu.lua")
 
local function RedScreenOfDeath()
term.clear()
term.setBackgroundColor(colors.red)
 
term.setCursorPos(1,1)
term.write("Kernel panic: ", errorCode)
 
sleep(3)
os.reboot()
 
end
 
local id = multishell.launch({}, ".sys/update.lua") 
multishell.setTitle(id, "Manual Update")
 
return {errorCode, RedScreenOfDeath }
 
 
