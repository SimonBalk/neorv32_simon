
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
  1c:	80028293          	addi	t0,t0,-2048 # 1800 <__crt0_copy_data_src_begin+0x2a8>
  20:	30029073          	csrw	mstatus,t0
  24:	00000317          	auipc	t1,0x0
  28:	19030313          	addi	t1,t1,400 # 1b4 <__crt0_panic>
  2c:	30531073          	csrw	mtvec,t1
  30:	30401073          	csrw	mie,zero
  34:	00001397          	auipc	t2,0x1
  38:	52438393          	addi	t2,t2,1316 # 1558 <__crt0_copy_data_src_begin>
  3c:	80000417          	auipc	s0,0x80000
  40:	fc440413          	addi	s0,s0,-60 # 80000000 <__neorv32_rte_vector_lut>
  44:	80000497          	auipc	s1,0x80000
  48:	fbc48493          	addi	s1,s1,-68 # 80000000 <__neorv32_rte_vector_lut>
  4c:	80000517          	auipc	a0,0x80000
  50:	fb450513          	addi	a0,a0,-76 # 80000000 <__neorv32_rte_vector_lut>
  54:	80000597          	auipc	a1,0x80000
  58:	0ac58593          	addi	a1,a1,172 # 80000100 <__crt0_bss_end>
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
 11c:	00001417          	auipc	s0,0x1
 120:	a6040413          	addi	s0,s0,-1440 # b7c <__fini_array_end>
 124:	00001497          	auipc	s1,0x1
 128:	a5848493          	addi	s1,s1,-1448 # b7c <__fini_array_end>

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
 17c:	00001417          	auipc	s0,0x1
 180:	a0040413          	addi	s0,s0,-1536 # b7c <__fini_array_end>
 184:	00001497          	auipc	s1,0x1
 188:	9f848493          	addi	s1,s1,-1544 # b7c <__fini_array_end>

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
 *
 * @note This program requires the UART interface to be synthesized.
 *
 * @return 0 if execution was successful
 **************************************************************************/
int main() {
 1bc:	ff010113          	addi	sp,sp,-16
 1c0:	00112623          	sw	ra,12(sp)

  // capture all exceptions and give debug info via UART
  // this is not required, but keeps us safe
  neorv32_rte_setup();
 1c4:	62c000ef          	jal	7f0 <neorv32_rte_setup>

  // setup UART at default baud rate, no interrupts
  neorv32_uart0_setup(BAUD_RATE, 0);
 1c8:	000055b7          	lui	a1,0x5
 1cc:	00000613          	li	a2,0
 1d0:	b0058593          	addi	a1,a1,-1280 # 4b00 <__neorv32_rom_size+0xb00>
 1d4:	fff50537          	lui	a0,0xfff50
 1d8:	6b8000ef          	jal	890 <neorv32_uart_setup>

  // print project logo via UART
  neorv32_aux_print_logo();
 1dc:	024000ef          	jal	200 <neorv32_aux_print_logo>

  // say hello
  neorv32_uart0_puts("Hello world! :)\n");
 1e0:	000015b7          	lui	a1,0x1
 1e4:	fff50537          	lui	a0,0xfff50
 1e8:	b7c58593          	addi	a1,a1,-1156 # b7c <__fini_array_end>
 1ec:	74c000ef          	jal	938 <neorv32_uart_puts>


  return 0;
}
 1f0:	00c12083          	lw	ra,12(sp)
 1f4:	00000513          	li	a0,0
 1f8:	01010113          	addi	sp,sp,16
 1fc:	00008067          	ret

00000200 <neorv32_aux_print_logo>:


/**********************************************************************//**
 * Print project logo via UART0.
 **************************************************************************/
void neorv32_aux_print_logo(void) {
 200:	f5010113          	addi	sp,sp,-176

  const uint16_t logo_c[9][7] = {
 204:	000015b7          	lui	a1,0x1
 208:	07e00613          	li	a2,126
 20c:	43458593          	addi	a1,a1,1076 # 1434 <__fini_array_end+0x8b8>
 210:	00010513          	mv	a0,sp
void neorv32_aux_print_logo(void) {
 214:	0a112623          	sw	ra,172(sp)
 218:	0a812423          	sw	s0,168(sp)
 21c:	0a912223          	sw	s1,164(sp)
 220:	0b212023          	sw	s2,160(sp)
 224:	09312e23          	sw	s3,156(sp)
 228:	09412c23          	sw	s4,152(sp)
 22c:	09512a23          	sw	s5,148(sp)
 230:	09612823          	sw	s6,144(sp)
 234:	09712623          	sw	s7,140(sp)
  const uint16_t logo_c[9][7] = {
 238:	768000ef          	jal	9a0 <memcpy>

  unsigned int x = 0, y = 0, z = 0;
  uint16_t tmp = 0;
  char c = 0;

  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
 23c:	fff50537          	lui	a0,0xfff50
 240:	614000ef          	jal	854 <neorv32_uart_available>
 244:	0a050463          	beqz	a0,2ec <neorv32_aux_print_logo+0xec>
 248:	00010413          	mv	s0,sp
 24c:	07e10b13          	addi	s6,sp,126
    for (y=0; y<(sizeof(logo_c) / sizeof(logo_c[0])); y++) {
      neorv32_uart0_puts("\n");
 250:	00001ab7          	lui	s5,0x1
      for (x=0; x<(sizeof(logo_c[0]) / sizeof(logo_c[0][0])); x++) {
 254:	00700b93          	li	s7,7
      neorv32_uart0_puts("\n");
 258:	000017b7          	lui	a5,0x1
 25c:	fd878593          	addi	a1,a5,-40 # fd8 <__fini_array_end+0x45c>
 260:	fff50537          	lui	a0,0xfff50
 264:	6d4000ef          	jal	938 <neorv32_uart_puts>
 268:	00040993          	mv	s3,s0
      for (x=0; x<(sizeof(logo_c[0]) / sizeof(logo_c[0][0])); x++) {
 26c:	00000913          	li	s2,0
        tmp = logo_c[y][x];
 270:	0009d483          	lhu	s1,0(s3)
 274:	01000a13          	li	s4,16
        for (z=0; z<(sizeof(logo_c[0][0])*8); z++){
          c = ' ';
 278:	01049793          	slli	a5,s1,0x10
 27c:	41f7d593          	srai	a1,a5,0x1f
 280:	0035f593          	andi	a1,a1,3
          if (((int16_t)tmp) < 0) { // check MSB
            c = '#';
          }
          neorv32_uart0_putc(c);
          tmp <<= 1;
 284:	00149493          	slli	s1,s1,0x1
          neorv32_uart0_putc(c);
 288:	02058593          	addi	a1,a1,32
 28c:	fff50537          	lui	a0,0xfff50
          tmp <<= 1;
 290:	01049493          	slli	s1,s1,0x10
        for (z=0; z<(sizeof(logo_c[0][0])*8); z++){
 294:	fffa0a13          	addi	s4,s4,-1
          neorv32_uart0_putc(c);
 298:	68c000ef          	jal	924 <neorv32_uart_putc>
          tmp <<= 1;
 29c:	0104d493          	srli	s1,s1,0x10
        for (z=0; z<(sizeof(logo_c[0][0])*8); z++){
 2a0:	fc0a1ce3          	bnez	s4,278 <neorv32_aux_print_logo+0x78>
      for (x=0; x<(sizeof(logo_c[0]) / sizeof(logo_c[0][0])); x++) {
 2a4:	00190913          	addi	s2,s2,1
 2a8:	00298993          	addi	s3,s3,2
 2ac:	fd7912e3          	bne	s2,s7,270 <neorv32_aux_print_logo+0x70>
    for (y=0; y<(sizeof(logo_c) / sizeof(logo_c[0])); y++) {
 2b0:	00e40413          	addi	s0,s0,14
 2b4:	fb6412e3          	bne	s0,s6,258 <neorv32_aux_print_logo+0x58>
        }
      }
    }
    neorv32_uart0_puts("\n");
  }
}
 2b8:	0a812403          	lw	s0,168(sp)
 2bc:	0ac12083          	lw	ra,172(sp)
 2c0:	0a412483          	lw	s1,164(sp)
 2c4:	0a012903          	lw	s2,160(sp)
 2c8:	09c12983          	lw	s3,156(sp)
 2cc:	09812a03          	lw	s4,152(sp)
 2d0:	09012b03          	lw	s6,144(sp)
 2d4:	08c12b83          	lw	s7,140(sp)
    neorv32_uart0_puts("\n");
 2d8:	fd8a8593          	addi	a1,s5,-40 # fd8 <__fini_array_end+0x45c>
}
 2dc:	09412a83          	lw	s5,148(sp)
    neorv32_uart0_puts("\n");
 2e0:	fff50537          	lui	a0,0xfff50
}
 2e4:	0b010113          	addi	sp,sp,176
    neorv32_uart0_puts("\n");
 2e8:	6500006f          	j	938 <neorv32_uart_puts>
}
 2ec:	0ac12083          	lw	ra,172(sp)
 2f0:	0a812403          	lw	s0,168(sp)
 2f4:	0a412483          	lw	s1,164(sp)
 2f8:	0a012903          	lw	s2,160(sp)
 2fc:	09c12983          	lw	s3,156(sp)
 300:	09812a03          	lw	s4,152(sp)
 304:	09412a83          	lw	s5,148(sp)
 308:	09012b03          	lw	s6,144(sp)
 30c:	08c12b83          	lw	s7,140(sp)
 310:	0b010113          	addi	sp,sp,176
 314:	00008067          	ret

00000318 <__neorv32_rte_core>:
/**********************************************************************//**
 * Core of the NEORV32 RTE (first-level trap handler).
 **************************************************************************/
static void __attribute__((naked,aligned(4))) __neorv32_rte_core(void) {

  asm volatile (
 318:	0ff0000f          	fence
 31c:	34011073          	csrw	mscratch,sp
 320:	f8010113          	addi	sp,sp,-128
 324:	00112223          	sw	ra,4(sp)
 328:	340110f3          	csrrw	ra,mscratch,sp
 32c:	00112423          	sw	ra,8(sp)
 330:	00312623          	sw	gp,12(sp)
 334:	00412823          	sw	tp,16(sp)
 338:	00512a23          	sw	t0,20(sp)
 33c:	00612c23          	sw	t1,24(sp)
 340:	00712e23          	sw	t2,28(sp)
 344:	02812023          	sw	s0,32(sp)
 348:	02912223          	sw	s1,36(sp)
 34c:	02a12423          	sw	a0,40(sp)
 350:	02b12623          	sw	a1,44(sp)
 354:	02c12823          	sw	a2,48(sp)
 358:	02d12a23          	sw	a3,52(sp)
 35c:	02e12c23          	sw	a4,56(sp)
 360:	02f12e23          	sw	a5,60(sp)
 364:	05012023          	sw	a6,64(sp)
 368:	05112223          	sw	a7,68(sp)
 36c:	05212423          	sw	s2,72(sp)
 370:	05312623          	sw	s3,76(sp)
 374:	05412823          	sw	s4,80(sp)
 378:	05512a23          	sw	s5,84(sp)
 37c:	05612c23          	sw	s6,88(sp)
 380:	05712e23          	sw	s7,92(sp)
 384:	07812023          	sw	s8,96(sp)
 388:	07912223          	sw	s9,100(sp)
 38c:	07a12423          	sw	s10,104(sp)
 390:	07b12623          	sw	s11,108(sp)
 394:	07c12823          	sw	t3,112(sp)
 398:	07d12a23          	sw	t4,116(sp)
 39c:	07e12c23          	sw	t5,120(sp)
 3a0:	07f12e23          	sw	t6,124(sp)
 3a4:	34202573          	csrr	a0,mcause
 3a8:	01855593          	srli	a1,a0,0x18
 3ac:	01f57613          	andi	a2,a0,31
 3b0:	00261613          	slli	a2,a2,0x2
 3b4:	00b60633          	add	a2,a2,a1
 3b8:	80000517          	auipc	a0,0x80000
 3bc:	c4850513          	addi	a0,a0,-952 # 80000000 <__neorv32_rte_vector_lut>
 3c0:	00a60633          	add	a2,a2,a0
 3c4:	00062603          	lw	a2,0(a2)
 3c8:	000600e7          	jalr	a2
 3cc:	34202573          	csrr	a0,mcause
 3d0:	00054863          	bltz	a0,3e0 <__neorv32_rte_core+0xc8>
 3d4:	34102573          	csrr	a0,mepc
 3d8:	00450513          	addi	a0,a0,4
 3dc:	34151073          	csrw	mepc,a0
 3e0:	00412083          	lw	ra,4(sp)
 3e4:	00c12183          	lw	gp,12(sp)
 3e8:	01012203          	lw	tp,16(sp)
 3ec:	01412283          	lw	t0,20(sp)
 3f0:	01812303          	lw	t1,24(sp)
 3f4:	01c12383          	lw	t2,28(sp)
 3f8:	02012403          	lw	s0,32(sp)
 3fc:	02412483          	lw	s1,36(sp)
 400:	02812503          	lw	a0,40(sp)
 404:	02c12583          	lw	a1,44(sp)
 408:	03012603          	lw	a2,48(sp)
 40c:	03412683          	lw	a3,52(sp)
 410:	03812703          	lw	a4,56(sp)
 414:	03c12783          	lw	a5,60(sp)
 418:	04012803          	lw	a6,64(sp)
 41c:	04412883          	lw	a7,68(sp)
 420:	04812903          	lw	s2,72(sp)
 424:	04c12983          	lw	s3,76(sp)
 428:	05012a03          	lw	s4,80(sp)
 42c:	05412a83          	lw	s5,84(sp)
 430:	05812b03          	lw	s6,88(sp)
 434:	05c12b83          	lw	s7,92(sp)
 438:	06012c03          	lw	s8,96(sp)
 43c:	06412c83          	lw	s9,100(sp)
 440:	06812d03          	lw	s10,104(sp)
 444:	06c12d83          	lw	s11,108(sp)
 448:	07012e03          	lw	t3,112(sp)
 44c:	07412e83          	lw	t4,116(sp)
 450:	07812f03          	lw	t5,120(sp)
 454:	07c12f83          	lw	t6,124(sp)
 458:	00812103          	lw	sp,8(sp)
 45c:	30200073          	mret

00000460 <__neorv32_rte_puth>:
static void __neorv32_rte_puth(uint32_t num) {
 460:	fd010113          	addi	sp,sp,-48
  const char hex[] = "0123456789ABCDEF";
 464:	000015b7          	lui	a1,0x1
static void __neorv32_rte_puth(uint32_t num) {
 468:	03212023          	sw	s2,32(sp)
  const char hex[] = "0123456789ABCDEF";
 46c:	01100613          	li	a2,17
static void __neorv32_rte_puth(uint32_t num) {
 470:	00050913          	mv	s2,a0
  const char hex[] = "0123456789ABCDEF";
 474:	10858593          	addi	a1,a1,264 # 1108 <__fini_array_end+0x58c>
 478:	00c10513          	addi	a0,sp,12
static void __neorv32_rte_puth(uint32_t num) {
 47c:	02112623          	sw	ra,44(sp)
 480:	02812423          	sw	s0,40(sp)
 484:	02912223          	sw	s1,36(sp)
  const char hex[] = "0123456789ABCDEF";
 488:	518000ef          	jal	9a0 <memcpy>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
 48c:	fff50537          	lui	a0,0xfff50
 490:	3c4000ef          	jal	854 <neorv32_uart_available>
 494:	04050463          	beqz	a0,4dc <__neorv32_rte_puth+0x7c>
    neorv32_uart_putc(NEORV32_UART0, '0');
 498:	03000593          	li	a1,48
 49c:	fff50537          	lui	a0,0xfff50
 4a0:	484000ef          	jal	924 <neorv32_uart_putc>
    neorv32_uart_putc(NEORV32_UART0, 'x');
 4a4:	07800593          	li	a1,120
 4a8:	fff50537          	lui	a0,0xfff50
 4ac:	478000ef          	jal	924 <neorv32_uart_putc>
 4b0:	01c00413          	li	s0,28
    for (i=0; i<8; i++) {
 4b4:	ffc00493          	li	s1,-4
      neorv32_uart_putc(NEORV32_UART0, hex[(num >> (28 - 4*i)) & 0xFu]);
 4b8:	008957b3          	srl	a5,s2,s0
 4bc:	00f7f793          	andi	a5,a5,15
 4c0:	02078793          	addi	a5,a5,32
 4c4:	002787b3          	add	a5,a5,sp
 4c8:	fec7c583          	lbu	a1,-20(a5)
 4cc:	fff50537          	lui	a0,0xfff50
    for (i=0; i<8; i++) {
 4d0:	ffc40413          	addi	s0,s0,-4
      neorv32_uart_putc(NEORV32_UART0, hex[(num >> (28 - 4*i)) & 0xFu]);
 4d4:	450000ef          	jal	924 <neorv32_uart_putc>
    for (i=0; i<8; i++) {
 4d8:	fe9410e3          	bne	s0,s1,4b8 <__neorv32_rte_puth+0x58>
}
 4dc:	02c12083          	lw	ra,44(sp)
 4e0:	02812403          	lw	s0,40(sp)
 4e4:	02412483          	lw	s1,36(sp)
 4e8:	02012903          	lw	s2,32(sp)
 4ec:	03010113          	addi	sp,sp,48
 4f0:	00008067          	ret

000004f4 <__neorv32_rte_puts>:
static void __neorv32_rte_puts(const char *s) {
 4f4:	fe010113          	addi	sp,sp,-32
 4f8:	00a12623          	sw	a0,12(sp)
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
 4fc:	fff50537          	lui	a0,0xfff50
static void __neorv32_rte_puts(const char *s) {
 500:	00112e23          	sw	ra,28(sp)
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
 504:	350000ef          	jal	854 <neorv32_uart_available>
 508:	00c12583          	lw	a1,12(sp)
 50c:	00050a63          	beqz	a0,520 <__neorv32_rte_puts+0x2c>
}
 510:	01c12083          	lw	ra,28(sp)
    neorv32_uart_puts(NEORV32_UART0, s);
 514:	fff50537          	lui	a0,0xfff50
}
 518:	02010113          	addi	sp,sp,32
    neorv32_uart_puts(NEORV32_UART0, s);
 51c:	41c0006f          	j	938 <neorv32_uart_puts>
}
 520:	01c12083          	lw	ra,28(sp)
 524:	02010113          	addi	sp,sp,32
 528:	00008067          	ret

0000052c <__neorv32_rte_panic>:
  __neorv32_rte_puts(RTE_TERM_HL_ON "<NEORV32-RTE-PANIC> ");
 52c:	00001537          	lui	a0,0x1
static void __neorv32_rte_panic(void) {
 530:	ff010113          	addi	sp,sp,-16
  __neorv32_rte_puts(RTE_TERM_HL_ON "<NEORV32-RTE-PANIC> ");
 534:	11c50513          	addi	a0,a0,284 # 111c <__fini_array_end+0x5a0>
static void __neorv32_rte_panic(void) {
 538:	00112623          	sw	ra,12(sp)
 53c:	00812423          	sw	s0,8(sp)
 540:	00912223          	sw	s1,4(sp)
  __neorv32_rte_puts(RTE_TERM_HL_ON "<NEORV32-RTE-PANIC> ");
 544:	fb1ff0ef          	jal	4f4 <__neorv32_rte_puts>
 * @return Read data (uint32_t).
 **************************************************************************/
inline uint32_t __attribute__ ((always_inline)) neorv32_cpu_csr_read(const int csr_id) {

  uint32_t csr_data;
  asm volatile ("csrr %[dst], %[id]" : [dst] "=r" (csr_data) : [id] "i" (csr_id));
 548:	f14027f3          	csrr	a5,mhartid
  if (neorv32_cpu_csr_read(CSR_MHARTID) & 1) {
 54c:	0017f793          	andi	a5,a5,1
 550:	04078863          	beqz	a5,5a0 <__neorv32_rte_panic+0x74>
    __neorv32_rte_puts("[cpu1|");
 554:	00001537          	lui	a0,0x1
 558:	13850513          	addi	a0,a0,312 # 1138 <__fini_array_end+0x5bc>
    __neorv32_rte_puts("[cpu0|");
 55c:	f99ff0ef          	jal	4f4 <__neorv32_rte_puts>
 560:	300027f3          	csrr	a5,mstatus
  if (neorv32_cpu_csr_read(CSR_MSTATUS) & (3 << CSR_MSTATUS_MPP_L)) {
 564:	00b7d713          	srli	a4,a5,0xb
 568:	00377713          	andi	a4,a4,3
 56c:	04070063          	beqz	a4,5ac <__neorv32_rte_panic+0x80>
    __neorv32_rte_puts("M] "); // machine-mode
 570:	00001537          	lui	a0,0x1
 574:	14850513          	addi	a0,a0,328 # 1148 <__fini_array_end+0x5cc>
    __neorv32_rte_puts("U] "); // user-mode
 578:	f7dff0ef          	jal	4f4 <__neorv32_rte_puts>
 57c:	34202473          	csrr	s0,mcause
  switch (cause) {
 580:	00b00793          	li	a5,11
 584:	0487e663          	bltu	a5,s0,5d0 <__neorv32_rte_panic+0xa4>
 588:	00001737          	lui	a4,0x1
 58c:	00241793          	slli	a5,s0,0x2
 590:	4b470713          	addi	a4,a4,1204 # 14b4 <__fini_array_end+0x938>
 594:	00e787b3          	add	a5,a5,a4
 598:	0007a783          	lw	a5,0(a5)
 59c:	00078067          	jr	a5
    __neorv32_rte_puts("[cpu0|");
 5a0:	00001537          	lui	a0,0x1
 5a4:	14050513          	addi	a0,a0,320 # 1140 <__fini_array_end+0x5c4>
 5a8:	fb5ff06f          	j	55c <__neorv32_rte_panic+0x30>
    __neorv32_rte_puts("U] "); // user-mode
 5ac:	00001537          	lui	a0,0x1
 5b0:	14c50513          	addi	a0,a0,332 # 114c <__fini_array_end+0x5d0>
 5b4:	fc5ff06f          	j	578 <__neorv32_rte_panic+0x4c>
  switch (cause) {
 5b8:	00001737          	lui	a4,0x1
 5bc:	00279793          	slli	a5,a5,0x2
 5c0:	4e470713          	addi	a4,a4,1252 # 14e4 <__fini_array_end+0x968>
 5c4:	00e787b3          	add	a5,a5,a4
 5c8:	0007a783          	lw	a5,0(a5)
 5cc:	00078067          	jr	a5
 5d0:	800007b7          	lui	a5,0x80000
 5d4:	ffd78793          	addi	a5,a5,-3 # 7ffffffd <__neorv32_rom_size+0x7fffbffd>
 5d8:	00f407b3          	add	a5,s0,a5
 5dc:	01c00713          	li	a4,28
 5e0:	fcf77ce3          	bgeu	a4,a5,5b8 <__neorv32_rte_panic+0x8c>
    default:                     __neorv32_rte_puts("Unknown trap cause "); __neorv32_rte_puth(cause); fatal = 1; break;
 5e4:	00001537          	lui	a0,0x1
 5e8:	3a050513          	addi	a0,a0,928 # 13a0 <__fini_array_end+0x824>
 5ec:	f09ff0ef          	jal	4f4 <__neorv32_rte_puts>
 5f0:	00040513          	mv	a0,s0
 5f4:	e6dff0ef          	jal	460 <__neorv32_rte_puth>
 5f8:	0100006f          	j	608 <__neorv32_rte_panic+0xdc>
    case TRAP_CODE_I_ACCESS:     __neorv32_rte_puts("Instruction access fault"); fatal = 1; break;
 5fc:	00001537          	lui	a0,0x1
 600:	15050513          	addi	a0,a0,336 # 1150 <__fini_array_end+0x5d4>
    case TRAP_CODE_I_MISALIGNED: __neorv32_rte_puts("Instruction address misaligned"); fatal = 1; break;
 604:	ef1ff0ef          	jal	4f4 <__neorv32_rte_puts>
    case TRAP_CODE_I_ACCESS:     __neorv32_rte_puts("Instruction access fault"); fatal = 1; break;
 608:	00100493          	li	s1,1
  __neorv32_rte_puts(" MEPC=");
 60c:	00001537          	lui	a0,0x1
 610:	3b450513          	addi	a0,a0,948 # 13b4 <__fini_array_end+0x838>
 614:	ee1ff0ef          	jal	4f4 <__neorv32_rte_puts>
 618:	34102573          	csrr	a0,mepc
  __neorv32_rte_puth(neorv32_cpu_csr_read(CSR_MEPC));
 61c:	e45ff0ef          	jal	460 <__neorv32_rte_puth>
  __neorv32_rte_puts(" MTINST=");
 620:	00001537          	lui	a0,0x1
 624:	3bc50513          	addi	a0,a0,956 # 13bc <__fini_array_end+0x840>
 628:	ecdff0ef          	jal	4f4 <__neorv32_rte_puts>
 62c:	34a02573          	csrr	a0,0x34a
  __neorv32_rte_puth(neorv32_cpu_csr_read(CSR_MTINST));
 630:	e31ff0ef          	jal	460 <__neorv32_rte_puth>
  __neorv32_rte_puts(" MTVAL=");
 634:	00001537          	lui	a0,0x1
 638:	3c850513          	addi	a0,a0,968 # 13c8 <__fini_array_end+0x84c>
 63c:	eb9ff0ef          	jal	4f4 <__neorv32_rte_puts>
 640:	34302573          	csrr	a0,mtval
  __neorv32_rte_puth(neorv32_cpu_csr_read(CSR_MTVAL));
 644:	e1dff0ef          	jal	460 <__neorv32_rte_puth>
  if (((int32_t)cause) < 0) { // is interrupt
 648:	00045e63          	bgez	s0,664 <__neorv32_rte_panic+0x138>
    __neorv32_rte_puts(" Disabling IRQ source");
 64c:	00001537          	lui	a0,0x1
 650:	3d050513          	addi	a0,a0,976 # 13d0 <__fini_array_end+0x854>
 654:	ea1ff0ef          	jal	4f4 <__neorv32_rte_puts>
    neorv32_cpu_csr_clr(CSR_MIE, 1 << (cause & 0x1f));
 658:	00100793          	li	a5,1
 65c:	008797b3          	sll	a5,a5,s0
 * @param[in] mask Bit mask (high-active) to clear bits (uint32_t).
 **************************************************************************/
inline void __attribute__ ((always_inline)) neorv32_cpu_csr_clr(const int csr_id, uint32_t mask) {

  uint32_t csr_data = mask;
  asm volatile ("csrc %[id], %[src]" :  : [id] "i" (csr_id), [src] "r" (csr_data));
 660:	3047b073          	csrc	mie,a5
  if (fatal) {
 664:	00048c63          	beqz	s1,67c <__neorv32_rte_panic_halt+0x8>
    __neorv32_rte_puts(" FATAL! Halting CPU </NEORV32-RTE-PANIC>" RTE_TERM_HL_OFF "\n");
 668:	00001537          	lui	a0,0x1
 66c:	3e850513          	addi	a0,a0,1000 # 13e8 <__fini_array_end+0x86c>
 670:	e85ff0ef          	jal	4f4 <__neorv32_rte_puts>

00000674 <__neorv32_rte_panic_halt>:
    asm volatile (
 674:	10500073          	wfi
 678:	ffdff06f          	j	674 <__neorv32_rte_panic_halt>
}
 67c:	00812403          	lw	s0,8(sp)
 680:	00c12083          	lw	ra,12(sp)
 684:	00412483          	lw	s1,4(sp)
  __neorv32_rte_puts(" </NEORV32-RTE-PANIC>\n" RTE_TERM_HL_OFF);
 688:	00001537          	lui	a0,0x1
 68c:	41850513          	addi	a0,a0,1048 # 1418 <__fini_array_end+0x89c>
}
 690:	01010113          	addi	sp,sp,16
  __neorv32_rte_puts(" </NEORV32-RTE-PANIC>\n" RTE_TERM_HL_OFF);
 694:	e61ff06f          	j	4f4 <__neorv32_rte_puts>
    case TRAP_CODE_I_ILLEGAL:    __neorv32_rte_puts("Illegal instruction"); break;
 698:	00001537          	lui	a0,0x1
 69c:	16c50513          	addi	a0,a0,364 # 116c <__fini_array_end+0x5f0>
    case TRAP_CODE_BREAKPOINT:   __neorv32_rte_puts("Environment breakpoint"); break;
 6a0:	e55ff0ef          	jal	4f4 <__neorv32_rte_puts>
  uint32_t fatal = 0;
 6a4:	00000493          	li	s1,0
 6a8:	f65ff06f          	j	60c <__neorv32_rte_panic+0xe0>
    case TRAP_CODE_I_MISALIGNED: __neorv32_rte_puts("Instruction address misaligned"); fatal = 1; break;
 6ac:	00001537          	lui	a0,0x1
 6b0:	18050513          	addi	a0,a0,384 # 1180 <__fini_array_end+0x604>
 6b4:	f51ff06f          	j	604 <__neorv32_rte_panic+0xd8>
    case TRAP_CODE_BREAKPOINT:   __neorv32_rte_puts("Environment breakpoint"); break;
 6b8:	00001537          	lui	a0,0x1
 6bc:	1a050513          	addi	a0,a0,416 # 11a0 <__fini_array_end+0x624>
 6c0:	fe1ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_L_MISALIGNED: __neorv32_rte_puts("Load address misaligned"); break;
 6c4:	00001537          	lui	a0,0x1
 6c8:	1b850513          	addi	a0,a0,440 # 11b8 <__fini_array_end+0x63c>
 6cc:	fd5ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_L_ACCESS:     __neorv32_rte_puts("Load access fault"); break;
 6d0:	00001537          	lui	a0,0x1
 6d4:	1d050513          	addi	a0,a0,464 # 11d0 <__fini_array_end+0x654>
 6d8:	fc9ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_S_MISALIGNED: __neorv32_rte_puts("Store address misaligned"); break;
 6dc:	00001537          	lui	a0,0x1
 6e0:	1e450513          	addi	a0,a0,484 # 11e4 <__fini_array_end+0x668>
 6e4:	fbdff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_S_ACCESS:     __neorv32_rte_puts("Store access fault"); break;
 6e8:	00001537          	lui	a0,0x1
 6ec:	20050513          	addi	a0,a0,512 # 1200 <__fini_array_end+0x684>
 6f0:	fb1ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_UENV_CALL:    __neorv32_rte_puts("Environment call from U-mode"); break;
 6f4:	00001537          	lui	a0,0x1
 6f8:	21450513          	addi	a0,a0,532 # 1214 <__fini_array_end+0x698>
 6fc:	fa5ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_MENV_CALL:    __neorv32_rte_puts("Environment call from M-mode"); break;
 700:	00001537          	lui	a0,0x1
 704:	23450513          	addi	a0,a0,564 # 1234 <__fini_array_end+0x6b8>
 708:	f99ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_MSI:          __neorv32_rte_puts("Machine software IRQ"); break;
 70c:	00001537          	lui	a0,0x1
 710:	25450513          	addi	a0,a0,596 # 1254 <__fini_array_end+0x6d8>
 714:	f8dff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_MTI:          __neorv32_rte_puts("Machine timer IRQ"); break;
 718:	00001537          	lui	a0,0x1
 71c:	26c50513          	addi	a0,a0,620 # 126c <__fini_array_end+0x6f0>
 720:	f81ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_MEI:          __neorv32_rte_puts("Machine external IRQ"); break;
 724:	00001537          	lui	a0,0x1
 728:	28050513          	addi	a0,a0,640 # 1280 <__fini_array_end+0x704>
 72c:	f75ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_0:       __neorv32_rte_puts("FIRQ-0 (TWD)"); break;
 730:	00001537          	lui	a0,0x1
 734:	29850513          	addi	a0,a0,664 # 1298 <__fini_array_end+0x71c>
 738:	f69ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_1:       __neorv32_rte_puts("FIRQ-1 (CFS)"); break;
 73c:	00001537          	lui	a0,0x1
 740:	2a850513          	addi	a0,a0,680 # 12a8 <__fini_array_end+0x72c>
 744:	f5dff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_2:       __neorv32_rte_puts("FIRQ-2 (UART0)"); break;
 748:	00001537          	lui	a0,0x1
 74c:	2b850513          	addi	a0,a0,696 # 12b8 <__fini_array_end+0x73c>
 750:	f51ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_3:       __neorv32_rte_puts("FIRQ-3 (UART1)"); break;
 754:	00001537          	lui	a0,0x1
 758:	2c850513          	addi	a0,a0,712 # 12c8 <__fini_array_end+0x74c>
 75c:	f45ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_4:       __neorv32_rte_puts("FIRQ-4 (reserved)"); break;
 760:	00001537          	lui	a0,0x1
 764:	2d850513          	addi	a0,a0,728 # 12d8 <__fini_array_end+0x75c>
 768:	f39ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_5:       __neorv32_rte_puts("FIRQ-5 (TRACER)"); break;
 76c:	00001537          	lui	a0,0x1
 770:	2ec50513          	addi	a0,a0,748 # 12ec <__fini_array_end+0x770>
 774:	f2dff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_6:       __neorv32_rte_puts("FIRQ-6 (SPI)"); break;
 778:	00001537          	lui	a0,0x1
 77c:	2fc50513          	addi	a0,a0,764 # 12fc <__fini_array_end+0x780>
 780:	f21ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_7:       __neorv32_rte_puts("FIRQ-7 (TWI)"); break;
 784:	00001537          	lui	a0,0x1
 788:	30c50513          	addi	a0,a0,780 # 130c <__fini_array_end+0x790>
 78c:	f15ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_8:       __neorv32_rte_puts("FIRQ-8 (GPIO)"); break;
 790:	00001537          	lui	a0,0x1
 794:	31c50513          	addi	a0,a0,796 # 131c <__fini_array_end+0x7a0>
 798:	f09ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_9:       __neorv32_rte_puts("FIRQ-9 (NEOLED)"); break;
 79c:	00001537          	lui	a0,0x1
 7a0:	32c50513          	addi	a0,a0,812 # 132c <__fini_array_end+0x7b0>
 7a4:	efdff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_10:      __neorv32_rte_puts("FIRQ-10 (DMA)"); break;
 7a8:	00001537          	lui	a0,0x1
 7ac:	33c50513          	addi	a0,a0,828 # 133c <__fini_array_end+0x7c0>
 7b0:	ef1ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_11:      __neorv32_rte_puts("FIRQ-11 (SDI)"); break;
 7b4:	00001537          	lui	a0,0x1
 7b8:	34c50513          	addi	a0,a0,844 # 134c <__fini_array_end+0x7d0>
 7bc:	ee5ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_12:      __neorv32_rte_puts("FIRQ-12 (GPTMR)"); break;
 7c0:	00001537          	lui	a0,0x1
 7c4:	35c50513          	addi	a0,a0,860 # 135c <__fini_array_end+0x7e0>
 7c8:	ed9ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_13:      __neorv32_rte_puts("FIRQ-13 (ONEWIRE)"); break;
 7cc:	00001537          	lui	a0,0x1
 7d0:	36c50513          	addi	a0,a0,876 # 136c <__fini_array_end+0x7f0>
 7d4:	ecdff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_14:      __neorv32_rte_puts("FIRQ-14 (SLINK)"); break;
 7d8:	00001537          	lui	a0,0x1
 7dc:	38050513          	addi	a0,a0,896 # 1380 <__fini_array_end+0x804>
 7e0:	ec1ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>
    case TRAP_CODE_FIRQ_15:      __neorv32_rte_puts("FIRQ-15 (TRNG)"); break;
 7e4:	00001537          	lui	a0,0x1
 7e8:	39050513          	addi	a0,a0,912 # 1390 <__fini_array_end+0x814>
 7ec:	eb5ff06f          	j	6a0 <__neorv32_rte_panic_halt+0x2c>

000007f0 <neorv32_rte_setup>:
  asm volatile ("csrw %[id], %[src]" :  : [id] "i" (csr_id), [src] "r" (csr_data));
 7f0:	000027b7          	lui	a5,0x2
 7f4:	80078793          	addi	a5,a5,-2048 # 1800 <__crt0_copy_data_src_begin+0x2a8>
 7f8:	30079073          	csrw	mstatus,a5

  // clear mstatus, set previous privilege level to machine-mode
  neorv32_cpu_csr_write(CSR_MSTATUS, (1<<CSR_MSTATUS_MPP_H) | (1<<CSR_MSTATUS_MPP_L));

  // configure trap handler base address (direct mode)
  neorv32_cpu_csr_write(CSR_MTVEC, (uint32_t)(&__neorv32_rte_core) & 0xfffffffcU);
 7fc:	31800793          	li	a5,792
 800:	ffc7f793          	andi	a5,a5,-4
 804:	30579073          	csrw	mtvec,a5
 808:	00000793          	li	a5,0
 80c:	30479073          	csrw	mie,a5
  asm volatile ("csrr %[dst], %[id]" : [dst] "=r" (csr_data) : [id] "i" (csr_id));
 810:	f14027f3          	csrr	a5,mhartid

  // disable all IRQ channels
  neorv32_cpu_csr_write(CSR_MIE, 0);

  // install debug handler for all trap sources (executed only on core 0)
  if (neorv32_cpu_csr_read(CSR_MHARTID) == 0) {
 814:	02079c63          	bnez	a5,84c <neorv32_rte_setup+0x5c>
    int i;
    for (i=0; i<32; i++) {
      __neorv32_rte_vector_lut[0][i] = (uint32_t)(&__neorv32_rte_panic);
 818:	80000637          	lui	a2,0x80000
 81c:	52c00693          	li	a3,1324
 820:	00060613          	mv	a2,a2
    for (i=0; i<32; i++) {
 824:	02000593          	li	a1,32
      __neorv32_rte_vector_lut[0][i] = (uint32_t)(&__neorv32_rte_panic);
 828:	00279713          	slli	a4,a5,0x2
 82c:	00e60733          	add	a4,a2,a4
 830:	00d72023          	sw	a3,0(a4)
      __neorv32_rte_vector_lut[1][i] = (uint32_t)(&__neorv32_rte_panic);
 834:	02078713          	addi	a4,a5,32
 838:	00271713          	slli	a4,a4,0x2
 83c:	00e60733          	add	a4,a2,a4
 840:	00d72023          	sw	a3,0(a4)
    for (i=0; i<32; i++) {
 844:	00178793          	addi	a5,a5,1
 848:	feb790e3          	bne	a5,a1,828 <neorv32_rte_setup+0x38>
    }
  }
  asm volatile ("fence"); // flush vector table to main memory
 84c:	0ff0000f          	fence
}
 850:	00008067          	ret

00000854 <neorv32_uart_available>:
 * @param[in,out] Hardware handle to UART register struct, #neorv32_uart_t.
 * @return 0 if UART0/1 was not synthesized, non-zero if UART0/1 is available.
 **************************************************************************/
int neorv32_uart_available(neorv32_uart_t *UARTx) {

  if (UARTx == NEORV32_UART0) {
 854:	fff50737          	lui	a4,0xfff50
int neorv32_uart_available(neorv32_uart_t *UARTx) {
 858:	00050793          	mv	a5,a0
  if (UARTx == NEORV32_UART0) {
 85c:	00e51c63          	bne	a0,a4,874 <neorv32_uart_available+0x20>
    return (int)(NEORV32_SYSINFO->SOC & (1 << SYSINFO_SOC_IO_UART0));
 860:	fffe07b7          	lui	a5,0xfffe0
 864:	0087a503          	lw	a0,8(a5) # fffe0008 <__crt0_ram_last+0x7ffde009>
 868:	000207b7          	lui	a5,0x20
  }
  else if (UARTx == NEORV32_UART1) {
    return (int)(NEORV32_SYSINFO->SOC & (1 << SYSINFO_SOC_IO_UART1));
 86c:	00f57533          	and	a0,a0,a5
  }
  else {
    return 0;
  }
}
 870:	00008067          	ret
  else if (UARTx == NEORV32_UART1) {
 874:	fff60737          	lui	a4,0xfff60
    return 0;
 878:	00000513          	li	a0,0
  else if (UARTx == NEORV32_UART1) {
 87c:	fee79ae3          	bne	a5,a4,870 <neorv32_uart_available+0x1c>
    return (int)(NEORV32_SYSINFO->SOC & (1 << SYSINFO_SOC_IO_UART1));
 880:	fffe07b7          	lui	a5,0xfffe0
 884:	0087a503          	lw	a0,8(a5) # fffe0008 <__crt0_ram_last+0x7ffde009>
 888:	020007b7          	lui	a5,0x2000
 88c:	fe1ff06f          	j	86c <neorv32_uart_available+0x18>

00000890 <neorv32_uart_setup>:
 *
 * @param[in,out] UARTx Hardware handle to UART register struct, #neorv32_uart_t.
 * @param[in] baudrate Targeted BAUD rate (e.g. 19200).
 * @param[in] irq_mask Interrupt configuration bit mask (CTRL's irq_* bits).
 **************************************************************************/
void neorv32_uart_setup(neorv32_uart_t *UARTx, uint32_t baudrate, uint32_t irq_mask) {
 890:	fe010113          	addi	sp,sp,-32
 894:	00812c23          	sw	s0,24(sp)
 898:	00112e23          	sw	ra,28(sp)

  uint32_t prsc_sel = 0;
  uint32_t baud_div = 0;

  // reset
  UARTx->CTRL = 0;
 89c:	00052023          	sw	zero,0(a0)
/**********************************************************************//**
 * Get current processor clock frequency.
 * @return Clock frequency in Hz.
 **************************************************************************/
inline uint32_t __attribute__ ((always_inline)) neorv32_sysinfo_get_clk(void) {
  return NEORV32_SYSINFO->CLK;
 8a0:	fffe07b7          	lui	a5,0xfffe0
void neorv32_uart_setup(neorv32_uart_t *UARTx, uint32_t baudrate, uint32_t irq_mask) {
 8a4:	00050413          	mv	s0,a0
 8a8:	0007a503          	lw	a0,0(a5) # fffe0000 <__crt0_ram_last+0x7ffde001>

  // raw clock prescaler
  uint32_t clock = neorv32_sysinfo_get_clk(); // system clock in Hz
#ifndef MAKE_BOOTLOADER // use div instructions / library functions
  baud_div = clock / (2*baudrate);
 8ac:	00159593          	slli	a1,a1,0x1
void neorv32_uart_setup(neorv32_uart_t *UARTx, uint32_t baudrate, uint32_t irq_mask) {
 8b0:	00c12623          	sw	a2,12(sp)
  baud_div = clock / (2*baudrate);
 8b4:	21c000ef          	jal	ad0 <__hidden___udivsi3>
    baud_div++;
  }
#endif

  // find baud prescaler (10-bit wide))
  while (baud_div >= 0x3ffU) {
 8b8:	00c12603          	lw	a2,12(sp)
  uint32_t prsc_sel = 0;
 8bc:	00000713          	li	a4,0
  while (baud_div >= 0x3ffU) {
 8c0:	3fe00693          	li	a3,1022
 8c4:	04a6e063          	bltu	a3,a0,904 <neorv32_uart_setup+0x74>
  }

  uint32_t tmp = 0;
  tmp |= (uint32_t)(1              & 1U)     << UART_CTRL_EN;
  tmp |= (uint32_t)(prsc_sel       & 3U)     << UART_CTRL_PRSC_LSB;
  tmp |= (uint32_t)((baud_div - 1) & 0x3ffU) << UART_CTRL_BAUD_LSB;
 8c8:	fff50793          	addi	a5,a0,-1
 8cc:	3ff7f793          	andi	a5,a5,1023
  tmp |= (uint32_t)(irq_mask       & (0xfu   << UART_CTRL_IRQ_RX_NEMPTY));
 8d0:	00f006b7          	lui	a3,0xf00
  tmp |= (uint32_t)((baud_div - 1) & 0x3ffU) << UART_CTRL_BAUD_LSB;
 8d4:	00679793          	slli	a5,a5,0x6
  tmp |= (uint32_t)(irq_mask       & (0xfu   << UART_CTRL_IRQ_RX_NEMPTY));
 8d8:	00d67633          	and	a2,a2,a3
  tmp |= (uint32_t)(prsc_sel       & 3U)     << UART_CTRL_PRSC_LSB;
 8dc:	00371713          	slli	a4,a4,0x3
  tmp |= (uint32_t)(irq_mask       & (0xfu   << UART_CTRL_IRQ_RX_NEMPTY));
 8e0:	00c7e7b3          	or	a5,a5,a2
  tmp |= (uint32_t)(prsc_sel       & 3U)     << UART_CTRL_PRSC_LSB;
 8e4:	01877713          	andi	a4,a4,24
  tmp |= (uint32_t)(irq_mask       & (0xfu   << UART_CTRL_IRQ_RX_NEMPTY));
 8e8:	00e7e7b3          	or	a5,a5,a4
 8ec:	0017e793          	ori	a5,a5,1
    tmp |= 1U << UART_CTRL_SIM_MODE;
  }
#endif

  UARTx->CTRL = tmp;
}
 8f0:	01c12083          	lw	ra,28(sp)
  UARTx->CTRL = tmp;
 8f4:	00f42023          	sw	a5,0(s0)
}
 8f8:	01812403          	lw	s0,24(sp)
 8fc:	02010113          	addi	sp,sp,32
 900:	00008067          	ret
    if ((prsc_sel == 2) || (prsc_sel == 4))
 904:	ffe70793          	addi	a5,a4,-2 # fff5fffe <__crt0_ram_last+0x7ff5dfff>
 908:	ffd7f793          	andi	a5,a5,-3
 90c:	00079863          	bnez	a5,91c <neorv32_uart_setup+0x8c>
      baud_div >>= 3;
 910:	00355513          	srli	a0,a0,0x3
    prsc_sel++;
 914:	00170713          	addi	a4,a4,1
 918:	fadff06f          	j	8c4 <neorv32_uart_setup+0x34>
      baud_div >>= 1;
 91c:	00155513          	srli	a0,a0,0x1
 920:	ff5ff06f          	j	914 <neorv32_uart_setup+0x84>

00000924 <neorv32_uart_putc>:
 * @param[in,out] UARTx Hardware handle to UART register struct, #neorv32_uart_t.
 * @param[in] c Char to be send.
 **************************************************************************/
void neorv32_uart_putc(neorv32_uart_t *UARTx, char c) {

  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
 924:	00052783          	lw	a5,0(a0)
 928:	00c79713          	slli	a4,a5,0xc
 92c:	fe075ce3          	bgez	a4,924 <neorv32_uart_putc>
void neorv32_uart_tx_put(neorv32_uart_t *UARTx, char c) {

#ifdef UART_SEMIHOSTING
  neorv32_semihosting_putc(c);
#else
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
 930:	00b52223          	sw	a1,4(a0)
}
 934:	00008067          	ret

00000938 <neorv32_uart_puts>:
 * @warning "/n" line breaks are automatically converted to "/r/n".
 *
 * @param[in,out] UARTx Hardware handle to UART register struct, #neorv32_uart_t.
 * @param[in] s Pointer to string.
 **************************************************************************/
void neorv32_uart_puts(neorv32_uart_t *UARTx, const char *s) {
 938:	fe010113          	addi	sp,sp,-32
 93c:	00812c23          	sw	s0,24(sp)
 940:	01212823          	sw	s2,16(sp)
 944:	00112e23          	sw	ra,28(sp)
 948:	00912a23          	sw	s1,20(sp)
 94c:	00058413          	mv	s0,a1
#ifdef UART_SEMIHOSTING
  neorv32_semihosting_puts(s);
#else
  char c = 0;
  while ((c = *s++)) {
    if (c == '\n') {
 950:	00a00913          	li	s2,10
  while ((c = *s++)) {
 954:	00044483          	lbu	s1,0(s0)
 958:	00049e63          	bnez	s1,974 <neorv32_uart_puts+0x3c>
      neorv32_uart_putc(UARTx, '\r');
    }
    neorv32_uart_putc(UARTx, c);
  }
#endif
}
 95c:	01c12083          	lw	ra,28(sp)
 960:	01812403          	lw	s0,24(sp)
 964:	01412483          	lw	s1,20(sp)
 968:	01012903          	lw	s2,16(sp)
 96c:	02010113          	addi	sp,sp,32
 970:	00008067          	ret
  while ((c = *s++)) {
 974:	00140413          	addi	s0,s0,1
    if (c == '\n') {
 978:	01249a63          	bne	s1,s2,98c <neorv32_uart_puts+0x54>
      neorv32_uart_putc(UARTx, '\r');
 97c:	00d00593          	li	a1,13
 980:	00a12623          	sw	a0,12(sp)
 984:	fa1ff0ef          	jal	924 <neorv32_uart_putc>
 988:	00c12503          	lw	a0,12(sp)
    neorv32_uart_putc(UARTx, c);
 98c:	00048593          	mv	a1,s1
 990:	00a12623          	sw	a0,12(sp)
 994:	f91ff0ef          	jal	924 <neorv32_uart_putc>
 998:	00c12503          	lw	a0,12(sp)
 99c:	fb9ff06f          	j	954 <neorv32_uart_puts+0x1c>

000009a0 <memcpy>:
 9a0:	00a5c7b3          	xor	a5,a1,a0
 9a4:	0037f793          	andi	a5,a5,3
 9a8:	00c508b3          	add	a7,a0,a2
 9ac:	06079663          	bnez	a5,a18 <memcpy+0x78>
 9b0:	00463613          	sltiu	a2,a2,4
 9b4:	06061263          	bnez	a2,a18 <memcpy+0x78>
 9b8:	00357793          	andi	a5,a0,3
 9bc:	00050713          	mv	a4,a0
 9c0:	0c079a63          	bnez	a5,a94 <memcpy+0xf4>
 9c4:	ffc8f613          	andi	a2,a7,-4
 9c8:	40e606b3          	sub	a3,a2,a4
 9cc:	02000793          	li	a5,32
 9d0:	06d7c463          	blt	a5,a3,a38 <memcpy+0x98>
 9d4:	00058693          	mv	a3,a1
 9d8:	00070793          	mv	a5,a4
 9dc:	02c77a63          	bgeu	a4,a2,a10 <memcpy+0x70>
 9e0:	0006a803          	lw	a6,0(a3) # f00000 <__neorv32_rom_size+0xefc000>
 9e4:	00478793          	addi	a5,a5,4
 9e8:	00468693          	addi	a3,a3,4
 9ec:	ff07ae23          	sw	a6,-4(a5)
 9f0:	fec7e8e3          	bltu	a5,a2,9e0 <memcpy+0x40>
 9f4:	fff60613          	addi	a2,a2,-1 # 7fffffff <__neorv32_rom_size+0x7fffbfff>
 9f8:	40e60633          	sub	a2,a2,a4
 9fc:	ffc67613          	andi	a2,a2,-4
 a00:	00458593          	addi	a1,a1,4
 a04:	00470713          	addi	a4,a4,4
 a08:	00c585b3          	add	a1,a1,a2
 a0c:	00c70733          	add	a4,a4,a2
 a10:	01176863          	bltu	a4,a7,a20 <memcpy+0x80>
 a14:	00008067          	ret
 a18:	00050713          	mv	a4,a0
 a1c:	ff157ce3          	bgeu	a0,a7,a14 <memcpy+0x74>
 a20:	0005c783          	lbu	a5,0(a1)
 a24:	00170713          	addi	a4,a4,1
 a28:	00158593          	addi	a1,a1,1
 a2c:	fef70fa3          	sb	a5,-1(a4)
 a30:	fee898e3          	bne	a7,a4,a20 <memcpy+0x80>
 a34:	00008067          	ret
 a38:	0005a683          	lw	a3,0(a1)
 a3c:	0045a283          	lw	t0,4(a1)
 a40:	0085af83          	lw	t6,8(a1)
 a44:	00c5af03          	lw	t5,12(a1)
 a48:	0105ae83          	lw	t4,16(a1)
 a4c:	0145ae03          	lw	t3,20(a1)
 a50:	0185a303          	lw	t1,24(a1)
 a54:	01c5a803          	lw	a6,28(a1)
 a58:	00d72023          	sw	a3,0(a4)
 a5c:	0205a683          	lw	a3,32(a1)
 a60:	02470713          	addi	a4,a4,36
 a64:	fe572023          	sw	t0,-32(a4)
 a68:	fed72e23          	sw	a3,-4(a4)
 a6c:	fff72223          	sw	t6,-28(a4)
 a70:	40e606b3          	sub	a3,a2,a4
 a74:	ffe72423          	sw	t5,-24(a4)
 a78:	ffd72623          	sw	t4,-20(a4)
 a7c:	ffc72823          	sw	t3,-16(a4)
 a80:	fe672a23          	sw	t1,-12(a4)
 a84:	ff072c23          	sw	a6,-8(a4)
 a88:	02458593          	addi	a1,a1,36
 a8c:	fad7c6e3          	blt	a5,a3,a38 <memcpy+0x98>
 a90:	f45ff06f          	j	9d4 <memcpy+0x34>
 a94:	0005c683          	lbu	a3,0(a1)
 a98:	00170713          	addi	a4,a4,1
 a9c:	00377793          	andi	a5,a4,3
 aa0:	fed70fa3          	sb	a3,-1(a4)
 aa4:	00158593          	addi	a1,a1,1
 aa8:	f0078ee3          	beqz	a5,9c4 <memcpy+0x24>
 aac:	0005c683          	lbu	a3,0(a1)
 ab0:	00170713          	addi	a4,a4,1
 ab4:	00377793          	andi	a5,a4,3
 ab8:	fed70fa3          	sb	a3,-1(a4)
 abc:	00158593          	addi	a1,a1,1
 ac0:	fc079ae3          	bnez	a5,a94 <memcpy+0xf4>
 ac4:	f01ff06f          	j	9c4 <memcpy+0x24>

00000ac8 <__divsi3>:
  li    t0, -1
  beq   a1, t0, .L20
#endif

FUNC_BEGIN (__divdi3)
  bltz  a0, .L10
 ac8:	06054063          	bltz	a0,b28 <__umodsi3+0x10>
  bltz  a1, .L11
 acc:	0605c663          	bltz	a1,b38 <__umodsi3+0x20>

00000ad0 <__hidden___udivsi3>:
  /* Since the quotient is positive, fall into __udivdi3.  */

FUNC_BEGIN (__udivdi3)
  mv    a2, a1
 ad0:	00058613          	mv	a2,a1
  mv    a1, a0
 ad4:	00050593          	mv	a1,a0
  li    a0, -1
 ad8:	fff00513          	li	a0,-1
  beqz  a2, .L5
 adc:	02060c63          	beqz	a2,b14 <__hidden___udivsi3+0x44>
  li    a3, 1
 ae0:	00100693          	li	a3,1
  bgeu  a2, a1, .L2
 ae4:	00b67a63          	bgeu	a2,a1,af8 <__hidden___udivsi3+0x28>
.L1:
  blez  a2, .L2
 ae8:	00c05863          	blez	a2,af8 <__hidden___udivsi3+0x28>
  slli  a2, a2, 1
 aec:	00161613          	slli	a2,a2,0x1
  slli  a3, a3, 1
 af0:	00169693          	slli	a3,a3,0x1
  bgtu  a1, a2, .L1
 af4:	feb66ae3          	bltu	a2,a1,ae8 <__hidden___udivsi3+0x18>
.L2:
  li    a0, 0
 af8:	00000513          	li	a0,0
.L3:
  bltu  a1, a2, .L4
 afc:	00c5e663          	bltu	a1,a2,b08 <__hidden___udivsi3+0x38>
  sub   a1, a1, a2
 b00:	40c585b3          	sub	a1,a1,a2
  or    a0, a0, a3
 b04:	00d56533          	or	a0,a0,a3
.L4:
  srli  a3, a3, 1
 b08:	0016d693          	srli	a3,a3,0x1
  srli  a2, a2, 1
 b0c:	00165613          	srli	a2,a2,0x1
  bnez  a3, .L3
 b10:	fe0696e3          	bnez	a3,afc <__hidden___udivsi3+0x2c>
.L5:
  ret
 b14:	00008067          	ret

00000b18 <__umodsi3>:
FUNC_END (__udivdi3)
HIDDEN_DEF (__udivdi3)

FUNC_BEGIN (__umoddi3)
  /* Call __udivdi3(a0, a1), then return the remainder, which is in a1.  */
  move  t0, ra
 b18:	00008293          	mv	t0,ra
  jal   HIDDEN_JUMPTARGET(__udivdi3)
 b1c:	fb5ff0ef          	jal	ad0 <__hidden___udivsi3>
  move  a0, a1
 b20:	00058513          	mv	a0,a1
  jr    t0
 b24:	00028067          	jr	t0
FUNC_END (__umoddi3)

  /* Handle negative arguments to __divdi3.  */
.L10:
  neg   a0, a0
 b28:	40a00533          	neg	a0,a0
  /* Zero is handled as a negative so that the result will not be inverted.  */
  bgtz  a1, .L12     /* Compute __udivdi3(-a0, a1), then negate the result.  */
 b2c:	00b04863          	bgtz	a1,b3c <__umodsi3+0x24>

  neg   a1, a1
 b30:	40b005b3          	neg	a1,a1
  j     HIDDEN_JUMPTARGET(__udivdi3)     /* Compute __udivdi3(-a0, -a1).  */
 b34:	f9dff06f          	j	ad0 <__hidden___udivsi3>
.L11:                /* Compute __udivdi3(a0, -a1), then negate the result.  */
  neg   a1, a1
 b38:	40b005b3          	neg	a1,a1
.L12:
  move  t0, ra
 b3c:	00008293          	mv	t0,ra
  jal   HIDDEN_JUMPTARGET(__udivdi3)
 b40:	f91ff0ef          	jal	ad0 <__hidden___udivsi3>
  neg   a0, a0
 b44:	40a00533          	neg	a0,a0
  jr    t0
 b48:	00028067          	jr	t0

00000b4c <__modsi3>:
FUNC_END (__divdi3)

FUNC_BEGIN (__moddi3)
  move   t0, ra
 b4c:	00008293          	mv	t0,ra
  bltz   a1, .L31
 b50:	0005ca63          	bltz	a1,b64 <__modsi3+0x18>
  bltz   a0, .L32
 b54:	00054c63          	bltz	a0,b6c <__modsi3+0x20>
.L30:
  jal    HIDDEN_JUMPTARGET(__udivdi3)    /* The dividend is not negative.  */
 b58:	f79ff0ef          	jal	ad0 <__hidden___udivsi3>
  move   a0, a1
 b5c:	00058513          	mv	a0,a1
  jr     t0
 b60:	00028067          	jr	t0
.L31:
  neg    a1, a1
 b64:	40b005b3          	neg	a1,a1
  bgez   a0, .L30
 b68:	fe0558e3          	bgez	a0,b58 <__modsi3+0xc>
.L32:
  neg    a0, a0
 b6c:	40a00533          	neg	a0,a0
  jal    HIDDEN_JUMPTARGET(__udivdi3)    /* The dividend is hella negative.  */
 b70:	f61ff0ef          	jal	ad0 <__hidden___udivsi3>
  neg    a0, a1
 b74:	40b00533          	neg	a0,a1
  jr     t0
 b78:	00028067          	jr	t0
