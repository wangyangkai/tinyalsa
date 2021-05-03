CC=/opt/toolchain/arm-cortex_a8-linux-gnueabi-4.9.3/bin/arm-cortex_a8-linux-gnueabi-gcc

ALL: tinyplay tinycap tinypcminfo tinymix tinyhostless

tinyplay : tinyplay.c
	$(CC) -Wall  -I./include pcm.c tinyplay.c -o tinyplay

tinycap : tinycap.c
	$(CC) -Wall  -I./include pcm.c tinycap.c -o tinycap

tinypcminfo : tinypcminfo.c
	$(CC) -Wall  -I./include pcm.c tinypcminfo.c -o tinypcminfo

tinymix : tinymix.c
	$(CC) -std=c99 -Wall -I./include pcm.c mixer.c tinymix.c -o tinymix

tinyhostless : tinyhostless.c
	$(CC) -std=c99 -Wall -I./include pcm.c tinyhostless.c -o tinyhostless

clean:
	rm  tinyplay tinycap tinypcminfo tinymix tinyhostless

