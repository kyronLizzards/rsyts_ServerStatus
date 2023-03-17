# Funcionamiento

1. Crea una webhook en Discord para recibir las actualizaciones. Para ello, ve a la configuración del canal de Discord donde deseas recibir las actualizaciones, en el apartado de Integraciones crea una nueva webhook. Copia el URL de la webhook, ya que lo necesitarás más adelante.
2. Descarga los archivos .lua
3. Coloca ambos archivos en la carpeta /resources/rsyts_ServerStatus/ del servidor de FiveM.
4. Abre el archivo rsyts_message.lua y reemplaza "webhook URL" con el URL de la webhook que creaste anteriormente.
5. Reinicia el servidor de FiveM.

Ahora deberías recibir actualizaciones de Discord cada minuto con información de tu servidor, y también recibirás un mensaje cada vez que el servidor se inicie, cierre o reinicie.

# Notas

1. Si deseas modificar la frecuencia de actualización de la Embed de Discord, puedes cambiar el valor del tiempo de espera en la línea Wait(60000) del archivo rsyts_status.lua. El valor está en milisegundos, por lo que 60000 representa 60 segundos (un minuto).
2. Si deseas personalizar el contenido de la Embed de Discord, puedes modificar la variable embed en el archivo rsyts_message.lua. Esta variable contiene el objeto de la Embed de Discord que se enviará a través de la webhook.
3. Este script utiliza la función PerformHttpRequest de FiveM para enviar mensajes a través de la webhook de Discord. Asegúrate de que esta función esté habilitada en tu servidor. Si no lo está, puedes habilitarla agregando la siguiente línea en el archivo server.cfg:

```lua
set sv_scriptHookAllowed 1
```
