term.setBackgroundColor(colors.blue)
term.clear()
textutils.slowPrint("Are you sure you would like to manually update the OS Y/N")

answer = read()

if answer == "Y" then
textutils.slowPrint("Updating the OS")

sleep(1)

shell.run(".update.lua")

shell.execute("delete", ".sys")
shell.run("wget https://raw.githubusercontent.com/CorrudaNet/CrossLineOS/main/.sys/kernel.lua")
shell.run("wget https://raw.githubusercontent.com/CorrudaNet/CrossLineOS/main/.sys/menu.lua")
shell.run("wget https://raw.githubusercontent.com/CorrudaNet/CrossLineOS/main/startup.lua")


shell.run("mkdir .sys")
shell.run("mv kernel.lua .sys/kernel.lua")
shell.run("mv menu.lua .sys/menu.lua")

os.reboot()

end

