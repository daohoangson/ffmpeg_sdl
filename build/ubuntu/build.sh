gcc -g -o ffmpeg_sdl ../../src/ffmpeg_sdl.c \
	-I"../../lib/ffmpeg/include" -I"../../lib/sdl/include" -D_GNU_SOURCE=1 -D_REENTRANT \
	-L"../../lib/ffmpeg/lib-ubuntu" -lavformat -lavcodec -lavutil -lswscale -lswresample \
	-L"../../lib/sdl/lib-linux" -Wl,-rpath,"../../lib/sdl/lib-linux" -lSDL -lpthread -lm -ldl -lpthread \
	-DHAVE_ATOI -DHAVE_GETENV
chmod u+x ffmpeg_sdl
