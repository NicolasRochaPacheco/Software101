# Makefile for porting FreeRTOS to SoC101

GCC = riscv32-unknown-elf-gcc
ASM = riscv32-unknown-elf-as

OBJCOPY = riscv32-unknown-elf-objcopy

SRC = ./src/main.c

TP1_SRC = ./asm/TP1.asm
TP2_SRC = ./asm/TP2.asm


Software101: main.o
	$(OBJCOPY) -O ihex main.o main.hex

main.o:
	$(GCC) -c $(SRC) -o main.o

TP1:
	$(ASM) $(TP1_SRC) -o obj/TP1
	$(OBJCOPY) -O verilog obj/TP1 hex/tp1.hex

TP2:
	$(ASM) $(TP2_SRC) -o obj/test2
	$(OBJCOPY) -O verilog obj/test2 hex/tp2.hex
