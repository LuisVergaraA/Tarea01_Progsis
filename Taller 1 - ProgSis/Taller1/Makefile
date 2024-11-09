CC = gcc
CFLAGS = -Wall -g -O2
ASFLAGS = -S

SRCS = AreaPerimetro.c Datos.c Main.c SuperVolumen.c
OBJS = $(SRCS:.c=.o)
SFILES = $(SRCS:.c=.s)

EXEC = programa

all: $(EXEC)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.s: %.c
	$(CC) $(ASFLAGS) $< -o $@

$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)

clean:
	rm -f $(OBJS) $(SFILES) $(EXEC)

cleanobjs:
	rm -f $(OBJS) $(SFILES)
