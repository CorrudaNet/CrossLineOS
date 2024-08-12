os.pullEvent = os.pullEventRaw

--kernel = require("kernel")

print("1. Shell\n2. ")

UsrInput = read()

if UsrInput == "1" then

textutils.slowPrint("Enter the root password")
attempt = read()
    if attempt == "75201" then
    textutils.slowPrint("Shell Unlocked!")
    else
    term.setBackgroundColor(colors.red)
    term.clear()
    term.setCursorBlink(false)
    term.setCursorPos(1,1)
    textutils.slowPrint("Unauthorized attempt to access the shell")
    sleep(3)
    os.reboot()
    end
end
