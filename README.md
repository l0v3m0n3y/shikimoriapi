# shikimoriapi
api for shikimori.one anime and manga site 
# Example
```nim
import asyncdispatch, shikimoriapi, json, strutils
let data = waitFor get_animes()
echo data
```

# Launch (your script)
```
nim c -d:ssl -r  your_app.nim
```
