#  Personal Minecraft Server Starter Kit - nfal

PapermC-Spigot.

## Pre

download java. recommendation using java sdk manager: 
- sdkman - https://sdkman.io/

## StartServer

download papermc latest build

```
bash download-latest-stable-build.sh
```

change motd on server.properties if you want

```
motd=§c§kXXX§r §f§o§lKamu Gabut? §r§2mabar donk di §9§lIDG\:IDN-Gabut §c§r§kXXX§r
```

on `config/paper-global.yml` customize `chunk-system.io-threads` and `chunky-system.worker-threads` to match your cpu core threads or match your need

```
chunk-system:
  gen-parallelism: default
  io-threads: 6
  worker-threads: 6
```

set limit for ram usage runserver.sh by change `-Xms` and `-Xmx` to match your need in MB (4096M,1024M) or generate new bash script using on https://flags.sh/

start server by executing runserver.sh

```
bash runserver.sh
```
