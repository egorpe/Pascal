NAME=hello

FPC=fpc
FPFLAGS=-a
RM=rm
STRIP=strip
BUILDDIR=build

all: $(NAME) strip

$(NAME): prepare
	$(FPC) $(FPFLAGS) -FE$(BUILDDIR) $(NAME).pas
	
.PHONY: strip prepare clean run

strip:
	$(STRIP) $(BUILDDIR)/$(NAME)

prepare:
	mkdir -p $(BUILDDIR)

clean:
	$(RM) -rf $(BUILDDIR)

run:
	$(BUILDDIR)/$(NAME)