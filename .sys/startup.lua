os.pullEventRaw()

term.setBackgroundColor(colors.blue)
term.clear()

term.setCursorPos(1,1)
print("Crossline OS install will now begin shortly...")
print("----------------------------------------------")

textutils.slowPrint("Deleting existing files")
shell.run("delete",".sys")
print("---------------------------------------------")
sleep(1)

textutils.slowPrint("Enjoy the wonders of built in Security")
sleep(1)

print("---------------------------------------------------")


-- Install the basalt UI Library
textutils.slowPrint("Installing UI Library")
sleep(1)
shell.run("wget run https://basalt.madefor.cc/install.lua release latest.lua")

textutils.slowPrint("Installing Crossline OS ...")

if fs.exists("disk/") then
    shell.run("delete","startup.lua")
    shell.run("cp","disk/.sys", ".")

    disk.eject("top")
    disk.eject("bottom")
    disk.eject("left")
    disk.eject("front")
    disk.eject("back")
    disk.eject("left")
    disk.eject("right")

    textutils.slowPrint("Rebooting...")
    sleep(1)
    os.reboot()

else
    term.clear()
    term.setBackgroundColor(colors.red)
    term.clear()

    term.setCursorPos(1,5)
    textutils.slowPrint("It would appear there is no disk directory.\n\nFAQ: How can this be fixed?\n\n1. If the floppy disk is not inserted insert it back into the disk drive\n\nRebooting now...")
    sleep(3)
    os.reboot()
end

