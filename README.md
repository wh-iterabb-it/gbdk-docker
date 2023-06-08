# wh-iterabb-it/gbdk-docker

### Usage 

#### Compile files into .gb

Using this docker image in your project directory, you can build a Gameboy ROM using DSCC and GBDK using the following commands.


```bash
$ docker pull wh-iterabb-it/gbdk-docker
$ docker run -it --rm -v `pwd`:/gbdk wh-iterabb-it/gbdk-docker /opt/gbdk/bin/lcc -o /gbdk/your_rom.gb /gbdk/your_game.c
$ open your_rom.gb
```
