![logo alpha](https://github.com/lostyawolfer/lostyas_tag/assets/76567738/f17ea42a-0d5c-4c98-8b39-d61e48bb532c)
# ⚠️⚠️⚠️ THE GAME IS IN UNPLAYABLE STATE
as of 5 dec 2024 i ONLY STARTED porting everything and THERE IS NO CODE AT ALL.
if you download right now you will just have a WORLD TO BUILD IN.
the maps are ported over to 1.21.3. no code present.
### minecraft: 1.21.3 // core: papermc 1.21.3 #80
a minigame about chasing people around. this is an early alpha, most of the stuff requires admin interaction to happen

pls contribute i write code like garbage


# build instructions
after cloning the repo,
1. launch bindownload.py with python3
2. open cmd in the folder that you cloned the repo into
3. `java -Xmx512M -Xms512M -jar server.jar nogui`
4. open the newly created file "eula.txt" and accept minecraft's EULA

now you're good to go. when you run the command from step 3 again, the server will fully launch, ready to be joined.

don't forget to set the port you want to use yourself in `server.properties`. default port is `20189`

join the server yourself from the same machine via `127.0.0.1:20189` or `127.0.0.1:<port>` if you changed it

### recommended to do if you're going to use the server often
**create a script that will run the before mentioned starting command**

example script i use myself:
```
@echo OFF
title lostya's tag
echo Starting...
java -Xmx512M -Xms512M -jar server.jar nogui
```