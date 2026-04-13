
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
  1c:	80028293          	addi	t0,t0,-2048 # 1800 <__fini_array_end+0x1500>
  20:	30029073          	csrw	mstatus,t0
  24:	00000317          	auipc	t1,0x0
  28:	19030313          	addi	t1,t1,400 # 1b4 <__crt0_panic>
  2c:	30531073          	csrw	mtvec,t1
  30:	30401073          	csrw	mie,zero
  34:	00000397          	auipc	t2,0x0
  38:	2cc38393          	addi	t2,t2,716 # 300 <__fini_array_end>
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
 120:	1e440413          	addi	s0,s0,484 # 300 <__fini_array_end>
 124:	00000497          	auipc	s1,0x0
 128:	1dc48493          	addi	s1,s1,476 # 300 <__fini_array_end>

0000012c <__crt0_constructors>:
 12c:	00945a63          	bge	s0,s1,140 <__crt0_constructors_end>
 130:	00042083          	lw	ra,0(s0)
 134:	000080e7          	jalr	ra
 138:	00440413          	addi	s0,s0,4
 13c:	ff1ff06f          	j	12c <__crt0_constructors>

00000140 <__crt0_constructors_end>:
 140:	00000617          	auipc	a2,0x0
 144:	08c60613          	addi	a2,a2,140 # 1cc <main>

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
 180:	18440413          	addi	s0,s0,388 # 300 <__fini_array_end>
 184:	00000497          	auipc	s1,0x0
 188:	17c48493          	addi	s1,s1,380 # 300 <__fini_array_end>

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

000001bc <delay_ms>:
/**********************************************************************//**
 * Get current processor clock frequency.
 * @return Clock frequency in Hz.
 **************************************************************************/
inline uint32_t __attribute__ ((always_inline)) neorv32_sysinfo_get_clk(void) {
  return NEORV32_SYSINFO->CLK;
 1bc:	fffe07b7          	lui	a5,0xfffe0
/**********************************************************************//**
 * Simple bus-wait helper.
 *
 * @param[in] time_ms Time in ms to wait (unsigned 32-bit).
 **************************************************************************/
void delay_ms(uint32_t time_ms) {
 1c0:	00050593          	mv	a1,a0
 1c4:	0007a503          	lw	a0,0(a5) # fffe0000 <__crt0_ram_last+0x7ffde001>
  neorv32_aux_delay_ms(neorv32_sysinfo_get_clk(), time_ms);
 1c8:	0340006f          	j	1fc <neorv32_aux_delay_ms>

000001cc <main>:
 *
 * @note This program requires the GPIO controller to be synthesized.
 *
 * @return Will never return.
 **************************************************************************/
int main() {
 1cc:	ff010113          	addi	sp,sp,-16

  // clear GPIO output (set all bits to 0)
  neorv32_gpio_port_set(0);
 1d0:	00000513          	li	a0,0
int main() {
 1d4:	00812423          	sw	s0,8(sp)
 1d8:	00112623          	sw	ra,12(sp)

  int cnt = 0;
 1dc:	00000413          	li	s0,0
  neorv32_gpio_port_set(0);
 1e0:	064000ef          	jal	244 <neorv32_gpio_port_set>

  while (1) {
    neorv32_gpio_port_set(cnt++ & 0xFF); // increment counter and mask for lowest 8 bit
 1e4:	0ff47513          	zext.b	a0,s0
 1e8:	05c000ef          	jal	244 <neorv32_gpio_port_set>
    delay_ms(250); // wait 250ms using busy wait
 1ec:	0fa00513          	li	a0,250
 1f0:	fcdff0ef          	jal	1bc <delay_ms>
    neorv32_gpio_port_set(cnt++ & 0xFF); // increment counter and mask for lowest 8 bit
 1f4:	00140413          	addi	s0,s0,1
 1f8:	fedff06f          	j	1e4 <main+0x18>

000001fc <neorv32_aux_delay_ms>:
 * @warning Timing is imprecise! Use CLINT.MTIME or CYCLE CSRs for precise timing.
 *
 * @param[in] clock_hz CPU clock speed in Hz.
 * @param[in] time_ms Time in ms to wait (unsigned 32-bit).
 **************************************************************************/
void neorv32_aux_delay_ms(uint32_t clock_hz, uint32_t time_ms) {
 1fc:	ff010113          	addi	sp,sp,-16
 200:	00058613          	mv	a2,a1

  // clock ticks per ms (avoid division, therefore shift by 10 instead dividing by 1000)
  uint32_t ms_ticks = clock_hz >> 10;
  uint64_t wait_cycles = ((uint64_t)ms_ticks) * ((uint64_t)time_ms);
 204:	00000693          	li	a3,0
 208:	00a55513          	srli	a0,a0,0xa
 20c:	00000593          	li	a1,0
void neorv32_aux_delay_ms(uint32_t clock_hz, uint32_t time_ms) {
 210:	00112623          	sw	ra,12(sp)
  uint64_t wait_cycles = ((uint64_t)ms_ticks) * ((uint64_t)time_ms);
 214:	060000ef          	jal	274 <__muldi3>
  // divide by clock cycles per iteration of the ASM loop (16 = shift by 4)
  uint32_t iterations = (uint32_t)(wait_cycles >> 4);
 218:	01c59593          	slli	a1,a1,0x1c
 21c:	00455513          	srli	a0,a0,0x4
 220:	00a58533          	add	a0,a1,a0

00000224 <__neorv32_aux_delay_ms_start>:

  asm volatile (
 224:	00050a63          	beqz	a0,238 <__neorv32_aux_delay_ms_end>
 228:	00001863          	bnez	zero,238 <__neorv32_aux_delay_ms_end>
 22c:	fff50513          	addi	a0,a0,-1
 230:	00000013          	nop
 234:	ff1ff06f          	j	224 <__neorv32_aux_delay_ms_start>

00000238 <__neorv32_aux_delay_ms_end>:
    " nop                                             \n" // 2 cycles
    " j    __neorv32_aux_delay_ms_start               \n" // 6 cycles
    " __neorv32_aux_delay_ms_end:                     \n"
    : [cnt_w] "=r" (iterations) : [cnt_r] "r" (iterations)
  );
}
 238:	00c12083          	lw	ra,12(sp)
 23c:	01010113          	addi	sp,sp,16
 240:	00008067          	ret

00000244 <neorv32_gpio_port_set>:
 *
 * @param[in] pin_mask New output port value (32-bit).
 **************************************************************************/
void neorv32_gpio_port_set(uint32_t pin_mask) {

  NEORV32_GPIO->PORT_OUT = pin_mask;
 244:	fffc07b7          	lui	a5,0xfffc0
 248:	00a7a223          	sw	a0,4(a5) # fffc0004 <__crt0_ram_last+0x7ffbe005>
}
 24c:	00008067          	ret

00000250 <__mulsi3>:
/* Our RV64 64-bit routine is equivalent to our RV32 32-bit routine.  */
# define __muldi3 __mulsi3
#endif

FUNC_BEGIN (__muldi3)
  mv     a2, a0
 250:	00050613          	mv	a2,a0
  li     a0, 0
 254:	00000513          	li	a0,0
.L1:
  andi   a3, a1, 1
 258:	0015f693          	andi	a3,a1,1
  beqz   a3, .L2
 25c:	00068463          	beqz	a3,264 <__mulsi3+0x14>
  add    a0, a0, a2
 260:	00c50533          	add	a0,a0,a2
.L2:
  srli   a1, a1, 1
 264:	0015d593          	srli	a1,a1,0x1
  slli   a2, a2, 1
 268:	00161613          	slli	a2,a2,0x1
  bnez   a1, .L1
 26c:	fe0596e3          	bnez	a1,258 <__mulsi3+0x8>
  ret
 270:	00008067          	ret

00000274 <__muldi3>:
# define __multi3 __muldi3
#endif

DWtype
__multi3 (DWtype u, DWtype v)
{
 274:	ff010113          	addi	sp,sp,-16
 278:	00068313          	mv	t1,a3
 27c:	00112623          	sw	ra,12(sp)
 280:	00050e13          	mv	t3,a0
  const DWunion uu = {.ll = u};
  const DWunion vv = {.ll = v};
  DWunion w;
  UWtype u_low = uu.s.low;
 284:	00050693          	mv	a3,a0
  UWtype v_low = vv.s.low;
 288:	00060893          	mv	a7,a2
  UWtype u_low_msb;
  UWtype w_low = 0;
  UWtype new_w_low;
  UWtype w_high = 0;
  UWtype w_high_tmp = 0;
 28c:	00000713          	li	a4,0
  UWtype w_high = 0;
 290:	00000793          	li	a5,0
  UWtype w_low = 0;
 294:	00000813          	li	a6,0
  do
    {
      new_w_low = w_low + u_low;
      w_high_tmp2x = w_high_tmp << 1;
      w_high_tmp += w_high;
      if (v_low & 1)
 298:	0018fe93          	andi	t4,a7,1
      w_high_tmp2x = w_high_tmp << 1;
 29c:	00171513          	slli	a0,a4,0x1
      if (v_low & 1)
 2a0:	000e8a63          	beqz	t4,2b4 <__muldi3+0x40>
 2a4:	01068833          	add	a6,a3,a6
      w_high_tmp += w_high;
 2a8:	00e787b3          	add	a5,a5,a4
	{
	  carry = new_w_low < w_low;
 2ac:	00d83733          	sltu	a4,a6,a3
	  w_low = new_w_low;
	  w_high = carry + w_high_tmp;
 2b0:	00f707b3          	add	a5,a4,a5
	}
      u_low_msb = (u_low >> ((sizeof (UWtype) * 8) - 1));
 2b4:	01f6d713          	srli	a4,a3,0x1f
      v_low >>= 1;
 2b8:	0018d893          	srli	a7,a7,0x1
      u_low <<= 1;
      w_high_tmp = u_low_msb | w_high_tmp2x;
 2bc:	00e56733          	or	a4,a0,a4
 2c0:	00169693          	slli	a3,a3,0x1
    }
  while (v_low);
 2c4:	fc089ae3          	bnez	a7,298 <__muldi3+0x24>

  w.s.low = w_low;
  w.s.high = w_high;

  if (uu.s.high)
 2c8:	00058863          	beqz	a1,2d8 <__muldi3+0x64>
    w.s.high = w.s.high + __muluw3(vv.s.low, uu.s.high);
 2cc:	00060513          	mv	a0,a2
 2d0:	f81ff0ef          	jal	250 <__mulsi3>
 2d4:	00a787b3          	add	a5,a5,a0

  if (vv.s.high)
 2d8:	00030a63          	beqz	t1,2ec <__muldi3+0x78>
    w.s.high += __muluw3(uu.s.low, vv.s.high);
 2dc:	000e0513          	mv	a0,t3
 2e0:	00030593          	mv	a1,t1
 2e4:	f6dff0ef          	jal	250 <__mulsi3>
 2e8:	00f507b3          	add	a5,a0,a5

  return w.ll;
}
 2ec:	00c12083          	lw	ra,12(sp)
 2f0:	00080513          	mv	a0,a6
 2f4:	00078593          	mv	a1,a5
 2f8:	01010113          	addi	sp,sp,16
 2fc:	00008067          	ret
