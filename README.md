# Juego de Rol Roblox: Humanos y Mascotas

Este proyecto permite a los jugadores elegir entre ser un humano, un perro o un gato al ingresar al juego. Al seleccionar una opción, se les asigna un modelo personalizado.

## Estructura del Proyecto

- `ServerScripts/DisableAutoLoad.lua`: Desactiva la carga automática del personaje.
- `ServerScripts/CharacterLoader.lua`: Carga el modelo seleccionado por el jugador.
- `LocalScripts/CharacterSelectorGui.lua`: GUI con botones para elegir personaje.
- Los modelos `HumanCharacter`, `DogCharacter` y `CatCharacter` deben colocarse dentro de `ServerStorage`.

## Instrucciones

1. Pegá los scripts en sus ubicaciones correspondientes dentro de Roblox Studio.
2. Guardá modelos en `ServerStorage` con los nombres exactos.
3. Ejecutá el juego en modo Play para probar.
