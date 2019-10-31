local scriptVersion = '0.2019xxxx'
local scriptVar  =  'scriptname_' .. scriptVersion

--[[ 

this dzVents script is used to 

History
========
2019xxxx Start coding

]]--

return
{
    on = 
    { 
        timer = { 'every 1 minutes' },
        devices= { 'device*' },
        httpResponses = { scriptVar }, 
    },

    logging = { level = domoticz.LOG_DEBUG },  -- change to LOG_ERROR when everything works as expected

    data = 
    { 
        valueData = { initial = 0 },
        tableData = { initial = {} },
    },

    execute = function(dz, device)
        _G.logMarker =  _G.moduleLabel 
            
        dz.log(' logMarker:  ' .. _G.logMarker,dz.LOG_DEBUG)
    end
}    
