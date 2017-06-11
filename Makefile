MAKE_DIR = $(PWD)

ROOT_DIR := $(MAKE_DIR)/root
DRV_DIR := $(MAKE_DIR)/driver
INCLUDE_DIR := $(MAKE_DIR)/include
DEBUG_DIR := $(MAKE_DIR)/debug
MW_DIR := $(MAKE_DIR)/mw

INC_SRCH_PATH :=
INC_SRCH_PATH += -I$(ROOT_DIR)
INC_SRCH_PATH += -I$(DRV_DIR)
INC_SRCH_PATH += -I$(INCLUDE_DIR)
INC_SRCH_PATH += -I$(DEBUG_DIR)
INC_SRCH_PATH += -I$(MW_DIR)

LIB_SRCH_PATH := 
LIB_SRCH_PATH += -L$(MAKE_DIR)/libs

#COLOR_ON = color
COLOR_OFF = 
#CC = $(COLOR_ON)gcc
CC = $(COLOR_OFF)gcc
LD = ld


LINT = splint

LIBS := -ldriver -ldebug -lmw -lm -lpthread

CFLAGS :=
CFLAGS += $(INC_SRCH_PATH) $(LIB_SRCH_PATH)
CFLAGS += -Wall -O -ggdb -Wstrict-prototypes -Wno-pointer-sign -finstrument-functions -fdump-rtl-expand
CFLAGS += -DDEBUG -D_REENTRANT

LDFLAGS :=

export MAKE_DIR CC LD CFLAGS LDFLAGS LIBS LINT INC_SRCH_PATH

all:
	@$(MAKE) -C debug -f debug.mk
	@$(MAKE) -C driver -f driver.mk
	@$(MAKE) -C mw -f mw.mk
	@$(MAKE) -C root -f root.mk

.PHONY: clean

clean:
	@$(MAKE) -C debug -f debug.mk clean
	@$(MAKE) -C driver -f driver.mk clean
	@$(MAKE) -C mw -f mw.mk clean
	@$(MAKE) -C root -f root.mk clean
	

