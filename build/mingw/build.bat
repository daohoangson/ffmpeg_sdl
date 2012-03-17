gcc -g -o ffmpeg_sdl.exe ../../src/ffmpeg_sdl.c -I"../../lib/ffmpeg/include" -I"../../lib/sdl/include" -L"../../lib/ffmpeg/lib-win" -lavcodec -lavformat -lavutil -lswscale -lswresample -L"../../lib/sdl/lib-mingw" -lSDLmain -lSDL
cp ../../lib/ffmpeg/lib-win/*.dll .
cp ../../lib/sdl/lib-mingw/*.dll .