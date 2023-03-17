Citizen.CreateThread(function()
    local lastStatus = "off"
    while true do
        Wait(60000)

        local status = "off"
        if GetConvar("sv_running", "false") == "true" then
            status = "on"
        end

        if status ~= lastStatus then
            if status == "on" then
                EnviarStatus("El servidor se ha iniciado.")
            else
                EnviarStatus("El servidor se ha cerrado o reiniciado.")
            end
            lastStatus = status
        end
    end
end)
