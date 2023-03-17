local webhook_url = "TU URL DE WEBHOOK"
function EnviarStatus(message)
    PerformHttpRequest(webhook_url, function(err, text, headers) end, 'POST', json.encode({["content"] = message}), {['Content-Type'] = 'application/json'})
end
