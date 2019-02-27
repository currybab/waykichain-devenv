mylib = require "mylib"
--must start with mylib = require "mylib". Be sure to put it in the first line. If the first line is left blank, an exception will be reported.

--Define calling smart contract events
METHOD = {
    CHECK_HELLOWORLD  = 0x17,
    SEND_HELLOWORLD = 0x18
}

--refer to [4.3 API Debug Example]
--Used to print log information to a file
LogMsg = function (msg)
   local logTable = {
        key = 0,
        length = string.len(msg),
        value = msg
  }
  mylib.LogPrint(logTable)
end

---------------------------------------------------

Check = function()
    LogMsg("Run CHECK_HELLOWORLD Method")
end

Send = function()
    LogMsg("Run SEND_HELLOWORLD Method")
end

--refer to[4.2Development Lua Methods]
--Entry function of smart contract
Main = function()
  assert(#contract >=2, "Param length error (<2): " ..#contract )
  assert(contract[1] == 0xf0, "Param MagicNo error (~=0xf0): " .. contract[1])

  if contract[2] == METHOD.CHECK_HELLOWORLD then
    Check()
  elseif contract[2] == METHOD.SEND_HELLOWORLD then
    Send()
  else
    error('method# '..string.format("%02x", contract[2])..' not found')
  end
end

Main()
