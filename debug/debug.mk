LIB = $(MAKE_DIR)/libs/libdebug.a
SRCS = $(wildcard *.c)
OBJS = $(patsubst %.c, %.o, $(SRCS))

$(LIB): $(OBJS)
	@mkdir -p ../libs
	@$(AR) cr $@ $^
	@echo " 	Archive 	$(notdir $@)"

$(OBJS): $(SRCS)
	@$(CC) $(CFLAGS) -c $^
	@echo " 	CC 		$(OBJS)"

.PHONY: clean

clean:
	@$(RM) -f $(LIB) $(OBJS)
	@$(RM) -f *.expand
	@echo " 	Remove Objects: 	$(OBJS)"
