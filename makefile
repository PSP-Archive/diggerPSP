TARGET = DiggerPSP

OBJS	= main.o digger.o drawing.o sprite.o scores.o record.o sound.o \
			newsnd.o ini.o input.o monster.o bags.o alpha.o vgagrafx.o \
			title_gz.o icon.o sdl_kbd.o sdl_vid.o sdl_timer.o sdl_snd.o

CFLAGS = -O2 -G0 -Wall -DFLATFILE -D_PSP -D_SDL
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBDIR =
LDFLAGS =

EXTRA_TARGETS = EBOOT.PBP

PSP_DIR_NAME = DiggerPSP
PSP_EBOOT_SFO = param.sfo
PSP_EBOOT_TITLE = DiggerPSP
PSP_EBOOT = EBOOT.PBP
PSP_EBOOT_ICON = icon0.png
PSP_EBOOT_ICON1 = NULL
PSP_EBOOT_PIC0 = NULL
PSP_EBOOT_PIC1 = NULL
PSP_EBOOT_SND0 = NULL
PSP_EBOOT_PSAR = NULL
BUILD_PRX = 1
PSP_FW_VERSION = 371

PSPSDK=$(shell psp-config --pspsdk-path)
PSPBIN = $(PSPSDK)/../bin
CFLAGS += $(shell $(PSPBIN)/sdl-config --cflags)
LIBS += $(shell $(PSPBIN)/sdl-config --libs) -lz
include $(PSPSDK)/lib/build.mak