gcc -g -o ffmpeg_sdl \
	-I"../../lib/ffmpeg/include" -I"../../lib/sdl/include" \
	-L"../../lib/ffmpeg/lib-macosx" -lavcodec -lavformat -lavutil -lswscale \
	-lz -lm -lbz2 -framework VideoDecodeAcceleration -framework QuartzCore \
	-L"../../lib/sdl/lib-macosx" -lSDLmain -lSDL \
	-L/usr/X11/lib -lX11 \
	-lXext -lXrandr -lXrender -Wl,-framework,OpenGL -Wl,-framework,Cocoa -Wl,-framework,ApplicationServices -Wl,-framework,Carbon -Wl,-framework,AudioToolbox -Wl,-framework,AudioUnit -Wl,-framework,IOKit \
	../../src/ffmpeg_sdl.c
chmod u+x ffmpeg_sdl