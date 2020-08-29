# Makefile for porting FreeRTOS to SoC101

GCC = riscv32-unknown-elf-gcc
ASM = riscv32-unknown-elf-as

OBJCOPY = riscv32-unknown-elf-objcopy

SRC = ./src/main.c

TP1_SRC = ./asm/TP1.asm
TP2_SRC = ./asm/TP2.asm
TP3_SRC = ./asm/TP3.asm


Software101: main.o
	$(OBJCOPY) -O ihex main.o main.hex

main.o:
	$(GCC) -c $(SRC) -o main.o

TP1:
	$(ASM) $(TP1_SRC) -o obj/TP1
	$(OBJCOPY) -O verilog obj/TP1 hex/tp1.hex
	cp hex/tp1.hex ../Core101/rtl/MEM/tp1.hex

TP2:
	$(ASM) $(TP2_SRC) -o obj/TP2
	$(OBJCOPY) -O verilog obj/TP2 hex/tp2.hex
	cp hex/tp2.hex ../Core101/rtl/MEM/tp2.hex

TP3:
	$(ASM) $(TP3_SRC) -o obj/TP3
	$(OBJCOPY) -O verilog obj/TP3 hex/tp3.hex
	cp hex/tp3.hex ../Core101/rtl/MEM/tp3.hex

TP_JAL:
	$(ASM) asm/TP_JAL.asm -o obj/TP_JAL
	$(OBJCOPY) -O verilog obj/TP_JAL hex/tp_jal.hex
	cp hex/tp_jal.hex ../Core101/rtl/MEM/tp_jal.hex
