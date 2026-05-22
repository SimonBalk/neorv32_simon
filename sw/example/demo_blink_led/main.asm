
main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__crt0_entry>:
   0:	f14020f3          	csrr	ra,mhartid
   4:	80002217          	auipc	tp,0x80002
   8:	ffb20213          	addi	tp,tp,-5 # 80001fff <__crt0_ram_last>
   c:	ff027113          	andi	sp,tp,-16
  10:	80000197          	auipc	gp,0x80000
  14:	7f018193          	addi	gp,gp,2032 # 80000800 <__global_pointer>
  18:	000022b7          	lui	t0,0x2
  1c:	80028293          	addi	t0,t0,-2048 # 1800 <__fini_array_end+0x161c>
  20:	30029073          	csrw	mstatus,t0
  24:	00000317          	auipc	t1,0x0
  28:	19030313          	addi	t1,t1,400 # 1b4 <__crt0_panic>
  2c:	30531073          	csrw	mtvec,t1
  30:	30401073          	csrw	mie,zero
  34:	00000397          	auipc	t2,0x0
  38:	1b038393          	addi	t2,t2,432 # 1e4 <__fini_array_end>
  3c:	80000417          	auipc	s0,0x80000
  40:	fc440413          	addi	s0,s0,-60 # 80000000 <__crt0_bss_end>
  44:	80000497          	auipc	s1,0x80000
  48:	fbc48493          	addi	s1,s1,-68 # 80000000 <__crt0_bss_end>
  4c:	80000517          	auipc	a0,0x80000
  50:	fb450513          	addi	a0,a0,-76 # 80000000 <__crt0_bss_end>
  54:	80000597          	auipc	a1,0x80000
  58:	fac58593          	addi	a1,a1,-84 # 80000000 <__crt0_bss_end>
  5c:	00000613          	li	a2,0
  60:	00000693          	li	a3,0
  64:	00000713          	li	a4,0
  68:	00000793          	li	a5,0
  6c:	00000813          	li	a6,0
  70:	00000893          	li	a7,0
  74:	00000913          	li	s2,0
  78:	00000993          	li	s3,0
  7c:	00000a13          	li	s4,0
  80:	00000a93          	li	s5,0
  84:	00000b13          	li	s6,0
  88:	00000b93          	li	s7,0
  8c:	00000c13          	li	s8,0
  90:	00000c93          	li	s9,0
  94:	00000d13          	li	s10,0
  98:	00000d93          	li	s11,0
  9c:	00000e13          	li	t3,0
  a0:	00000e93          	li	t4,0
  a4:	00000f13          	li	t5,0
  a8:	00000f93          	li	t6,0

000000ac <__crt0_smp_check>:
  ac:	04008263          	beqz	ra,f0 <__crt0_data_init>

000000b0 <__crt0_smp_setup>:
  b0:	00000797          	auipc	a5,0x0
  b4:	01c78793          	addi	a5,a5,28 # cc <__crt0_smp_wakeup>
  b8:	30579073          	csrw	mtvec,a5
  bc:	30445073          	csrwi	mie,8
  c0:	30046073          	csrsi	mstatus,8

000000c4 <__crt0_smp_sleep>:
  c4:	10500073          	wfi
  c8:	ffdff06f          	j	c4 <__crt0_smp_sleep>

000000cc <__crt0_smp_wakeup>:
  cc:	00000797          	auipc	a5,0x0
  d0:	0e878793          	addi	a5,a5,232 # 1b4 <__crt0_panic>
  d4:	30579073          	csrw	mtvec,a5
  d8:	fff44737          	lui	a4,0xfff44
  dc:	00872103          	lw	sp,8(a4) # fff44008 <__crt0_ram_last+0x7ff42009>
  e0:	00c72603          	lw	a2,12(a4)
  e4:	fff40737          	lui	a4,0xfff40
  e8:	00072223          	sw	zero,4(a4) # fff40004 <__crt0_ram_last+0x7ff3e005>
  ec:	05c0006f          	j	148 <__crt0_main_entry>

000000f0 <__crt0_data_init>:
  f0:	00838e63          	beq	t2,s0,10c <__crt0_bss_clear>

000000f4 <__crt0_data_copy>:
  f4:	00945c63          	bge	s0,s1,10c <__crt0_bss_clear>
  f8:	0003a783          	lw	a5,0(t2)
  fc:	00f42023          	sw	a5,0(s0)
 100:	00438393          	addi	t2,t2,4
 104:	00440413          	addi	s0,s0,4
 108:	fedff06f          	j	f4 <__crt0_data_copy>

0000010c <__crt0_bss_clear>:
 10c:	00b55863          	bge	a0,a1,11c <__crt0_bss_clear_end>
 110:	00052023          	sw	zero,0(a0)
 114:	00450513          	addi	a0,a0,4
 118:	ff5ff06f          	j	10c <__crt0_bss_clear>

0000011c <__crt0_bss_clear_end>:
 11c:	00000417          	auipc	s0,0x0
 120:	0c840413          	addi	s0,s0,200 # 1e4 <__fini_array_end>
 124:	00000497          	auipc	s1,0x0
 128:	0c048493          	addi	s1,s1,192 # 1e4 <__fini_array_end>

0000012c <__crt0_constructors>:
 12c:	00945a63          	bge	s0,s1,140 <__crt0_constructors_end>
 130:	00042083          	lw	ra,0(s0)
 134:	000080e7          	jalr	ra
 138:	00440413          	addi	s0,s0,4
 13c:	ff1ff06f          	j	12c <__crt0_constructors>

00000140 <__crt0_constructors_end>:
 140:	00000617          	auipc	a2,0x0
 144:	07c60613          	addi	a2,a2,124 # 1bc <main>

00000148 <__crt0_main_entry>:
 148:	0ff0000f          	fence
 14c:	0000100f          	fence.i
 150:	00000513          	li	a0,0
 154:	00000593          	li	a1,0
 158:	000600e7          	jalr	a2

0000015c <__crt0_main_exit>:
 15c:	30047073          	csrci	mstatus,8
 160:	30401073          	csrw	mie,zero
 164:	00000597          	auipc	a1,0x0
 168:	05058593          	addi	a1,a1,80 # 1b4 <__crt0_panic>
 16c:	30559073          	csrw	mtvec,a1
 170:	34051073          	csrw	mscratch,a0

00000174 <__crt0_destructors_primary>:
 174:	f1402473          	csrr	s0,mhartid
 178:	02041463          	bnez	s0,1a0 <__crt0_destructors_end>
 17c:	00000417          	auipc	s0,0x0
 180:	06840413          	addi	s0,s0,104 # 1e4 <__fini_array_end>
 184:	00000497          	auipc	s1,0x0
 188:	06048493          	addi	s1,s1,96 # 1e4 <__fini_array_end>

0000018c <__crt0_destructors>:
 18c:	00945a63          	bge	s0,s1,1a0 <__crt0_destructors_end>
 190:	00042083          	lw	ra,0(s0)
 194:	000080e7          	jalr	ra
 198:	00440413          	addi	s0,s0,4
 19c:	ff1ff06f          	j	18c <__crt0_destructors>

000001a0 <__crt0_destructors_end>:
 1a0:	f1402473          	csrr	s0,mhartid
 1a4:	00041463          	bnez	s0,1ac <__crt0_halt>

000001a8 <__crt0_halt_primary>:
 1a8:	00100073          	ebreak

000001ac <__crt0_halt>:
 1ac:	10500073          	wfi
 1b0:	ffdff06f          	j	1ac <__crt0_halt>

000001b4 <__crt0_panic>:
 1b4:	10500073          	wfi
 1b8:	ffdff06f          	j	1b4 <__crt0_panic>

000001bc <main>:
}

/**********************************************************************//**
 * Main function
 **************************************************************************/
int main() {
 1bc:	ff010113          	addi	sp,sp,-16
 1c0:	00112623          	sw	ra,12(sp)
 1c4:	00812423          	sw	s0,8(sp)
 1c8:	01010413          	addi	s0,sp,16

  register uint32_t r0 asm("t0");
  register uint32_t r1 asm("t1");

  while (1) {
    r0 = 0xFFFF;
 1cc:	000107b7          	lui	a5,0x10
 1d0:	fff78293          	addi	t0,a5,-1 # ffff <__neorv32_rom_size+0xbfff>
    r1 = 0xDDDD;
 1d4:	0000e7b7          	lui	a5,0xe
 1d8:	ddd78313          	addi	t1,a5,-547 # dddd <__neorv32_rom_size+0x9ddd>
    r0 = 0xFFFF;
 1dc:	00000013          	nop
 1e0:	fedff06f          	j	1cc <main+0x10>
