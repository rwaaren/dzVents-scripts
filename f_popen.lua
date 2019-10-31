
        local function osCommand(cmd)
            local fileHandle     = assert(io.popen(cmd, 'r'))
            local commandOutput  = assert(fileHandle:read('*a'))
            local returnTable    = {fileHandle:close()}
            dz.log('\nCommand:       ' .. cmd ..
                   '\nReturnCode:    ' .. returnTable[3] ..
                   '\ncommandOutput: ' .. commandOutput,
                   dz.log_debug)
            return commandOutput,returnTable[3]            -- rc[3] contains returnCode
        end


