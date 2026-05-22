
main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__crt0_entry>:
       0:	f14020f3          	csrr	ra,mhartid
       4:	80010217          	auipc	tp,0x80010
       8:	ffc20213          	addi	tp,tp,-4 # 80010000 <__crt0_stack_top>
       c:	ff027113          	andi	sp,tp,-16
      10:	80000197          	auipc	gp,0x80000
      14:	7f018193          	addi	gp,gp,2032 # 80000800 <__global_pointer$>
      18:	000022b7          	lui	t0,0x2
      1c:	80028293          	addi	t0,t0,-2048 # 1800 <portable_fini+0x88>
      20:	30029073          	csrw	mstatus,t0
      24:	00000317          	auipc	t1,0x0
      28:	15030313          	addi	t1,t1,336 # 174 <__crt0_panic>
      2c:	30531073          	csrw	mtvec,t1
      30:	30401073          	csrw	mie,zero
      34:	0000b397          	auipc	t2,0xb
      38:	f8c38393          	addi	t2,t2,-116 # afc0 <__crt0_copy_data_src_begin>
      3c:	80000417          	auipc	s0,0x80000
      40:	fc440413          	addi	s0,s0,-60 # 80000000 <__malloc_av_>
      44:	80000497          	auipc	s1,0x80000
      48:	52848493          	addi	s1,s1,1320 # 8000056c <__crt0_copy_data_dst_end>
      4c:	80000517          	auipc	a0,0x80000
      50:	52450513          	addi	a0,a0,1316 # 80000570 <num_hpm_cnts_global>
      54:	80000597          	auipc	a1,0x80000
      58:	7b858593          	addi	a1,a1,1976 # 8000080c <__crt0_bss_end>
      5c:	4601                	li	a2,0
      5e:	4681                	li	a3,0
      60:	4701                	li	a4,0
      62:	4781                	li	a5,0
      64:	4801                	li	a6,0
      66:	4881                	li	a7,0
      68:	4901                	li	s2,0
      6a:	4981                	li	s3,0
      6c:	4a01                	li	s4,0
      6e:	4a81                	li	s5,0
      70:	4b01                	li	s6,0
      72:	4b81                	li	s7,0
      74:	4c01                	li	s8,0
      76:	4c81                	li	s9,0
      78:	4d01                	li	s10,0
      7a:	4d81                	li	s11,0
      7c:	4e01                	li	t3,0
      7e:	4e81                	li	t4,0
      80:	4f01                	li	t5,0
      82:	4f81                	li	t6,0

00000084 <__crt0_smp_check>:
      84:	04008263          	beqz	ra,c8 <__crt0_data_copy>

00000088 <__crt0_smp_setup>:
      88:	00000797          	auipc	a5,0x0
      8c:	01c78793          	addi	a5,a5,28 # a4 <__crt0_smp_wakeup>
      90:	30579073          	csrw	mtvec,a5
      94:	30445073          	csrwi	mie,8
      98:	30046073          	csrsi	mstatus,8

0000009c <__crt0_smp_sleep>:
      9c:	10500073          	wfi
      a0:	bff5                	j	9c <__crt0_smp_sleep>
      a2:	0001                	nop

000000a4 <__crt0_smp_wakeup>:
      a4:	00000797          	auipc	a5,0x0
      a8:	0d078793          	addi	a5,a5,208 # 174 <__crt0_panic>
      ac:	30579073          	csrw	mtvec,a5
      b0:	30405073          	csrwi	mie,0
      b4:	fff44737          	lui	a4,0xfff44
      b8:	00872103          	lw	sp,8(a4) # fff44008 <__crt0_stack_top+0x7ff34008>
      bc:	4750                	lw	a2,12(a4)
      be:	fff40737          	lui	a4,0xfff40
      c2:	00072223          	sw	zero,4(a4) # fff40004 <__crt0_stack_top+0x7ff30004>
      c6:	a881                	j	116 <__crt0_main_entry>

000000c8 <__crt0_data_copy>:
      c8:	00838b63          	beq	t2,s0,de <__crt0_bss_clear>
      cc:	00945963          	bge	s0,s1,de <__crt0_bss_clear>

000000d0 <__crt0_data_copy_loop>:
      d0:	0003a783          	lw	a5,0(t2)
      d4:	c01c                	sw	a5,0(s0)
      d6:	0391                	addi	t2,t2,4
      d8:	0411                	addi	s0,s0,4
      da:	fe944be3          	blt	s0,s1,d0 <__crt0_data_copy_loop>

000000de <__crt0_bss_clear>:
      de:	00b55763          	bge	a0,a1,ec <__crt0_bss_clear_end>

000000e2 <__crt0_bss_clear_loop>:
      e2:	00052023          	sw	zero,0(a0)
      e6:	0511                	addi	a0,a0,4
      e8:	feb54de3          	blt	a0,a1,e2 <__crt0_bss_clear_loop>

000000ec <__crt0_bss_clear_end>:
// (t0-t6, a0-a7, ra). Loop counters use s0/s1 (callee-saved), which are
// preserved by the called functions according to the RISC-V calling convention.
// ************************************************************************************************
#ifndef MAKE_BOOTLOADER
__crt0_constructors_primary:
  la    x8, __init_array_start
      ec:	0000a417          	auipc	s0,0xa
      f0:	c4440413          	addi	s0,s0,-956 # 9d30 <__fini_array_end>
  la    x9, __init_array_end
      f4:	0000a497          	auipc	s1,0xa
      f8:	c3c48493          	addi	s1,s1,-964 # 9d30 <__fini_array_end>

000000fc <__crt0_constructors>:

__crt0_constructors:
  bge   x8, x9, __crt0_constructors_end  // skip if empty
      fc:	00945963          	bge	s0,s1,10e <__crt0_constructors_end>

00000100 <__crt0_constructors_loop>:

__crt0_constructors_loop:
  lw    x1, 0(x8)
     100:	00042083          	lw	ra,0(s0)
  jalr  x1, 0(x1) // call constructor function; put return address in ra
     104:	000080e7          	jalr	ra
  addi  x8, x8, 4
     108:	0411                	addi	s0,s0,4
  blt   x8, x9, __crt0_constructors_loop
     10a:	fe944be3          	blt	s0,s1,100 <__crt0_constructors_loop>

0000010e <__crt0_constructors_end>:

// ************************************************************************************************
// Setup arguments and call main function.
// ************************************************************************************************
__crt0_main_primary:
  la    x12, main         // primary core's (core0) entry point (#1169)
     10e:	00001617          	auipc	a2,0x1
     112:	96a60613          	addi	a2,a2,-1686 # a78 <main>

00000116 <__crt0_main_entry>:
__crt0_main_entry:
  fence                   // synchronize loads/stores
     116:	0ff0000f          	fence
  fence.i                 // synchronize instruction fetch
     11a:	0000100f          	fence.i
  li    x10, 0            // x10 = a0 = argc = 0
     11e:	4501                	li	a0,0
  li    x11, 0            // x11 = a1 = argv = 0
     120:	4581                	li	a1,0
  jalr  x1, x12           // call actual main function
     122:	000600e7          	jalr	a2

00000126 <__crt0_main_exit>:

.global __crt0_main_exit
__crt0_main_exit:         // main's "return" and "exit" will arrive here
  csrci mstatus, 1 << 3   // disable machine-level interrupts
     126:	30047073          	csrci	mstatus,8
  csrw  mie, zero         // disable all interrupt sources
     12a:	30401073          	csrw	mie,zero
  la    x11, __crt0_panic // re-install default crt0 trap handler
     12e:	00000597          	auipc	a1,0x0
     132:	04658593          	addi	a1,a1,70 # 174 <__crt0_panic>
  csrw  mtvec, x11
     136:	30559073          	csrw	mtvec,a1
  csrw  mscratch, x10     // backup main's return code to mscratch (for debugger or destructors)
     13a:	34051073          	csrw	mscratch,a0

0000013e <__crt0_destructors_primary>:
// (t0-t6, a0-a7, ra). Loop counters use s0/s1 (callee-saved), which are
// preserved by the called functions according to the RISC-V calling convention.
// ************************************************************************************************
#ifndef MAKE_BOOTLOADER
__crt0_destructors_primary:
  csrr  x8, mhartid
     13e:	f1402473          	csrr	s0,mhartid
  bnez  x8, __crt0_destructors_end // execute destructors only on core 0
     142:	e015                	bnez	s0,166 <__crt0_destructors_end>

  la    x8, __fini_array_start
     144:	0000a417          	auipc	s0,0xa
     148:	bec40413          	addi	s0,s0,-1044 # 9d30 <__fini_array_end>
  la    x9, __fini_array_end
     14c:	0000a497          	auipc	s1,0xa
     150:	be448493          	addi	s1,s1,-1052 # 9d30 <__fini_array_end>

00000154 <__crt0_destructors>:

__crt0_destructors:
  bge   x8, x9, __crt0_destructors_end
     154:	00945963          	bge	s0,s1,166 <__crt0_destructors_end>

00000158 <__crt0_destructors_loop>:

__crt0_destructors_loop:
  lw    x1, 0(x8)
     158:	00042083          	lw	ra,0(s0)
  jalr  x1, 0(x1)                  // call destructor function; put return address in ra
     15c:	000080e7          	jalr	ra
  addi  x8, x8, 4
     160:	0411                	addi	s0,s0,4
  blt   x8, x9, __crt0_destructors_loop
     162:	fe944be3          	blt	s0,s1,158 <__crt0_destructors_loop>

00000166 <__crt0_destructors_end>:
// ************************************************************************************************
// Halt CPU. Bootloader should never return; if it does -> panic.
// ************************************************************************************************
#ifndef MAKE_BOOTLOADER
__crt0_halting:
  csrr x8, mhartid
     166:	f1402473          	csrr	s0,mhartid
  bnez x8, __crt0_halt
     16a:	e011                	bnez	s0,16e <__crt0_halt>

0000016c <__crt0_halt_primary>:

.global __crt0_halt_primary
__crt0_halt_primary:
  ebreak     // try to transfer control to external debugger; otherwise -> panic
     16c:	9002                	ebreak

0000016e <__crt0_halt>:

.global __crt0_halt
__crt0_halt: // same code as trap handler but with different label/address to track origin
  wfi
     16e:	10500073          	wfi
  j __crt0_halt
     172:	bff5                	j	16e <__crt0_halt>

00000174 <__crt0_panic>:
// ************************************************************************************************
.balign 4     // trap handler has to be 32-bit aligned
.option norvc // no compressed instruction to make this valid code on any platform configuration
.global __crt0_panic
__crt0_panic:
  wfi
     174:	10500073          	wfi
  j __crt0_panic
     178:	ffdff06f          	j	174 <__crt0_panic>

0000017c <cmp_complex>:
                               core_results *res);

ee_s16
calc_func(ee_s16 *pdata, core_results *res)
{
    ee_s16 data = *pdata;
     17c:	00051803          	lh	a6,0(a0)

        Can be used by mergesort.
*/
ee_s32
cmp_complex(list_data *a, list_data *b, core_results *res)
{
     180:	1101                	addi	sp,sp,-32
     182:	cc22                	sw	s0,24(sp)
          & 1;  /* bit 7 indicates if the function result has been cached */
     184:	40785793          	srai	a5,a6,0x7
{
     188:	ca26                	sw	s1,20(sp)
     18a:	ce06                	sw	ra,28(sp)
    if (optype) /* if cached, use cache */
     18c:	8b85                	andi	a5,a5,1
{
     18e:	84ae                	mv	s1,a1
     190:	8432                	mv	s0,a2
        return (data & 0x007f);
     192:	07f87893          	andi	a7,a6,127
    if (optype) /* if cached, use cache */
     196:	e3d1                	bnez	a5,21a <cmp_complex+0x9e>
               & 0xf);       /* bits 3-6 is specific data for the operation */
     198:	40385713          	srai	a4,a6,0x3
        ee_s16 dtype
     19c:	8b3d                	andi	a4,a4,15
     19e:	00471793          	slli	a5,a4,0x4
     1a2:	00f70633          	add	a2,a4,a5
     1a6:	c84a                	sw	s2,16(sp)
        ee_s16 flag = data & 0x7; /* bits 0-2 is type of function to perform */
     1a8:	00787693          	andi	a3,a6,7
                retval = core_bench_state(res->size,
     1ac:	03845783          	lhu	a5,56(s0)
     1b0:	832a                	mv	t1,a0
        dtype |= dtype << 4; /* replicate the lower 4 bits to get an 8b value */
     1b2:	8732                	mv	a4,a2
        switch (flag)
     1b4:	14068563          	beqz	a3,2fe <cmp_complex+0x182>
        res->crc = crcu16(retval, res->crc);
     1b8:	01081513          	slli	a0,a6,0x10
        switch (flag)
     1bc:	4605                	li	a2,1
        res->crc = crcu16(retval, res->crc);
     1be:	8141                	srli	a0,a0,0x10
                retval = data;
     1c0:	8942                	mv	s2,a6
        switch (flag)
     1c2:	02c69863          	bne	a3,a2,1f2 <cmp_complex+0x76>
                retval = core_bench_matrix(&(res->mat), dtype, res->crc);
     1c6:	863e                	mv	a2,a5
     1c8:	85ba                	mv	a1,a4
     1ca:	02840513          	addi	a0,s0,40
     1ce:	c61a                	sw	t1,12(sp)
     1d0:	c442                	sw	a6,8(sp)
     1d2:	348010ef          	jal	151a <core_bench_matrix>
                if (res->crcmatrix == 0)
     1d6:	03c45783          	lhu	a5,60(s0)
                retval = core_bench_matrix(&(res->mat), dtype, res->crc);
     1da:	01051913          	slli	s2,a0,0x10
                if (res->crcmatrix == 0)
     1de:	4822                	lw	a6,8(sp)
     1e0:	4332                	lw	t1,12(sp)
                retval = core_bench_matrix(&(res->mat), dtype, res->crc);
     1e2:	41095913          	srai	s2,s2,0x10
                if (res->crcmatrix == 0)
     1e6:	14079763          	bnez	a5,334 <cmp_complex+0x1b8>
                    res->crcmatrix = retval;
     1ea:	03845783          	lhu	a5,56(s0)
     1ee:	02a41e23          	sh	a0,60(s0)
        res->crc = crcu16(retval, res->crc);
     1f2:	85be                	mv	a1,a5
     1f4:	c61a                	sw	t1,12(sp)
     1f6:	c442                	sw	a6,8(sp)
     1f8:	43b010ef          	jal	1e32 <crcu16>
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
     1fc:	4822                	lw	a6,8(sp)
        retval &= 0x007f;
     1fe:	07f97893          	andi	a7,s2,127
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
     202:	4332                	lw	t1,12(sp)
     204:	f0087813          	andi	a6,a6,-256
     208:	0108e833          	or	a6,a7,a6
     20c:	4942                	lw	s2,16(sp)
     20e:	08086813          	ori	a6,a6,128
        res->crc = crcu16(retval, res->crc);
     212:	02a41c23          	sh	a0,56(s0)
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
     216:	01031023          	sh	a6,0(t1)
    ee_s16 data = *pdata;
     21a:	00049803          	lh	a6,0(s1)
          & 1;  /* bit 7 indicates if the function result has been cached */
     21e:	40785793          	srai	a5,a6,0x7
    if (optype) /* if cached, use cache */
     222:	8b85                	andi	a5,a5,1
     224:	cb91                	beqz	a5,238 <cmp_complex+0xbc>
    ee_s16 val1 = calc_func(&(a->data16), res);
    ee_s16 val2 = calc_func(&(b->data16), res);
    return val1 - val2;
}
     226:	40f2                	lw	ra,28(sp)
     228:	4462                	lw	s0,24(sp)
        return (data & 0x007f);
     22a:	07f87793          	andi	a5,a6,127
}
     22e:	44d2                	lw	s1,20(sp)
     230:	40f88533          	sub	a0,a7,a5
     234:	6105                	addi	sp,sp,32
     236:	8082                	ret
               & 0xf);       /* bits 3-6 is specific data for the operation */
     238:	40385713          	srai	a4,a6,0x3
        ee_s16 dtype
     23c:	8b3d                	andi	a4,a4,15
     23e:	00471793          	slli	a5,a4,0x4
     242:	00f70633          	add	a2,a4,a5
     246:	c84a                	sw	s2,16(sp)
        ee_s16 flag = data & 0x7; /* bits 0-2 is type of function to perform */
     248:	00787693          	andi	a3,a6,7
                retval = core_bench_state(res->size,
     24c:	03845783          	lhu	a5,56(s0)
        dtype |= dtype << 4; /* replicate the lower 4 bits to get an 8b value */
     250:	8732                	mv	a4,a2
        switch (flag)
     252:	caa5                	beqz	a3,2c2 <cmp_complex+0x146>
        res->crc = crcu16(retval, res->crc);
     254:	01081513          	slli	a0,a6,0x10
        switch (flag)
     258:	4605                	li	a2,1
        res->crc = crcu16(retval, res->crc);
     25a:	8141                	srli	a0,a0,0x10
                retval = data;
     25c:	8942                	mv	s2,a6
        switch (flag)
     25e:	02c69763          	bne	a3,a2,28c <cmp_complex+0x110>
                retval = core_bench_matrix(&(res->mat), dtype, res->crc);
     262:	863e                	mv	a2,a5
     264:	85ba                	mv	a1,a4
     266:	02840513          	addi	a0,s0,40
     26a:	c646                	sw	a7,12(sp)
     26c:	c442                	sw	a6,8(sp)
     26e:	2ac010ef          	jal	151a <core_bench_matrix>
                if (res->crcmatrix == 0)
     272:	03c45783          	lhu	a5,60(s0)
                retval = core_bench_matrix(&(res->mat), dtype, res->crc);
     276:	01051913          	slli	s2,a0,0x10
                if (res->crcmatrix == 0)
     27a:	4822                	lw	a6,8(sp)
     27c:	48b2                	lw	a7,12(sp)
                retval = core_bench_matrix(&(res->mat), dtype, res->crc);
     27e:	41095913          	srai	s2,s2,0x10
                if (res->crcmatrix == 0)
     282:	ebbd                	bnez	a5,2f8 <cmp_complex+0x17c>
                    res->crcmatrix = retval;
     284:	03845783          	lhu	a5,56(s0)
     288:	02a41e23          	sh	a0,60(s0)
        res->crc = crcu16(retval, res->crc);
     28c:	85be                	mv	a1,a5
     28e:	c646                	sw	a7,12(sp)
     290:	c442                	sw	a6,8(sp)
     292:	3a1010ef          	jal	1e32 <crcu16>
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
     296:	4822                	lw	a6,8(sp)
        retval &= 0x007f;
     298:	07f97793          	andi	a5,s2,127
        res->crc = crcu16(retval, res->crc);
     29c:	02a41c23          	sh	a0,56(s0)
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
     2a0:	f0087813          	andi	a6,a6,-256
     2a4:	48b2                	lw	a7,12(sp)
}
     2a6:	40f2                	lw	ra,28(sp)
     2a8:	4462                	lw	s0,24(sp)
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
     2aa:	0107e833          	or	a6,a5,a6
     2ae:	08086813          	ori	a6,a6,128
     2b2:	01049023          	sh	a6,0(s1)
     2b6:	4942                	lw	s2,16(sp)
}
     2b8:	44d2                	lw	s1,20(sp)
     2ba:	40f88533          	sub	a0,a7,a5
     2be:	6105                	addi	sp,sp,32
     2c0:	8082                	ret
                if (dtype < 0x22) /* set min period for bit corruption */
     2c2:	02100693          	li	a3,33
     2c6:	00c6e463          	bltu	a3,a2,2ce <cmp_complex+0x152>
                    dtype = 0x22;
     2ca:	02200713          	li	a4,34
                retval = core_bench_state(res->size,
     2ce:	00241683          	lh	a3,2(s0)
     2d2:	00041603          	lh	a2,0(s0)
     2d6:	484c                	lw	a1,20(s0)
     2d8:	4c08                	lw	a0,24(s0)
     2da:	c646                	sw	a7,12(sp)
     2dc:	c442                	sw	a6,8(sp)
     2de:	1a1010ef          	jal	1c7e <core_bench_state>
                if (res->crcstate == 0)
     2e2:	03e45783          	lhu	a5,62(s0)
                retval = core_bench_state(res->size,
     2e6:	01051913          	slli	s2,a0,0x10
                if (res->crcstate == 0)
     2ea:	4822                	lw	a6,8(sp)
     2ec:	48b2                	lw	a7,12(sp)
                retval = core_bench_state(res->size,
     2ee:	41095913          	srai	s2,s2,0x10
                if (res->crcstate == 0)
     2f2:	e399                	bnez	a5,2f8 <cmp_complex+0x17c>
                    res->crcstate = retval;
     2f4:	02a41f23          	sh	a0,62(s0)
     2f8:	03845783          	lhu	a5,56(s0)
     2fc:	bf41                	j	28c <cmp_complex+0x110>
                if (dtype < 0x22) /* set min period for bit corruption */
     2fe:	02100693          	li	a3,33
     302:	00c6e463          	bltu	a3,a2,30a <cmp_complex+0x18e>
                    dtype = 0x22;
     306:	02200713          	li	a4,34
                retval = core_bench_state(res->size,
     30a:	00241683          	lh	a3,2(s0)
     30e:	00041603          	lh	a2,0(s0)
     312:	484c                	lw	a1,20(s0)
     314:	4c08                	lw	a0,24(s0)
     316:	c61a                	sw	t1,12(sp)
     318:	c442                	sw	a6,8(sp)
     31a:	165010ef          	jal	1c7e <core_bench_state>
                if (res->crcstate == 0)
     31e:	03e45783          	lhu	a5,62(s0)
                retval = core_bench_state(res->size,
     322:	01051913          	slli	s2,a0,0x10
                if (res->crcstate == 0)
     326:	4822                	lw	a6,8(sp)
     328:	4332                	lw	t1,12(sp)
                retval = core_bench_state(res->size,
     32a:	41095913          	srai	s2,s2,0x10
                if (res->crcstate == 0)
     32e:	e399                	bnez	a5,334 <cmp_complex+0x1b8>
                    res->crcstate = retval;
     330:	02a41f23          	sh	a0,62(s0)
     334:	03845783          	lhu	a5,56(s0)
     338:	bd6d                	j	1f2 <cmp_complex+0x76>

0000033a <core_bench_list>:
core_bench_list(core_results *res, ee_s16 finder_idx)
{
    ee_u16     retval = 0;
    ee_u16     found = 0, missed = 0;
    list_head *list     = res->list;
    ee_s16     find_num = res->seed3;
     33a:	00451e03          	lh	t3,4(a0)
{
     33e:	7139                	addi	sp,sp,-64
     340:	dc22                	sw	s0,56(sp)
     342:	d05a                	sw	s6,32(sp)
     344:	de06                	sw	ra,60(sp)
     346:	da26                	sw	s1,52(sp)
     348:	d84a                	sw	s2,48(sp)
     34a:	d64e                	sw	s3,44(sp)
     34c:	d452                	sw	s4,40(sp)
     34e:	d256                	sw	s5,36(sp)
     350:	ce5e                	sw	s7,28(sp)
     352:	cc62                	sw	s8,24(sp)
     354:	ca66                	sw	s9,20(sp)
     356:	c86a                	sw	s10,16(sp)
     358:	c66e                	sw	s11,12(sp)
    list_head *list     = res->list;
     35a:	5140                	lw	s0,36(a0)
{
     35c:	4b01                	li	s6,0
    ee_s16     i;

    info.idx = finder_idx;
    /* find <find_num> values in the list, and change the list each time
     * (reverse and cache if value found) */
    for (i = 0; i < find_num; i++)
     35e:	39c05e63          	blez	t3,6fa <core_bench_list+0x3c0>
        Found item, or NULL if not found.
*/
list_head *
core_list_find(list_head *list, list_data *info)
{
    if (info->idx >= 0)
     362:	3805cf63          	bltz	a1,700 <core_bench_list+0x3c6>
    {
        while (list && (list->info->idx != info->idx))
     366:	3a040863          	beqz	s0,716 <core_bench_list+0x3dc>
     36a:	8c2e                	mv	s8,a1
     36c:	4801                	li	a6,0
     36e:	4e81                	li	t4,0
     370:	4881                	li	a7,0
     372:	4301                	li	t1,0
     374:	87a2                	mv	a5,s0
     376:	a021                	j	37e <core_bench_list+0x44>
            list = list->next;
     378:	439c                	lw	a5,0(a5)
        while (list && (list->info->idx != info->idx))
     37a:	24078063          	beqz	a5,5ba <core_bench_list+0x280>
     37e:	43d8                	lw	a4,4(a5)
     380:	00271603          	lh	a2,2(a4)
     384:	ff861ae3          	bne	a2,s8,378 <core_bench_list+0x3e>
*/

list_head *
core_list_reverse(list_head *list)
{
    list_head *next = NULL, *tmp;
     388:	4681                	li	a3,0
     38a:	a011                	j	38e <core_bench_list+0x54>
     38c:	843a                	mv	s0,a4
    while (list)
    {
        tmp        = list->next;
     38e:	4018                	lw	a4,0(s0)
        list->next = next;
     390:	c014                	sw	a3,0(s0)
    while (list)
     392:	86a2                	mv	a3,s0
     394:	ff65                	bnez	a4,38c <core_bench_list+0x52>
        if (this_find == NULL)
     396:	22078463          	beqz	a5,5be <core_bench_list+0x284>
            if (this_find->info->data16 & 0x1) /* use found value */
     39a:	43d8                	lw	a4,4(a5)
            found++;
     39c:	0885                	addi	a7,a7,1
            if (this_find->info->data16 & 0x1) /* use found value */
     39e:	00071703          	lh	a4,0(a4)
     3a2:	00177693          	andi	a3,a4,1
     3a6:	c681                	beqz	a3,3ae <core_bench_list+0x74>
                retval += (this_find->info->data16 >> 9) & 1;
     3a8:	8725                	srai	a4,a4,0x9
     3aa:	8b05                	andi	a4,a4,1
     3ac:	933a                	add	t1,t1,a4
            if (this_find->next != NULL)
     3ae:	4398                	lw	a4,0(a5)
     3b0:	c711                	beqz	a4,3bc <core_bench_list+0x82>
                this_find->next = finder->next;
     3b2:	4314                	lw	a3,0(a4)
     3b4:	c394                	sw	a3,0(a5)
                finder->next    = list->next;
     3b6:	401c                	lw	a5,0(s0)
     3b8:	c31c                	sw	a5,0(a4)
                list->next      = finder;
     3ba:	c018                	sw	a4,0(s0)
        if (info.idx >= 0)
     3bc:	00180793          	addi	a5,a6,1
    for (i = 0; i < find_num; i++)
     3c0:	01079813          	slli	a6,a5,0x10
     3c4:	41085813          	srai	a6,a6,0x10
        if (info.idx >= 0)
     3c8:	04064263          	bltz	a2,40c <core_bench_list+0xd2>
            info.idx++;
     3cc:	0605                	addi	a2,a2,1
     3ce:	01061c13          	slli	s8,a2,0x10
     3d2:	07c2                	slli	a5,a5,0x10
     3d4:	410c5c13          	srai	s8,s8,0x10
    for (i = 0; i < find_num; i++)
     3d8:	83c1                	srli	a5,a5,0x10
     3da:	050e0163          	beq	t3,a6,41c <core_bench_list+0xe2>
        info.data16 = (i & 0xff);
     3de:	0ff7fb13          	zext.b	s6,a5
     3e2:	86da                	mv	a3,s6
    if (info->idx >= 0)
     3e4:	87a2                	mv	a5,s0
     3e6:	7661                	lui	a2,0xffff8
     3e8:	f80c56e3          	bgez	s8,374 <core_bench_list+0x3a>
        while (list && ((list->info->data16 & 0xff) != info->data16))
     3ec:	43d8                	lw	a4,4(a5)
     3ee:	00074b03          	lbu	s6,0(a4)
     3f2:	f8db0be3          	beq	s6,a3,388 <core_bench_list+0x4e>
            list = list->next;
     3f6:	439c                	lw	a5,0(a5)
        while (list && ((list->info->data16 & 0xff) != info->data16))
     3f8:	cb81                	beqz	a5,408 <core_bench_list+0xce>
     3fa:	43d8                	lw	a4,4(a5)
     3fc:	00074b03          	lbu	s6,0(a4)
     400:	f8db04e3          	beq	s6,a3,388 <core_bench_list+0x4e>
            list = list->next;
     404:	439c                	lw	a5,0(a5)
        while (list && ((list->info->data16 & 0xff) != info->data16))
     406:	fbf5                	bnez	a5,3fa <core_bench_list+0xc0>
     408:	8b36                	mv	s6,a3
     40a:	bfbd                	j	388 <core_bench_list+0x4e>
    for (i = 0; i < find_num; i++)
     40c:	07c2                	slli	a5,a5,0x10
     40e:	83c1                	srli	a5,a5,0x10
        info.data16 = (i & 0xff);
     410:	0ff7f693          	zext.b	a3,a5
    for (i = 0; i < find_num; i++)
     414:	8c32                	mv	s8,a2
        info.data16 = (i & 0xff);
     416:	87a2                	mv	a5,s0
    for (i = 0; i < find_num; i++)
     418:	ff0e11e3          	bne	t3,a6,3fa <core_bench_list+0xc0>
    retval += found * 4 - missed;
     41c:	00289793          	slli	a5,a7,0x2
     420:	41d787b3          	sub	a5,a5,t4
     424:	933e                	add	t1,t1,a5
     426:	01031493          	slli	s1,t1,0x10
     42a:	80c1                	srli	s1,s1,0x10
     42c:	8a2a                	mv	s4,a0
    if (finder_idx > 0)
     42e:	1cb04d63          	bgtz	a1,608 <core_bench_list+0x2ce>
    remover = core_list_remove(list->next);
     432:	401c                	lw	a5,0(s0)
    list_head *ret = item->next;
     434:	8922                	mv	s2,s0
     436:	0007a983          	lw	s3,0(a5)
    tmp        = item->info;
     43a:	43d8                	lw	a4,4(a5)
    item->info = ret->info;
     43c:	0049a603          	lw	a2,4(s3)
    item->next = item->next->next;
     440:	0009a683          	lw	a3,0(s3)
    item->info = ret->info;
     444:	c3d0                	sw	a2,4(a5)
    ret->info  = tmp;
     446:	00e9a223          	sw	a4,4(s3)
    item->next = item->next->next;
     44a:	c394                	sw	a3,0(a5)
    ret->next  = NULL;
     44c:	0009a023          	sw	zero,0(s3)
    if (info->idx >= 0)
     450:	0e0c4f63          	bltz	s8,54e <core_bench_list+0x214>
        while (list && (list->info->idx != info->idx))
     454:	00492783          	lw	a5,4(s2)
     458:	00279783          	lh	a5,2(a5)
     45c:	01878c63          	beq	a5,s8,474 <core_bench_list+0x13a>
            list = list->next;
     460:	00092903          	lw	s2,0(s2)
        while (list && (list->info->idx != info->idx))
     464:	26090b63          	beqz	s2,6da <core_bench_list+0x3a0>
     468:	00492783          	lw	a5,4(s2)
     46c:	00279783          	lh	a5,2(a5)
     470:	ff8798e3          	bne	a5,s8,460 <core_bench_list+0x126>
        retval = crc16(list->info->data16, retval);
     474:	405c                	lw	a5,4(s0)
     476:	85a6                	mv	a1,s1
     478:	00079503          	lh	a0,0(a5)
     47c:	6b1010ef          	jal	232c <crc16>
        finder = finder->next;
     480:	00092903          	lw	s2,0(s2)
        retval = crc16(list->info->data16, retval);
     484:	84aa                	mv	s1,a0
    while (finder)
     486:	fe0917e3          	bnez	s2,474 <core_bench_list+0x13a>
    remover = core_list_undo_remove(remover, list->next);
     48a:	00042903          	lw	s2,0(s0)
    tmp                 = item_removed->info;
     48e:	0049a703          	lw	a4,4(s3)
    item_removed->info  = item_modified->info;
     492:	00492683          	lw	a3,4(s2)
    item_removed->next  = item_modified->next;
     496:	00092783          	lw	a5,0(s2)
core_list_mergesort(list_head *list, list_cmp cmp, core_results *res)
{
    list_head *p, *q, *e, *tail;
    ee_s32     insize, nmerges, psize, qsize, i;

    insize = 1;
     49a:	4305                	li	t1,1
    item_removed->info  = item_modified->info;
     49c:	00d9a223          	sw	a3,4(s3)
    item_modified->info = tmp;
     4a0:	00e92223          	sw	a4,4(s2)
    item_removed->next  = item_modified->next;
     4a4:	00f9a023          	sw	a5,0(s3)
    item_modified->next = item_removed;
     4a8:	01392023          	sw	s3,0(s2)
        }

        tail->next = NULL;

        /* If we have done only one merge, we're finished. */
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
     4ac:	8e9a                	mv	t4,t1
        while (p)
     4ae:	c46d                	beqz	s0,598 <core_bench_list+0x25e>
        list = NULL;
     4b0:	4901                	li	s2,0
        tail = NULL;
     4b2:	4681                	li	a3,0
        nmerges = 0; /* count number of merges we do in this pass */
     4b4:	4e01                	li	t3,0
            nmerges++; /* there exists a merge to be done */
     4b6:	0e05                	addi	t3,t3,1
            q     = p;
     4b8:	8722                	mv	a4,s0
            psize = 0;
     4ba:	4781                	li	a5,0
            for (i = 0; i < insize; i++)
     4bc:	0067d563          	bge	a5,t1,4c6 <core_bench_list+0x18c>
                q = q->next;
     4c0:	4318                	lw	a4,0(a4)
                psize++;
     4c2:	0785                	addi	a5,a5,1
                if (!q)
     4c4:	ff65                	bnez	a4,4bc <core_bench_list+0x182>
                    list = e;
     4c6:	8622                	mv	a2,s0
     4c8:	859a                	mv	a1,t1
     4ca:	843a                	mv	s0,a4
            while (psize > 0 || (qsize > 0 && q))
     4cc:	02f05063          	blez	a5,4ec <core_bench_list+0x1b2>
                else if (qsize == 0 || !q)
     4d0:	0015b713          	seqz	a4,a1
     4d4:	00143513          	seqz	a0,s0
     4d8:	8f49                	or	a4,a4,a0
     4da:	c305                	beqz	a4,4fa <core_bench_list+0x1c0>
                    psize--;
     4dc:	8736                	mv	a4,a3
     4de:	17fd                	addi	a5,a5,-1
                    e = p;
     4e0:	86b2                	mv	a3,a2
                    p = p->next;
     4e2:	4210                	lw	a2,0(a2)
                if (tail)
     4e4:	cf25                	beqz	a4,55c <core_bench_list+0x222>
                    tail->next = e;
     4e6:	c314                	sw	a3,0(a4)
            while (psize > 0 || (qsize > 0 && q))
     4e8:	fef044e3          	bgtz	a5,4d0 <core_bench_list+0x196>
     4ec:	00803533          	snez	a0,s0
     4f0:	00b02733          	sgtz	a4,a1
     4f4:	8f69                	and	a4,a4,a0
     4f6:	cb49                	beqz	a4,588 <core_bench_list+0x24e>
                if (psize == 0)
     4f8:	cfa5                	beqz	a5,570 <core_bench_list+0x236>
     4fa:	00442883          	lw	a7,4(s0)
                else if (cmp(p->info, q->info, res) <= 0)
     4fe:	4248                	lw	a0,4(a2)
    return a->idx - b->idx;
     500:	00289f03          	lh	t5,2(a7)
        a->data16 = (a->data16 & 0xff00) | (0x00ff & (a->data16 >> 8));
     504:	00051703          	lh	a4,0(a0)
    return a->idx - b->idx;
     508:	00251f83          	lh	t6,2(a0)
        a->data16 = (a->data16 & 0xff00) | (0x00ff & (a->data16 >> 8));
     50c:	01071293          	slli	t0,a4,0x10
     510:	f0077813          	andi	a6,a4,-256
     514:	0182d713          	srli	a4,t0,0x18
     518:	00e86733          	or	a4,a6,a4
     51c:	00e51023          	sh	a4,0(a0)
        b->data16 = (b->data16 & 0xff00) | (0x00ff & (b->data16 >> 8));
     520:	00089703          	lh	a4,0(a7)
     524:	01071813          	slli	a6,a4,0x10
     528:	f0077513          	andi	a0,a4,-256
     52c:	01885713          	srli	a4,a6,0x18
     530:	8f49                	or	a4,a4,a0
     532:	00e89023          	sh	a4,0(a7)
                else if (cmp(p->info, q->info, res) <= 0)
     536:	07ff5463          	bge	t5,t6,59e <core_bench_list+0x264>
                    qsize--;
     53a:	8736                	mv	a4,a3
     53c:	15fd                	addi	a1,a1,-1
                    e = q;
     53e:	86a2                	mv	a3,s0
                    q = q->next;
     540:	4000                	lw	s0,0(s0)
                if (tail)
     542:	f355                	bnez	a4,4e6 <core_bench_list+0x1ac>
     544:	a821                	j	55c <core_bench_list+0x222>
            list = list->next;
     546:	00092903          	lw	s2,0(s2)
        while (list && ((list->info->data16 & 0xff) != info->data16))
     54a:	18090863          	beqz	s2,6da <core_bench_list+0x3a0>
     54e:	00492783          	lw	a5,4(s2)
     552:	0007c783          	lbu	a5,0(a5)
     556:	fefb18e3          	bne	s6,a5,546 <core_bench_list+0x20c>
     55a:	bf29                	j	474 <core_bench_list+0x13a>
                    list = e;
     55c:	8936                	mv	s2,a3
     55e:	b7bd                	j	4cc <core_bench_list+0x192>
            while (psize > 0 || (qsize > 0 && q))
     560:	00803533          	snez	a0,s0
     564:	00b037b3          	snez	a5,a1
                    tail->next = e;
     568:	c298                	sw	a4,0(a3)
            while (psize > 0 || (qsize > 0 && q))
     56a:	8fe9                	and	a5,a5,a0
     56c:	86ba                	mv	a3,a4
     56e:	cf89                	beqz	a5,588 <core_bench_list+0x24e>
     570:	8722                	mv	a4,s0
                    qsize--;
     572:	15fd                	addi	a1,a1,-1
                    q = q->next;
     574:	4000                	lw	s0,0(s0)
                if (tail)
     576:	f6ed                	bnez	a3,560 <core_bench_list+0x226>
            while (psize > 0 || (qsize > 0 && q))
     578:	00803533          	snez	a0,s0
     57c:	00b037b3          	snez	a5,a1
     580:	8fe9                	and	a5,a5,a0
                    list = e;
     582:	893a                	mv	s2,a4
     584:	86ba                	mv	a3,a4
            while (psize > 0 || (qsize > 0 && q))
     586:	f7ed                	bnez	a5,570 <core_bench_list+0x236>
        while (p)
     588:	f51d                	bnez	a0,4b6 <core_bench_list+0x17c>
        tail->next = NULL;
     58a:	0006a023          	sw	zero,0(a3)
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
     58e:	05de0063          	beq	t3,t4,5ce <core_bench_list+0x294>
        p    = list;
     592:	844a                	mv	s0,s2
            return list;

        /* Otherwise repeat, merging lists twice the size */
        insize *= 2;
     594:	0306                	slli	t1,t1,0x1
        while (p)
     596:	fc09                	bnez	s0,4b0 <core_bench_list+0x176>
        tail->next = NULL;
     598:	00002023          	sw	zero,0(zero) # 0 <__crt0_entry>
     59c:	9002                	ebreak
                    p = p->next;
     59e:	4208                	lw	a0,0(a2)
                    psize--;
     5a0:	17fd                	addi	a5,a5,-1
                if (tail)
     5a2:	c691                	beqz	a3,5ae <core_bench_list+0x274>
     5a4:	8736                	mv	a4,a3
                    e = p;
     5a6:	86b2                	mv	a3,a2
                    tail->next = e;
     5a8:	c314                	sw	a3,0(a4)
                    p = p->next;
     5aa:	862a                	mv	a2,a0
                    tail->next = e;
     5ac:	bf35                	j	4e8 <core_bench_list+0x1ae>
                    e = p;
     5ae:	86b2                	mv	a3,a2
                    list = e;
     5b0:	8932                	mv	s2,a2
                    p = p->next;
     5b2:	862a                	mv	a2,a0
            while (psize > 0 || (qsize > 0 && q))
     5b4:	f4f045e3          	bgtz	a5,4fe <core_bench_list+0x1c4>
     5b8:	bf15                	j	4ec <core_bench_list+0x1b2>
     5ba:	8662                	mv	a2,s8
     5bc:	b3f1                	j	388 <core_bench_list+0x4e>
            retval += (list->next->info->data16 >> 8) & 1;
     5be:	401c                	lw	a5,0(s0)
            missed++;
     5c0:	0e85                	addi	t4,t4,1
            retval += (list->next->info->data16 >> 8) & 1;
     5c2:	43dc                	lw	a5,4(a5)
     5c4:	00178783          	lb	a5,1(a5)
     5c8:	8b85                	andi	a5,a5,1
     5ca:	933e                	add	t1,t1,a5
     5cc:	bbc5                	j	3bc <core_bench_list+0x82>
    finder = list->next;
     5ce:	00092403          	lw	s0,0(s2)
    while (finder)
     5d2:	c819                	beqz	s0,5e8 <core_bench_list+0x2ae>
        retval = crc16(list->info->data16, retval);
     5d4:	00492783          	lw	a5,4(s2)
     5d8:	85a6                	mv	a1,s1
     5da:	00079503          	lh	a0,0(a5)
     5de:	54f010ef          	jal	232c <crc16>
        finder = finder->next;
     5e2:	4000                	lw	s0,0(s0)
        retval = crc16(list->info->data16, retval);
     5e4:	84aa                	mv	s1,a0
    while (finder)
     5e6:	f47d                	bnez	s0,5d4 <core_bench_list+0x29a>
}
     5e8:	50f2                	lw	ra,60(sp)
     5ea:	5462                	lw	s0,56(sp)
     5ec:	5942                	lw	s2,48(sp)
     5ee:	59b2                	lw	s3,44(sp)
     5f0:	5a22                	lw	s4,40(sp)
     5f2:	5a92                	lw	s5,36(sp)
     5f4:	5b02                	lw	s6,32(sp)
     5f6:	4bf2                	lw	s7,28(sp)
     5f8:	4c62                	lw	s8,24(sp)
     5fa:	4cd2                	lw	s9,20(sp)
     5fc:	4d42                	lw	s10,16(sp)
     5fe:	4db2                	lw	s11,12(sp)
     600:	8526                	mv	a0,s1
     602:	54d2                	lw	s1,52(sp)
     604:	6121                	addi	sp,sp,64
     606:	8082                	ret
    insize = 1;
     608:	4985                	li	s3,1
        while (p)
     60a:	d459                	beqz	s0,598 <core_bench_list+0x25e>
        list = NULL;
     60c:	4a81                	li	s5,0
        tail = NULL;
     60e:	4d01                	li	s10,0
        nmerges = 0; /* count number of merges we do in this pass */
     610:	4b81                	li	s7,0
            nmerges++; /* there exists a merge to be done */
     612:	0b85                	addi	s7,s7,1
            q     = p;
     614:	87a2                	mv	a5,s0
            psize = 0;
     616:	4901                	li	s2,0
            for (i = 0; i < insize; i++)
     618:	01395563          	bge	s2,s3,622 <core_bench_list+0x2e8>
                q = q->next;
     61c:	439c                	lw	a5,0(a5)
                psize++;
     61e:	0905                	addi	s2,s2,1
                if (!q)
     620:	ffe5                	bnez	a5,618 <core_bench_list+0x2de>
                    list = e;
     622:	8da2                	mv	s11,s0
     624:	8cce                	mv	s9,s3
     626:	843e                	mv	s0,a5
            while (psize > 0 || (qsize > 0 && q))
     628:	03205263          	blez	s2,64c <core_bench_list+0x312>
                else if (qsize == 0 || !q)
     62c:	001cb793          	seqz	a5,s9
     630:	00143693          	seqz	a3,s0
     634:	8fd5                	or	a5,a5,a3
     636:	c39d                	beqz	a5,65c <core_bench_list+0x322>
                    psize--;
     638:	87ea                	mv	a5,s10
     63a:	197d                	addi	s2,s2,-1
                    e = p;
     63c:	8d6e                	mv	s10,s11
                    p = p->next;
     63e:	000dad83          	lw	s11,0(s11)
                if (tail)
     642:	cb8d                	beqz	a5,674 <core_bench_list+0x33a>
                    tail->next = e;
     644:	01a7a023          	sw	s10,0(a5)
            while (psize > 0 || (qsize > 0 && q))
     648:	ff2042e3          	bgtz	s2,62c <core_bench_list+0x2f2>
     64c:	008036b3          	snez	a3,s0
     650:	019027b3          	sgtz	a5,s9
     654:	8ff5                	and	a5,a5,a3
     656:	cba1                	beqz	a5,6a6 <core_bench_list+0x36c>
                if (psize == 0)
     658:	02090063          	beqz	s2,678 <core_bench_list+0x33e>
                else if (cmp(p->info, q->info, res) <= 0)
     65c:	404c                	lw	a1,4(s0)
     65e:	004da503          	lw	a0,4(s11)
     662:	8652                	mv	a2,s4
     664:	3e21                	jal	17c <cmp_complex>
     666:	04a05963          	blez	a0,6b8 <core_bench_list+0x37e>
                    qsize--;
     66a:	87ea                	mv	a5,s10
     66c:	1cfd                	addi	s9,s9,-1
                    e = q;
     66e:	8d22                	mv	s10,s0
                    q = q->next;
     670:	4000                	lw	s0,0(s0)
                if (tail)
     672:	fbe9                	bnez	a5,644 <core_bench_list+0x30a>
                    list = e;
     674:	8aea                	mv	s5,s10
     676:	bf4d                	j	628 <core_bench_list+0x2ee>
     678:	866a                	mv	a2,s10
     67a:	a811                	j	68e <core_bench_list+0x354>
            while (psize > 0 || (qsize > 0 && q))
     67c:	008036b3          	snez	a3,s0
     680:	019037b3          	snez	a5,s9
                    tail->next = e;
     684:	01a62023          	sw	s10,0(a2) # ffff8000 <__crt0_stack_top+0x7ffe8000>
            while (psize > 0 || (qsize > 0 && q))
     688:	8ff5                	and	a5,a5,a3
     68a:	866a                	mv	a2,s10
     68c:	cf89                	beqz	a5,6a6 <core_bench_list+0x36c>
                    q = q->next;
     68e:	8d22                	mv	s10,s0
                    qsize--;
     690:	1cfd                	addi	s9,s9,-1
                    q = q->next;
     692:	4000                	lw	s0,0(s0)
                if (tail)
     694:	f665                	bnez	a2,67c <core_bench_list+0x342>
            while (psize > 0 || (qsize > 0 && q))
     696:	008036b3          	snez	a3,s0
     69a:	019037b3          	snez	a5,s9
     69e:	8ff5                	and	a5,a5,a3
                    list = e;
     6a0:	8aea                	mv	s5,s10
     6a2:	866a                	mv	a2,s10
            while (psize > 0 || (qsize > 0 && q))
     6a4:	f7ed                	bnez	a5,68e <core_bench_list+0x354>
        while (p)
     6a6:	f6b5                	bnez	a3,612 <core_bench_list+0x2d8>
        tail->next = NULL;
     6a8:	000d2023          	sw	zero,0(s10)
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
     6ac:	4785                	li	a5,1
     6ae:	06fb8263          	beq	s7,a5,712 <core_bench_list+0x3d8>
        insize *= 2;
     6b2:	0986                	slli	s3,s3,0x1
        p    = list;
     6b4:	8456                	mv	s0,s5
     6b6:	bf91                	j	60a <core_bench_list+0x2d0>
                    p = p->next;
     6b8:	000da683          	lw	a3,0(s11)
                    psize--;
     6bc:	197d                	addi	s2,s2,-1
                if (tail)
     6be:	000d0863          	beqz	s10,6ce <core_bench_list+0x394>
     6c2:	87ea                	mv	a5,s10
                    e = p;
     6c4:	8d6e                	mv	s10,s11
                    tail->next = e;
     6c6:	01a7a023          	sw	s10,0(a5)
                    p = p->next;
     6ca:	8db6                	mv	s11,a3
                    tail->next = e;
     6cc:	bfb5                	j	648 <core_bench_list+0x30e>
                    e = p;
     6ce:	8d6e                	mv	s10,s11
                    list = e;
     6d0:	8aee                	mv	s5,s11
                    p = p->next;
     6d2:	8db6                	mv	s11,a3
            while (psize > 0 || (qsize > 0 && q))
     6d4:	f92044e3          	bgtz	s2,65c <core_bench_list+0x322>
     6d8:	bf95                	j	64c <core_bench_list+0x312>
        finder = list->next;
     6da:	00042903          	lw	s2,0(s0)
    while (finder)
     6de:	da090ae3          	beqz	s2,492 <core_bench_list+0x158>
        retval = crc16(list->info->data16, retval);
     6e2:	405c                	lw	a5,4(s0)
     6e4:	85a6                	mv	a1,s1
     6e6:	00079503          	lh	a0,0(a5)
     6ea:	443010ef          	jal	232c <crc16>
        finder = finder->next;
     6ee:	00092903          	lw	s2,0(s2)
        retval = crc16(list->info->data16, retval);
     6f2:	84aa                	mv	s1,a0
    while (finder)
     6f4:	d80910e3          	bnez	s2,474 <core_bench_list+0x13a>
     6f8:	bb49                	j	48a <core_bench_list+0x150>
    info.idx = finder_idx;
     6fa:	8c2e                	mv	s8,a1
    for (i = 0; i < find_num; i++)
     6fc:	4481                	li	s1,0
     6fe:	b33d                	j	42c <core_bench_list+0xf2>
        while (list && ((list->info->data16 & 0xff) != info->data16))
     700:	c819                	beqz	s0,716 <core_bench_list+0x3dc>
     702:	862e                	mv	a2,a1
     704:	87a2                	mv	a5,s0
     706:	4801                	li	a6,0
     708:	4e81                	li	t4,0
     70a:	4881                	li	a7,0
     70c:	4681                	li	a3,0
     70e:	4301                	li	t1,0
     710:	b1ed                	j	3fa <core_bench_list+0xc0>
        list = core_list_mergesort(list, cmp_complex, res);
     712:	8456                	mv	s0,s5
     714:	bb39                	j	432 <core_bench_list+0xf8>
            retval += (list->next->info->data16 >> 8) & 1;
     716:	4781                	li	a5,0
     718:	439c                	lw	a5,0(a5)
     71a:	9002                	ebreak

0000071c <core_list_init>:
    ee_u32 size     = (blksize / per_item)
     71c:	ccccd7b7          	lui	a5,0xccccd
     720:	ccd78793          	addi	a5,a5,-819 # cccccccd <__crt0_stack_top+0x4ccbcccd>
     724:	02f537b3          	mulhu	a5,a0,a5
{
     728:	852e                	mv	a0,a1
    list->next         = NULL;
     72a:	0005a023          	sw	zero,0(a1)
    list->info->data16 = (ee_s16)0x8080;
     72e:	76e1                	lui	a3,0xffff8
     730:	08068693          	addi	a3,a3,128 # ffff8080 <__crt0_stack_top+0x7ffe8080>
    if ((*memblock + 1) >= memblock_end)
     734:	01058f13          	addi	t5,a1,16
    memblock++;
     738:	05a1                	addi	a1,a1,8
    ee_u32 size     = (blksize / per_item)
     73a:	8391                	srli	a5,a5,0x4
     73c:	ffe78713          	addi	a4,a5,-2
    list_head *memblock_end  = memblock + size;
     740:	00371813          	slli	a6,a4,0x3
     744:	982a                	add	a6,a6,a0
    list->info         = datablock;
     746:	01052223          	sw	a6,4(a0)
    list_data *datablock_end = datablock + size;
     74a:	00271e13          	slli	t3,a4,0x2
    list->info->data16 = (ee_s16)0x8080;
     74e:	00d81023          	sh	a3,0(a6)
    list->info->idx    = 0x0000;
     752:	00081123          	sh	zero,2(a6)
    list_data *datablock_end = datablock + size;
     756:	9e42                	add	t3,t3,a6
    datablock++;
     758:	00480793          	addi	a5,a6,4
    if ((*memblock + 1) >= memblock_end)
     75c:	290f7863          	bgeu	t5,a6,9ec <core_list_init+0x2d0>
    if ((*datablock + 1) >= datablock_end)
     760:	00880693          	addi	a3,a6,8
     764:	29c6f463          	bgeu	a3,t3,9ec <core_list_init+0x2d0>
     768:	78e1                	lui	a7,0xffff8
    newitem->info = *datablock;
     76a:	c55c                	sw	a5,12(a0)
    newitem->next      = insert_point->next;
     76c:	00052423          	sw	zero,8(a0)
    insert_point->next = newitem;
     770:	c10c                	sw	a1,0(a0)
    to->idx    = from->idx;
     772:	fff8c793          	not	a5,a7
    to->data16 = from->data16;
     776:	58fd                	li	a7,-1
    to->idx    = from->idx;
     778:	00f81323          	sh	a5,6(a6)
    to->data16 = from->data16;
     77c:	01181223          	sh	a7,4(a6)
    for (i = 0; i < size; i++)
     780:	cf39                	beqz	a4,7de <core_list_init+0xc2>
    to->idx    = from->idx;
     782:	7ee1                	lui	t4,0xffff8
    if ((*memblock + 1) >= memblock_end)
     784:	008f0893          	addi	a7,t5,8
    to->idx    = from->idx;
     788:	fffece93          	not	t4,t4
            ee_u16 pat = (ee_u16)(i++ ^ seed); /* get a pseudo random number */
     78c:	4581                	li	a1,0
    if ((*memblock + 1) >= memblock_end)
     78e:	0508f763          	bgeu	a7,a6,7dc <core_list_init+0xc0>
    if ((*datablock + 1) >= datablock_end)
     792:	00468313          	addi	t1,a3,4
     796:	23c37e63          	bgeu	t1,t3,9d2 <core_list_init+0x2b6>
    newitem->next      = insert_point->next;
     79a:	00052f83          	lw	t6,0(a0)
        ee_u16 datpat = ((ee_u16)(seed ^ i) & 0xf);
     79e:	00b647b3          	xor	a5,a2,a1
            = (datpat << 3) | (i & 0x7); /* alternate between algorithms */
     7a2:	078e                	slli	a5,a5,0x3
     7a4:	0075f293          	andi	t0,a1,7
     7a8:	0787f793          	andi	a5,a5,120
    newitem->next      = insert_point->next;
     7ac:	01ff2023          	sw	t6,0(t5)
        ee_u16 dat
     7b0:	0057e7b3          	or	a5,a5,t0
    insert_point->next = newitem;
     7b4:	01e52023          	sw	t5,0(a0)
        info.data16 = (dat << 8) | dat;  /* fill the data with actual data and
     7b8:	00879f93          	slli	t6,a5,0x8
    newitem->info = *datablock;
     7bc:	00df2223          	sw	a3,4(t5)
        info.data16 = (dat << 8) | dat;  /* fill the data with actual data and
     7c0:	97fe                	add	a5,a5,t6
    for (i = 0; i < size; i++)
     7c2:	0585                	addi	a1,a1,1
    to->data16 = from->data16;
     7c4:	00f69023          	sh	a5,0(a3)
    to->idx    = from->idx;
     7c8:	01d69123          	sh	t4,2(a3)
    for (i = 0; i < size; i++)
     7cc:	00b70863          	beq	a4,a1,7dc <core_list_init+0xc0>
     7d0:	8f46                	mv	t5,a7
    if ((*memblock + 1) >= memblock_end)
     7d2:	008f0893          	addi	a7,t5,8
     7d6:	869a                	mv	a3,t1
     7d8:	fb08ede3          	bltu	a7,a6,792 <core_list_init+0x76>
    finder = list->next;
     7dc:	410c                	lw	a1,0(a0)
    while (finder->next != NULL)
     7de:	0005a803          	lw	a6,0(a1)
     7e2:	04080b63          	beqz	a6,838 <core_list_init+0x11c>
        if (i < size / 5) /* first 20% of the list in order */
     7e6:	ccccd7b7          	lui	a5,0xccccd
     7ea:	ccd78793          	addi	a5,a5,-819 # cccccccd <__crt0_stack_top+0x4ccbcccd>
     7ee:	02f73733          	mulhu	a4,a4,a5
                                & (((i & 0x07) << 8)
     7f2:	6e11                	lui	t3,0x4
     7f4:	1e7d                	addi	t3,t3,-1 # 3fff <__neorv32_rte_panic_halt+0x1e5>
        if (i < size / 5) /* first 20% of the list in order */
     7f6:	20000313          	li	t1,512
     7fa:	4785                	li	a5,1
     7fc:	8309                	srli	a4,a4,0x2
     7fe:	a821                	j	816 <core_list_init+0xfa>
    while (finder->next != NULL)
     800:	00082883          	lw	a7,0(a6)
            finder->info->idx = i++;
     804:	00f59123          	sh	a5,2(a1)
    while (finder->next != NULL)
     808:	02088863          	beqz	a7,838 <core_list_init+0x11c>
        if (i < size / 5) /* first 20% of the list in order */
     80c:	85c2                	mv	a1,a6
    while (finder->next != NULL)
     80e:	0785                	addi	a5,a5,1
     810:	10030313          	addi	t1,t1,256
     814:	8846                	mv	a6,a7
            finder->info->idx = i++;
     816:	41cc                	lw	a1,4(a1)
        if (i < size / 5) /* first 20% of the list in order */
     818:	fee7e4e3          	bltu	a5,a4,800 <core_list_init+0xe4>
            ee_u16 pat = (ee_u16)(i++ ^ seed); /* get a pseudo random number */
     81c:	00c7c8b3          	xor	a7,a5,a2
                                & (((i & 0x07) << 8)
     820:	70037693          	andi	a3,t1,1792
                                   | pat); /* make sure the mixed items end up
     824:	0116e6b3          	or	a3,a3,a7
    while (finder->next != NULL)
     828:	00082883          	lw	a7,0(a6)
                                & (((i & 0x07) << 8)
     82c:	01c6f6b3          	and	a3,a3,t3
            finder->info->idx = i++;
     830:	00d59123          	sh	a3,2(a1)
    while (finder->next != NULL)
     834:	fc089ce3          	bnez	a7,80c <core_list_init+0xf0>
    insize = 1;
     838:	4e85                	li	t4,1
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
     83a:	8ff6                	mv	t6,t4
    insize = 1;
     83c:	872a                	mv	a4,a0
     83e:	4581                	li	a1,0
     840:	4501                	li	a0,0
     842:	4f01                	li	t5,0
            nmerges++; /* there exists a merge to be done */
     844:	0f05                	addi	t5,t5,1
            q     = p;
     846:	87ba                	mv	a5,a4
            psize = 0;
     848:	4681                	li	a3,0
            for (i = 0; i < insize; i++)
     84a:	01d6d563          	bge	a3,t4,854 <core_list_init+0x138>
                q = q->next;
     84e:	439c                	lw	a5,0(a5)
                psize++;
     850:	0685                	addi	a3,a3,1
                if (!q)
     852:	ffe5                	bnez	a5,84a <core_list_init+0x12e>
                    list = e;
     854:	863a                	mv	a2,a4
     856:	8876                	mv	a6,t4
     858:	873e                	mv	a4,a5
            while (psize > 0 || (qsize > 0 && q))
     85a:	02d05263          	blez	a3,87e <core_list_init+0x162>
                else if (qsize == 0 || !q)
     85e:	00183793          	seqz	a5,a6
     862:	00173893          	seqz	a7,a4
     866:	0117e7b3          	or	a5,a5,a7
     86a:	c39d                	beqz	a5,890 <core_list_init+0x174>
                    p = p->next;
     86c:	421c                	lw	a5,0(a2)
                    psize--;
     86e:	16fd                	addi	a3,a3,-1
                if (tail)
     870:	14058463          	beqz	a1,9b8 <core_list_init+0x29c>
                    tail->next = e;
     874:	c190                	sw	a2,0(a1)
                    list = e;
     876:	85b2                	mv	a1,a2
     878:	863e                	mv	a2,a5
            while (psize > 0 || (qsize > 0 && q))
     87a:	fed042e3          	bgtz	a3,85e <core_list_init+0x142>
     87e:	00e038b3          	snez	a7,a4
     882:	010027b3          	sgtz	a5,a6
     886:	00f8f7b3          	and	a5,a7,a5
     88a:	10078b63          	beqz	a5,9a0 <core_list_init+0x284>
                if (psize == 0)
     88e:	c2ed                	beqz	a3,970 <core_list_init+0x254>
{
     890:	1141                	addi	sp,sp,-16
     892:	c622                	sw	s0,12(sp)
     894:	00472e03          	lw	t3,4(a4)
                else if (cmp(p->info, q->info, res) <= 0)
     898:	00462883          	lw	a7,4(a2)
    return a->idx - b->idx;
     89c:	002e1283          	lh	t0,2(t3)
        a->data16 = (a->data16 & 0xff00) | (0x00ff & (a->data16 >> 8));
     8a0:	00089783          	lh	a5,0(a7) # ffff8000 <__crt0_stack_top+0x7ffe8000>
    return a->idx - b->idx;
     8a4:	00289383          	lh	t2,2(a7)
        a->data16 = (a->data16 & 0xff00) | (0x00ff & (a->data16 >> 8));
     8a8:	01079413          	slli	s0,a5,0x10
     8ac:	f007f313          	andi	t1,a5,-256
     8b0:	01845793          	srli	a5,s0,0x18
     8b4:	00f367b3          	or	a5,t1,a5
     8b8:	00f89023          	sh	a5,0(a7)
        b->data16 = (b->data16 & 0xff00) | (0x00ff & (b->data16 >> 8));
     8bc:	000e1783          	lh	a5,0(t3)
     8c0:	01079313          	slli	t1,a5,0x10
     8c4:	f007f893          	andi	a7,a5,-256
     8c8:	01835793          	srli	a5,t1,0x18
     8cc:	00f8e7b3          	or	a5,a7,a5
     8d0:	00fe1023          	sh	a5,0(t3)
                else if (cmp(p->info, q->info, res) <= 0)
     8d4:	0272d863          	bge	t0,t2,904 <core_list_init+0x1e8>
                    qsize--;
     8d8:	87b2                	mv	a5,a2
     8da:	187d                	addi	a6,a6,-1
                    e = q;
     8dc:	863a                	mv	a2,a4
                    q = q->next;
     8de:	4318                	lw	a4,0(a4)
                if (tail)
     8e0:	c185                	beqz	a1,900 <core_list_init+0x1e4>
                    tail->next = e;
     8e2:	c190                	sw	a2,0(a1)
                    list = e;
     8e4:	85b2                	mv	a1,a2
     8e6:	863e                	mv	a2,a5
            while (psize > 0 || (qsize > 0 && q))
     8e8:	02d05663          	blez	a3,914 <core_list_init+0x1f8>
                else if (qsize == 0 || !q)
     8ec:	00183793          	seqz	a5,a6
     8f0:	00173893          	seqz	a7,a4
     8f4:	0117e7b3          	or	a5,a5,a7
     8f8:	dfd1                	beqz	a5,894 <core_list_init+0x178>
                    p = p->next;
     8fa:	421c                	lw	a5,0(a2)
                    psize--;
     8fc:	16fd                	addi	a3,a3,-1
                if (tail)
     8fe:	f1f5                	bnez	a1,8e2 <core_list_init+0x1c6>
                    list = e;
     900:	8532                	mv	a0,a2
     902:	b7cd                	j	8e4 <core_list_init+0x1c8>
                    p = p->next;
     904:	421c                	lw	a5,0(a2)
                    psize--;
     906:	16fd                	addi	a3,a3,-1
                if (tail)
     908:	fde9                	bnez	a1,8e2 <core_list_init+0x1c6>
                    e = p;
     90a:	85b2                	mv	a1,a2
                    list = e;
     90c:	8532                	mv	a0,a2
                    p = p->next;
     90e:	863e                	mv	a2,a5
            while (psize > 0 || (qsize > 0 && q))
     910:	f8d044e3          	bgtz	a3,898 <core_list_init+0x17c>
     914:	00e038b3          	snez	a7,a4
     918:	010027b3          	sgtz	a5,a6
     91c:	00f8f7b3          	and	a5,a7,a5
     920:	cb95                	beqz	a5,954 <core_list_init+0x238>
                if (psize == 0)
     922:	faad                	bnez	a3,894 <core_list_init+0x178>
     924:	86ae                	mv	a3,a1
     926:	a811                	j	93a <core_list_init+0x21e>
            while (psize > 0 || (qsize > 0 && q))
     928:	00e038b3          	snez	a7,a4
     92c:	010037b3          	snez	a5,a6
                    tail->next = e;
     930:	c28c                	sw	a1,0(a3)
            while (psize > 0 || (qsize > 0 && q))
     932:	00f8f7b3          	and	a5,a7,a5
     936:	86ae                	mv	a3,a1
     938:	cf91                	beqz	a5,954 <core_list_init+0x238>
                    q = q->next;
     93a:	85ba                	mv	a1,a4
                    qsize--;
     93c:	187d                	addi	a6,a6,-1
                    q = q->next;
     93e:	4318                	lw	a4,0(a4)
                if (tail)
     940:	f6e5                	bnez	a3,928 <core_list_init+0x20c>
            while (psize > 0 || (qsize > 0 && q))
     942:	00e038b3          	snez	a7,a4
     946:	010037b3          	snez	a5,a6
     94a:	00f8f7b3          	and	a5,a7,a5
                    list = e;
     94e:	852e                	mv	a0,a1
     950:	86ae                	mv	a3,a1
            while (psize > 0 || (qsize > 0 && q))
     952:	f7e5                	bnez	a5,93a <core_list_init+0x21e>
        while (p)
     954:	06088463          	beqz	a7,9bc <core_list_init+0x2a0>
            nmerges++; /* there exists a merge to be done */
     958:	0f05                	addi	t5,t5,1
            q     = p;
     95a:	87ba                	mv	a5,a4
            psize = 0;
     95c:	4681                	li	a3,0
            for (i = 0; i < insize; i++)
     95e:	01d6d563          	bge	a3,t4,968 <core_list_init+0x24c>
                q = q->next;
     962:	439c                	lw	a5,0(a5)
                psize++;
     964:	0685                	addi	a3,a3,1
                if (!q)
     966:	ffe5                	bnez	a5,95e <core_list_init+0x242>
                    list = e;
     968:	863a                	mv	a2,a4
     96a:	8876                	mv	a6,t4
     96c:	873e                	mv	a4,a5
     96e:	bfad                	j	8e8 <core_list_init+0x1cc>
     970:	86ae                	mv	a3,a1
     972:	a811                	j	986 <core_list_init+0x26a>
            while (psize > 0 || (qsize > 0 && q))
     974:	00e038b3          	snez	a7,a4
     978:	010037b3          	snez	a5,a6
                    tail->next = e;
     97c:	c28c                	sw	a1,0(a3)
            while (psize > 0 || (qsize > 0 && q))
     97e:	00f8f7b3          	and	a5,a7,a5
     982:	86ae                	mv	a3,a1
     984:	cf91                	beqz	a5,9a0 <core_list_init+0x284>
                    q = q->next;
     986:	85ba                	mv	a1,a4
                    qsize--;
     988:	187d                	addi	a6,a6,-1
                    q = q->next;
     98a:	4318                	lw	a4,0(a4)
                if (tail)
     98c:	f6e5                	bnez	a3,974 <core_list_init+0x258>
            while (psize > 0 || (qsize > 0 && q))
     98e:	00e038b3          	snez	a7,a4
     992:	010037b3          	snez	a5,a6
     996:	00f8f7b3          	and	a5,a7,a5
                    list = e;
     99a:	852e                	mv	a0,a1
     99c:	86ae                	mv	a3,a1
            while (psize > 0 || (qsize > 0 && q))
     99e:	f7e5                	bnez	a5,986 <core_list_init+0x26a>
        while (p)
     9a0:	ea0892e3          	bnez	a7,844 <core_list_init+0x128>
        tail->next = NULL;
     9a4:	0005a023          	sw	zero,0(a1)
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
     9a8:	03ff0b63          	beq	t5,t6,9de <core_list_init+0x2c2>
        insize *= 2;
     9ac:	0e86                	slli	t4,t4,0x1
        while (p)
     9ae:	e80517e3          	bnez	a0,83c <core_list_init+0x120>
        tail->next = NULL;
     9b2:	00002023          	sw	zero,0(zero) # 0 <__crt0_entry>
     9b6:	9002                	ebreak
                    list = e;
     9b8:	8532                	mv	a0,a2
     9ba:	bd75                	j	876 <core_list_init+0x15a>
        tail->next = NULL;
     9bc:	0005a023          	sw	zero,0(a1)
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
     9c0:	03ff0063          	beq	t5,t6,9e0 <core_list_init+0x2c4>
        insize *= 2;
     9c4:	0e86                	slli	t4,t4,0x1
        while (p)
     9c6:	c105                	beqz	a0,9e6 <core_list_init+0x2ca>
    insize = 1;
     9c8:	872a                	mv	a4,a0
     9ca:	4581                	li	a1,0
     9cc:	4501                	li	a0,0
     9ce:	4f01                	li	t5,0
     9d0:	b761                	j	958 <core_list_init+0x23c>
    for (i = 0; i < size; i++)
     9d2:	0585                	addi	a1,a1,1
     9d4:	e0b704e3          	beq	a4,a1,7dc <core_list_init+0xc0>
     9d8:	8336                	mv	t1,a3
     9da:	88fa                	mv	a7,t5
     9dc:	bbd5                	j	7d0 <core_list_init+0xb4>
}
     9de:	8082                	ret
     9e0:	4432                	lw	s0,12(sp)
     9e2:	0141                	addi	sp,sp,16
     9e4:	8082                	ret
        tail->next = NULL;
     9e6:	00002023          	sw	zero,0(zero) # 0 <__crt0_entry>
     9ea:	9002                	ebreak
    memblock++;
     9ec:	8f2e                	mv	t5,a1
    datablock++;
     9ee:	86be                	mv	a3,a5
     9f0:	4581                	li	a1,0
     9f2:	b379                	j	780 <core_list_init+0x64>

000009f4 <iterate>:
                                    (ee_u16)0xe5a4,
                                    (ee_u16)0x8e3a,
                                    (ee_u16)0x8d84 };
void *
iterate(void *pres)
{
     9f4:	1141                	addi	sp,sp,-16
     9f6:	c04a                	sw	s2,0(sp)
    ee_u32        i;
    ee_u16        crc;
    core_results *res        = (core_results *)pres;
    ee_u32        iterations = res->iterations;
     9f8:	01c52903          	lw	s2,28(a0)
{
     9fc:	c606                	sw	ra,12(sp)
    res->crc                 = 0;
     9fe:	02052c23          	sw	zero,56(a0)
     a02:	02052e23          	sw	zero,60(a0)
    res->crclist             = 0;
    res->crcmatrix           = 0;
    res->crcstate            = 0;

    for (i = 0; i < iterations; i++)
     a06:	06090463          	beqz	s2,a6e <iterate+0x7a>
    {
        crc      = core_bench_list(res, 1);
     a0a:	4585                	li	a1,1
     a0c:	c422                	sw	s0,8(sp)
     a0e:	c226                	sw	s1,4(sp)
     a10:	842a                	mv	s0,a0
     a12:	3225                	jal	33a <core_bench_list>
        res->crc = crcu16(crc, res->crc);
     a14:	03845583          	lhu	a1,56(s0)
     a18:	4485                	li	s1,1
     a1a:	418010ef          	jal	1e32 <crcu16>
     a1e:	02a41c23          	sh	a0,56(s0)
        crc      = core_bench_list(res, -1);
     a22:	55fd                	li	a1,-1
     a24:	8522                	mv	a0,s0
     a26:	3a11                	jal	33a <core_bench_list>
        res->crc = crcu16(crc, res->crc);
     a28:	03845583          	lhu	a1,56(s0)
     a2c:	406010ef          	jal	1e32 <crcu16>
     a30:	01051793          	slli	a5,a0,0x10
     a34:	83c1                	srli	a5,a5,0x10
     a36:	0542                	slli	a0,a0,0x10
     a38:	8fc9                	or	a5,a5,a0
     a3a:	dc1c                	sw	a5,56(s0)
    for (i = 0; i < iterations; i++)
     a3c:	02990763          	beq	s2,s1,a6a <iterate+0x76>
        crc      = core_bench_list(res, 1);
     a40:	4585                	li	a1,1
     a42:	8522                	mv	a0,s0
     a44:	38dd                	jal	33a <core_bench_list>
        res->crc = crcu16(crc, res->crc);
     a46:	03845583          	lhu	a1,56(s0)
    for (i = 0; i < iterations; i++)
     a4a:	0485                	addi	s1,s1,1
        res->crc = crcu16(crc, res->crc);
     a4c:	3e6010ef          	jal	1e32 <crcu16>
     a50:	02a41c23          	sh	a0,56(s0)
        crc      = core_bench_list(res, -1);
     a54:	55fd                	li	a1,-1
     a56:	8522                	mv	a0,s0
     a58:	30cd                	jal	33a <core_bench_list>
        res->crc = crcu16(crc, res->crc);
     a5a:	03845583          	lhu	a1,56(s0)
     a5e:	3d4010ef          	jal	1e32 <crcu16>
     a62:	02a41c23          	sh	a0,56(s0)
    for (i = 0; i < iterations; i++)
     a66:	fc991de3          	bne	s2,s1,a40 <iterate+0x4c>
     a6a:	4422                	lw	s0,8(sp)
     a6c:	4492                	lw	s1,4(sp)
        if (i == 0)
            res->crclist = res->crc;
    }
    return NULL;
}
     a6e:	40b2                	lw	ra,12(sp)
     a70:	4902                	lw	s2,0(sp)
     a72:	4501                	li	a0,0
     a74:	0141                	addi	sp,sp,16
     a76:	8082                	ret

00000a78 <main>:
    int   argc = 0;
    char *argv[1];
#else
MAIN_RETURN_TYPE
main(int argc, char *argv[])
{
     a78:	7171                	addi	sp,sp,-176
     a7a:	862e                	mv	a2,a1
     a7c:	ce2a                	sw	a0,28(sp)
    core_results results[MULTITHREAD];
#if (MEM_METHOD == MEM_STACK)
    ee_u8 stack_memblock[TOTAL_DATA_SIZE * MULTITHREAD];
#endif
    /* first call any initializations needed */
    portable_init(&(results[0].port), &argc, argv);
     a7e:	086c                	addi	a1,sp,28
     a80:	06e10513          	addi	a0,sp,110
{
     a84:	d706                	sw	ra,172(sp)
     a86:	d522                	sw	s0,168(sp)
     a88:	d326                	sw	s1,164(sp)
     a8a:	d14a                	sw	s2,160(sp)
     a8c:	cf4e                	sw	s3,156(sp)
     a8e:	cd52                	sw	s4,152(sp)
     a90:	cb56                	sw	s5,148(sp)
     a92:	c95a                	sw	s6,144(sp)
     a94:	c75e                	sw	s7,140(sp)
     a96:	c562                	sw	s8,136(sp)
     a98:	c366                	sw	s9,132(sp)
     a9a:	c16a                	sw	s10,128(sp)
    portable_init(&(results[0].port), &argc, argv);
     a9c:	3cd000ef          	jal	1668 <portable_init>
    if (sizeof(struct list_head_s) > 128)
    {
        ee_printf("list_head structure too big for comparable data!\n");
        return MAIN_RETURN_VAL;
    }
    results[0].seed1      = get_seed(1);
     aa0:	4505                	li	a0,1
     aa2:	35a010ef          	jal	1dfc <get_seed_32>
     aa6:	02a11623          	sh	a0,44(sp)
    results[0].seed2      = get_seed(2);
     aaa:	4509                	li	a0,2
     aac:	350010ef          	jal	1dfc <get_seed_32>
     ab0:	02a11723          	sh	a0,46(sp)
    results[0].seed3      = get_seed(3);
     ab4:	450d                	li	a0,3
     ab6:	346010ef          	jal	1dfc <get_seed_32>
     aba:	02a11823          	sh	a0,48(sp)
    results[0].iterations = get_seed_32(4);
     abe:	4511                	li	a0,4
     ac0:	33c010ef          	jal	1dfc <get_seed_32>
     ac4:	c4aa                	sw	a0,72(sp)
#if CORE_DEBUG
    results[0].iterations = 1;
#endif
    results[0].execs = get_seed_32(5);
     ac6:	4515                	li	a0,5
     ac8:	334010ef          	jal	1dfc <get_seed_32>
    if (results[0].execs == 0)
     acc:	e111                	bnez	a0,ad0 <main+0x58>
    { /* if not supplied, execute all algorithms */
        results[0].execs = ALL_ALGORITHMS_MASK;
     ace:	451d                	li	a0,7
    }
    /* put in some default values based on one seed only for easy testing */
    if ((results[0].seed1 == 0) && (results[0].seed2 == 0)
     ad0:	57b2                	lw	a5,44(sp)
     ad2:	c6aa                	sw	a0,76(sp)
     ad4:	34078563          	beqz	a5,e1e <main+0x3a6>
    { /* perfromance run */
        results[0].seed1 = 0;
        results[0].seed2 = 0;
        results[0].seed3 = 0x66;
    }
    if ((results[0].seed1 == 1) && (results[0].seed2 == 0)
     ad8:	4705                	li	a4,1
     ada:	6ae78263          	beq	a5,a4,117e <main+0x706>
#error "Cannot use a static data area with multiple contexts!"
#endif
#elif (MEM_METHOD == MEM_MALLOC)
    for (i = 0; i < MULTITHREAD; i++)
    {
        ee_s32 malloc_override = get_seed(7);
     ade:	451d                	li	a0,7
     ae0:	31c010ef          	jal	1dfc <get_seed_32>
     ae4:	0542                	slli	a0,a0,0x10
     ae6:	8541                	srai	a0,a0,0x10
        if (malloc_override != 0)
     ae8:	e119                	bnez	a0,aee <main+0x76>
     aea:	7d000513          	li	a0,2000
     aee:	c2aa                	sw	a0,68(sp)
            results[i].size = malloc_override;
        else
            results[i].size = TOTAL_DATA_SIZE;
        results[i].memblock[0] = portable_malloc(results[i].size);
     af0:	5e1000ef          	jal	18d0 <portable_malloc>
        results[i].seed1       = results[0].seed1;
        results[i].seed2       = results[0].seed2;
        results[i].seed3       = results[0].seed3;
        results[i].err         = 0;
        results[i].execs       = results[0].execs;
     af4:	47b6                	lw	a5,76(sp)
        results[i].err         = 0;
     af6:	06011623          	sh	zero,108(sp)
        results[i].memblock[0] = portable_malloc(results[i].size);
     afa:	da2a                	sw	a0,52(sp)
#endif
    /* Data init */
    /* Find out how space much we have based on number of algorithms */
    for (i = 0; i < NUM_ALGORITHMS; i++)
    {
        if ((1 << (ee_u32)i) & results[0].execs)
     afc:	0027f813          	andi	a6,a5,2
     b00:	0017f613          	andi	a2,a5,1
            num_algorithms++;
     b04:	010036b3          	snez	a3,a6
        if ((1 << (ee_u32)i) & results[0].execs)
     b08:	0047f893          	andi	a7,a5,4
    }
    for (i = 0; i < MULTITHREAD; i++)
        results[i].size = results[i].size / num_algorithms;
     b0c:	4716                	lw	a4,68(sp)
        results[i].memblock[0] = portable_malloc(results[i].size);
     b0e:	85aa                	mv	a1,a0
            num_algorithms++;
     b10:	96b2                	add	a3,a3,a2
        if ((1 << (ee_u32)i) & results[0].execs)
     b12:	02089063          	bnez	a7,b32 <main+0xba>
        results[i].size = results[i].size / num_algorithms;
     b16:	02d75533          	divu	a0,a4,a3
     b1a:	c2aa                	sw	a0,68(sp)
    /* Assign pointers */
    for (i = 0; i < NUM_ALGORITHMS; i++)
    {
        ee_u32 ctx;
        if ((1 << (ee_u32)i) & results[0].execs)
     b1c:	1a061863          	bnez	a2,ccc <main+0x254>
     b20:	02080663          	beqz	a6,b4c <main+0xd4>
        {
            for (ctx = 0; ctx < MULTITHREAD; ctx++)
                results[ctx].memblock[i + 1]
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
     b24:	02a60733          	mul	a4,a2,a0
     b28:	972e                	add	a4,a4,a1
     b2a:	de3a                	sw	a4,60(sp)
        if ((1 << (ee_u32)i) & results[0].execs)
     b2c:	02088063          	beqz	a7,b4c <main+0xd4>
     b30:	a811                	j	b44 <main+0xcc>
        results[i].size = results[i].size / num_algorithms;
     b32:	00168513          	addi	a0,a3,1
     b36:	02a75533          	divu	a0,a4,a0
     b3a:	c2aa                	sw	a0,68(sp)
        if ((1 << (ee_u32)i) & results[0].execs)
     b3c:	18061863          	bnez	a2,ccc <main+0x254>
     b40:	fe0812e3          	bnez	a6,b24 <main+0xac>
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
     b44:	02a686b3          	mul	a3,a3,a0
     b48:	95b6                	add	a1,a1,a3
     b4a:	c0ae                	sw	a1,64(sp)
        }
    }
    /* call inits */
    for (i = 0; i < MULTITHREAD; i++)
    {
        if (results[i].execs & ID_LIST)
     b4c:	0017f713          	andi	a4,a5,1
     b50:	c719                	beqz	a4,b5e <main+0xe6>
        {
            results[i].list = core_list_init(
     b52:	02c11603          	lh	a2,44(sp)
     b56:	55e2                	lw	a1,56(sp)
     b58:	36d1                	jal	71c <core_list_init>
                results[0].size, results[i].memblock[1], results[i].seed1);
        }
        if (results[i].execs & ID_MATRIX)
     b5a:	47b6                	lw	a5,76(sp)
            results[i].list = core_list_init(
     b5c:	c8aa                	sw	a0,80(sp)
        if (results[i].execs & ID_MATRIX)
     b5e:	0027f713          	andi	a4,a5,2
     b62:	16071b63          	bnez	a4,cd8 <main+0x260>
                             results[i].memblock[2],
                             (ee_s32)results[i].seed1
                                 | (((ee_s32)results[i].seed2) << 16),
                             &(results[i].mat));
        }
        if (results[i].execs & ID_STATE)
     b66:	8b91                	andi	a5,a5,4
     b68:	c799                	beqz	a5,b76 <main+0xfe>
        {
            core_init_state(
     b6a:	4606                	lw	a2,64(sp)
     b6c:	02c11583          	lh	a1,44(sp)
     b70:	4516                	lw	a0,68(sp)
     b72:	585000ef          	jal	18f6 <core_init_state>
                results[0].size, results[i].seed1, results[i].memblock[3]);
        }
    }

    /* automatically determine number of iterations if not set */
    if (results[0].iterations == 0)
     b76:	47a6                	lw	a5,72(sp)
     b78:	0c079363          	bnez	a5,c3e <main+0x1c6>
    {
        secs_ret secs_passed = 0;
        ee_u32   divisor;
        results[0].iterations = 1;
     b7c:	67ad                	lui	a5,0xb
        while (secs_passed < (secs_ret)1)
     b7e:	fa87a903          	lw	s2,-88(a5) # afa8 <__clz_tab+0x100>
     b82:	fac7a983          	lw	s3,-84(a5)
        results[0].iterations = 1;
     b86:	4a05                	li	s4,1
     b88:	c4d2                	sw	s4,72(sp)
        {
            results[0].iterations *= 10;
     b8a:	4726                	lw	a4,72(sp)
     b8c:	00271793          	slli	a5,a4,0x2
     b90:	97ba                	add	a5,a5,a4
     b92:	0786                	slli	a5,a5,0x1
     b94:	c4be                	sw	a5,72(sp)
            start_time();
     b96:	265000ef          	jal	15fa <start_time>
    ee_u32        iterations = res->iterations;
     b9a:	44a6                	lw	s1,72(sp)
    res->crc                 = 0;
     b9c:	d282                	sw	zero,100(sp)
     b9e:	d482                	sw	zero,104(sp)
    for (i = 0; i < iterations; i++)
     ba0:	c0bd                	beqz	s1,c06 <main+0x18e>
        crc      = core_bench_list(res, 1);
     ba2:	4585                	li	a1,1
     ba4:	1068                	addi	a0,sp,44
     ba6:	f94ff0ef          	jal	33a <core_bench_list>
        res->crc = crcu16(crc, res->crc);
     baa:	06415583          	lhu	a1,100(sp)
    for (i = 0; i < iterations; i++)
     bae:	4405                	li	s0,1
        res->crc = crcu16(crc, res->crc);
     bb0:	282010ef          	jal	1e32 <crcu16>
     bb4:	06a11223          	sh	a0,100(sp)
        crc      = core_bench_list(res, -1);
     bb8:	55fd                	li	a1,-1
     bba:	1068                	addi	a0,sp,44
     bbc:	f7eff0ef          	jal	33a <core_bench_list>
        res->crc = crcu16(crc, res->crc);
     bc0:	06415583          	lhu	a1,100(sp)
     bc4:	26e010ef          	jal	1e32 <crcu16>
     bc8:	01051793          	slli	a5,a0,0x10
     bcc:	83c1                	srli	a5,a5,0x10
     bce:	0542                	slli	a0,a0,0x10
     bd0:	8fc9                	or	a5,a5,a0
     bd2:	d2be                	sw	a5,100(sp)
    for (i = 0; i < iterations; i++)
     bd4:	03448963          	beq	s1,s4,c06 <main+0x18e>
        crc      = core_bench_list(res, 1);
     bd8:	4585                	li	a1,1
     bda:	1068                	addi	a0,sp,44
     bdc:	f5eff0ef          	jal	33a <core_bench_list>
        res->crc = crcu16(crc, res->crc);
     be0:	06415583          	lhu	a1,100(sp)
    for (i = 0; i < iterations; i++)
     be4:	0405                	addi	s0,s0,1
        res->crc = crcu16(crc, res->crc);
     be6:	24c010ef          	jal	1e32 <crcu16>
     bea:	06a11223          	sh	a0,100(sp)
        crc      = core_bench_list(res, -1);
     bee:	55fd                	li	a1,-1
     bf0:	1068                	addi	a0,sp,44
     bf2:	f48ff0ef          	jal	33a <core_bench_list>
        res->crc = crcu16(crc, res->crc);
     bf6:	06415583          	lhu	a1,100(sp)
     bfa:	238010ef          	jal	1e32 <crcu16>
     bfe:	06a11223          	sh	a0,100(sp)
    for (i = 0; i < iterations; i++)
     c02:	fc849be3          	bne	s1,s0,bd8 <main+0x160>
            iterate(&results[0]);
            stop_time();
     c06:	211000ef          	jal	1616 <stop_time>
            secs_passed = time_in_secs(get_time());
     c0a:	229000ef          	jal	1632 <get_time>
     c0e:	243000ef          	jal	1650 <time_in_secs>
        while (secs_passed < (secs_ret)1)
     c12:	864a                	mv	a2,s2
     c14:	86ce                	mv	a3,s3
            secs_passed = time_in_secs(get_time());
     c16:	842a                	mv	s0,a0
     c18:	84ae                	mv	s1,a1
        while (secs_passed < (secs_ret)1)
     c1a:	587070ef          	jal	89a0 <__ledf2>
     c1e:	f60546e3          	bltz	a0,b8a <main+0x112>
        }
        /* now we know it executes for at least 1 sec, set actual run time at
         * about 10 secs */
        divisor = (ee_u32)secs_passed;
     c22:	8522                	mv	a0,s0
     c24:	85a6                	mv	a1,s1
     c26:	4cb080ef          	jal	98f0 <__fixunsdfsi>
        if (divisor == 0) /* some machines cast float to int as 0 since this
     c2a:	e111                	bnez	a0,c2e <main+0x1b6>
     c2c:	4505                	li	a0,1
                             conversion is not defined by ANSI, but we know at
                             least one second passed */
            divisor = 1;
        results[0].iterations *= 1 + 10 / divisor;
     c2e:	47a9                	li	a5,10
     c30:	02a7d7b3          	divu	a5,a5,a0
     c34:	4726                	lw	a4,72(sp)
     c36:	0785                	addi	a5,a5,1
     c38:	02f707b3          	mul	a5,a4,a5
     c3c:	c4be                	sw	a5,72(sp)
    }
    /* perform actual benchmark */
    start_time();
     c3e:	1bd000ef          	jal	15fa <start_time>
    for (i = 0; i < default_num_contexts; i++)
    {
        core_stop_parallel(&results[i]);
    }
#else
    iterate(&results[0]);
     c42:	1068                	addi	a0,sp,44
     c44:	3b45                	jal	9f4 <iterate>
#endif
    stop_time();
     c46:	1d1000ef          	jal	1616 <stop_time>
    total_time = get_time();
     c4a:	1e9000ef          	jal	1632 <get_time>
     c4e:	842a                	mv	s0,a0
    /* get a function of the input to report */
    seedcrc = crc16(results[0].seed1, seedcrc);
     c50:	02c11503          	lh	a0,44(sp)
    total_time = get_time();
     c54:	84ae                	mv	s1,a1
    seedcrc = crc16(results[0].seed1, seedcrc);
     c56:	4581                	li	a1,0
     c58:	6d4010ef          	jal	232c <crc16>
     c5c:	85aa                	mv	a1,a0
    seedcrc = crc16(results[0].seed2, seedcrc);
     c5e:	02e11503          	lh	a0,46(sp)
     c62:	6ca010ef          	jal	232c <crc16>
     c66:	85aa                	mv	a1,a0
    seedcrc = crc16(results[0].seed3, seedcrc);
     c68:	03011503          	lh	a0,48(sp)
     c6c:	6c0010ef          	jal	232c <crc16>
     c70:	85aa                	mv	a1,a0
    seedcrc = crc16(results[0].size, seedcrc);
     c72:	04411503          	lh	a0,68(sp)
     c76:	6b6010ef          	jal	232c <crc16>

    switch (seedcrc)
     c7a:	67a1                	lui	a5,0x8
     c7c:	b0578793          	addi	a5,a5,-1275 # 7b05 <__adddf3+0x1d1>
    seedcrc = crc16(results[0].size, seedcrc);
     c80:	892a                	mv	s2,a0
    switch (seedcrc)
     c82:	4cf50763          	beq	a0,a5,1150 <main+0x6d8>
     c86:	06a7e963          	bltu	a5,a0,cf8 <main+0x280>
     c8a:	6789                	lui	a5,0x2
     c8c:	8f278793          	addi	a5,a5,-1806 # 18f2 <portable_free>
     c90:	48f50a63          	beq	a0,a5,1124 <main+0x6ac>
     c94:	6795                	lui	a5,0x5
     c96:	eaf78793          	addi	a5,a5,-337 # 4eaf <_malloc_r+0x77b>
     c9a:	18f51b63          	bne	a0,a5,e30 <main+0x3b8>
            ee_printf("6k validation run parameters for coremark.\n");
            break;
        case 0x4eaf: /* seed1=0x8, seed2=0x8, seed3=0x8, size 400 per algorithm
                      */
            known_id = 2;
            ee_printf("Profile generation run parameters for coremark.\n");
     c9e:	6529                	lui	a0,0xa
     ca0:	d8c50513          	addi	a0,a0,-628 # 9d8c <__fini_array_end+0x5c>
     ca4:	3fc040ef          	jal	50a0 <puts>
            break;
     ca8:	67b9                	lui	a5,0xe
     caa:	5a478793          	addi	a5,a5,1444 # e5a4 <__crt0_copy_data_src_begin+0x35e4>
     cae:	c23e                	sw	a5,4(sp)
     cb0:	6795                	lui	a5,0x5
     cb2:	60878793          	addi	a5,a5,1544 # 5608 <_free_r+0x24>
     cb6:	c43e                	sw	a5,8(sp)
     cb8:	679d                	lui	a5,0x7
     cba:	a7978793          	addi	a5,a5,-1415 # 6a79 <_realloc_r+0x331>
     cbe:	c03e                	sw	a5,0(sp)
     cc0:	8b3e                	mv	s6,a5
            known_id = 2;
     cc2:	4789                	li	a5,2
            break;
     cc4:	4c12                	lw	s8,4(sp)
     cc6:	4ba2                	lw	s7,8(sp)
            known_id = 2;
     cc8:	cc3e                	sw	a5,24(sp)
            break;
     cca:	a0bd                	j	d38 <main+0x2c0>
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
     ccc:	dc2e                	sw	a1,56(sp)
        if ((1 << (ee_u32)i) & results[0].execs)
     cce:	e4081be3          	bnez	a6,b24 <main+0xac>
     cd2:	e6088de3          	beqz	a7,b4c <main+0xd4>
     cd6:	b5bd                	j	b44 <main+0xcc>
                                 | (((ee_s32)results[i].seed2) << 16),
     cd8:	02e11783          	lh	a5,46(sp)
                             (ee_s32)results[i].seed1
     cdc:	02c11603          	lh	a2,44(sp)
            core_init_matrix(results[0].size,
     ce0:	55f2                	lw	a1,60(sp)
     ce2:	4516                	lw	a0,68(sp)
                                 | (((ee_s32)results[i].seed2) << 16),
     ce4:	07c2                	slli	a5,a5,0x10
            core_init_matrix(results[0].size,
     ce6:	8e5d                	or	a2,a2,a5
     ce8:	08d4                	addi	a3,sp,84
     cea:	051000ef          	jal	153a <core_init_matrix>
        if (results[i].execs & ID_STATE)
     cee:	47b6                	lw	a5,76(sp)
     cf0:	8b91                	andi	a5,a5,4
     cf2:	e6079ce3          	bnez	a5,b6a <main+0xf2>
     cf6:	b541                	j	b76 <main+0xfe>
    switch (seedcrc)
     cf8:	67a5                	lui	a5,0x9
     cfa:	a0278793          	addi	a5,a5,-1534 # 8a02 <__ledf2+0x62>
     cfe:	3ef50d63          	beq	a0,a5,10f8 <main+0x680>
     d02:	67bd                	lui	a5,0xf
     d04:	9f578793          	addi	a5,a5,-1547 # e9f5 <__crt0_copy_data_src_begin+0x3a35>
     d08:	12f51463          	bne	a0,a5,e30 <main+0x3b8>
        case 0xe9f5: /* seed1=0, seed2=0, seed3=0x66, size 666 per algorithm */
            known_id = 3;
            ee_printf("2K performance run parameters for coremark.\n");
     d0c:	6529                	lui	a0,0xa
     d0e:	dbc50513          	addi	a0,a0,-580 # 9dbc <__fini_array_end+0x8c>
     d12:	38e040ef          	jal	50a0 <puts>
            break;
     d16:	67a5                	lui	a5,0x9
     d18:	e3a78793          	addi	a5,a5,-454 # 8e3a <__muldf3+0x3c2>
     d1c:	c23e                	sw	a5,4(sp)
     d1e:	6789                	lui	a5,0x2
     d20:	fd778793          	addi	a5,a5,-41 # 1fd7 <crcu32+0x7>
     d24:	c43e                	sw	a5,8(sp)
     d26:	67b9                	lui	a5,0xe
     d28:	71478793          	addi	a5,a5,1812 # e714 <__crt0_copy_data_src_begin+0x3754>
     d2c:	4c12                	lw	s8,4(sp)
     d2e:	4ba2                	lw	s7,8(sp)
     d30:	c03e                	sw	a5,0(sp)
     d32:	8b3e                	mv	s6,a5
            known_id = 3;
     d34:	478d                	li	a5,3
     d36:	cc3e                	sw	a5,24(sp)
            total_errors = -1;
            break;
    }
    if (known_id >= 0)
    {
        for (i = 0; i < default_num_contexts; i++)
     d38:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
     d3c:	4c81                	li	s9,0
     d3e:	0ef05d63          	blez	a5,e38 <main+0x3c0>
        {
            results[i].err = 0;
            if ((results[i].execs & ID_LIST)
                && (results[i].crclist != list_known_crc[known_id]))
            {
                ee_printf("[%u]ERROR! list crc 0x%04x - should be 0x%04x\n",
     d42:	66a9                	lui	a3,0xa
                results[i].err++;
            }
            if ((results[i].execs & ID_MATRIX)
                && (results[i].crcmatrix != matrix_known_crc[known_id]))
            {
                ee_printf("[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\n",
     d44:	6729                	lui	a4,0xa
                results[i].err++;
            }
            if ((results[i].execs & ID_STATE)
                && (results[i].crcstate != state_known_crc[known_id]))
            {
                ee_printf("[%u]ERROR! state crc 0x%04x - should be 0x%04x\n",
     d46:	67a9                	lui	a5,0xa
                ee_printf("[%u]ERROR! list crc 0x%04x - should be 0x%04x\n",
     d48:	e1468693          	addi	a3,a3,-492 # 9e14 <__fini_array_end+0xe4>
                ee_printf("[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\n",
     d4c:	e4470713          	addi	a4,a4,-444 # 9e44 <__fini_array_end+0x114>
                ee_printf("[%u]ERROR! state crc 0x%04x - should be 0x%04x\n",
     d50:	e7878793          	addi	a5,a5,-392 # 9e78 <__fini_array_end+0x148>
     d54:	deee                	sw	s11,124(sp)
                ee_printf("[%u]ERROR! list crc 0x%04x - should be 0x%04x\n",
     d56:	c636                	sw	a3,12(sp)
                ee_printf("[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\n",
     d58:	c83a                	sw	a4,16(sp)
                ee_printf("[%u]ERROR! state crc 0x%04x - should be 0x%04x\n",
     d5a:	ca3e                	sw	a5,20(sp)
        for (i = 0; i < default_num_contexts; i++)
     d5c:	4a01                	li	s4,0
     d5e:	4981                	li	s3,0
     d60:	4a81                	li	s5,0
     d62:	a015                	j	d86 <main+0x30e>
                          i,
                          results[i].crcstate,
                          state_known_crc[known_id]);
                results[i].err++;
            }
            total_errors += results[i].err;
     d64:	9c8a                	add	s9,s9,sp
     d66:	06ccd783          	lhu	a5,108(s9)
     d6a:	01478cb3          	add	s9,a5,s4
        for (i = 0; i < default_num_contexts; i++)
     d6e:	00198713          	addi	a4,s3,1
     d72:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
     d76:	01071993          	slli	s3,a4,0x10
     d7a:	0109d993          	srli	s3,s3,0x10
            total_errors += results[i].err;
     d7e:	8a66                	mv	s4,s9
        for (i = 0; i < default_num_contexts; i++)
     d80:	8ace                	mv	s5,s3
     d82:	2ef9db63          	bge	s3,a5,1078 <main+0x600>
            results[i].err = 0;
     d86:	004a9c93          	slli	s9,s5,0x4
     d8a:	015c8db3          	add	s11,s9,s5
     d8e:	0d8a                	slli	s11,s11,0x2
     d90:	060d8793          	addi	a5,s11,96
     d94:	0818                	addi	a4,sp,16
     d96:	00e78db3          	add	s11,a5,a4
            if ((results[i].execs & ID_LIST)
     d9a:	fdcda783          	lw	a5,-36(s11)
            results[i].err = 0;
     d9e:	fe0d9e23          	sh	zero,-4(s11)
            if ((results[i].execs & ID_LIST)
     da2:	0017f693          	andi	a3,a5,1
     da6:	c28d                	beqz	a3,dc8 <main+0x350>
                && (results[i].crclist != list_known_crc[known_id]))
     da8:	ff6dd603          	lhu	a2,-10(s11)
     dac:	01660e63          	beq	a2,s6,dc8 <main+0x350>
                ee_printf("[%u]ERROR! list crc 0x%04x - should be 0x%04x\n",
     db0:	4682                	lw	a3,0(sp)
     db2:	4532                	lw	a0,12(sp)
     db4:	85d6                	mv	a1,s5
     db6:	54f010ef          	jal	2b04 <printf>
                results[i].err++;
     dba:	ffcdd683          	lhu	a3,-4(s11)
            if ((results[i].execs & ID_MATRIX)
     dbe:	fdcda783          	lw	a5,-36(s11)
                results[i].err++;
     dc2:	0685                	addi	a3,a3,1
     dc4:	fedd9e23          	sh	a3,-4(s11)
            if ((results[i].execs & ID_MATRIX)
     dc8:	0027f693          	andi	a3,a5,2
     dcc:	ca8d                	beqz	a3,dfe <main+0x386>
                && (results[i].crcmatrix != matrix_known_crc[known_id]))
     dce:	015c8db3          	add	s11,s9,s5
     dd2:	0d8a                	slli	s11,s11,0x2
     dd4:	060d8713          	addi	a4,s11,96
     dd8:	0814                	addi	a3,sp,16
     dda:	00d70db3          	add	s11,a4,a3
     dde:	ff8dd603          	lhu	a2,-8(s11)
     de2:	01760e63          	beq	a2,s7,dfe <main+0x386>
                ee_printf("[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\n",
     de6:	46a2                	lw	a3,8(sp)
     de8:	4542                	lw	a0,16(sp)
     dea:	85d6                	mv	a1,s5
     dec:	519010ef          	jal	2b04 <printf>
                results[i].err++;
     df0:	ffcdd683          	lhu	a3,-4(s11)
            if ((results[i].execs & ID_STATE)
     df4:	fdcda783          	lw	a5,-36(s11)
                results[i].err++;
     df8:	0685                	addi	a3,a3,1
     dfa:	fedd9e23          	sh	a3,-4(s11)
                && (results[i].crcstate != state_known_crc[known_id]))
     dfe:	9cd6                	add	s9,s9,s5
            if ((results[i].execs & ID_STATE)
     e00:	8b91                	andi	a5,a5,4
                && (results[i].crcstate != state_known_crc[known_id]))
     e02:	0c8a                	slli	s9,s9,0x2
            if ((results[i].execs & ID_STATE)
     e04:	d3a5                	beqz	a5,d64 <main+0x2ec>
                && (results[i].crcstate != state_known_crc[known_id]))
     e06:	060c8793          	addi	a5,s9,96
     e0a:	0818                	addi	a4,sp,16
     e0c:	00e78cb3          	add	s9,a5,a4
     e10:	ffacd603          	lhu	a2,-6(s9)
     e14:	25861563          	bne	a2,s8,105e <main+0x5e6>
            total_errors += results[i].err;
     e18:	ffccd783          	lhu	a5,-4(s9)
     e1c:	b7b9                	j	d6a <main+0x2f2>
        && (results[0].seed3 == 0))
     e1e:	03011783          	lh	a5,48(sp)
     e22:	ca079ee3          	bnez	a5,ade <main+0x66>
        results[0].seed3 = 0x66;
     e26:	06600793          	li	a5,102
     e2a:	02f11823          	sh	a5,48(sp)
    if ((results[0].seed1 == 1) && (results[0].seed2 == 0)
     e2e:	b945                	j	ade <main+0x66>
    switch (seedcrc)
     e30:	6cc1                	lui	s9,0x10
     e32:	57fd                	li	a5,-1
     e34:	1cfd                	addi	s9,s9,-1 # ffff <__crt0_copy_data_src_begin+0x503f>
     e36:	cc3e                	sw	a5,24(sp)
        }
    }
    total_errors += check_data_types();
     e38:	696010ef          	jal	24ce <check_data_types>
    /* and report results */
    ee_printf("CoreMark Size    : %lu\n", (long unsigned)results[0].size);
     e3c:	4596                	lw	a1,68(sp)
    total_errors += check_data_types();
     e3e:	019509b3          	add	s3,a0,s9
    ee_printf("CoreMark Size    : %lu\n", (long unsigned)results[0].size);
     e42:	6529                	lui	a0,0xa
     e44:	ea850513          	addi	a0,a0,-344 # 9ea8 <__fini_array_end+0x178>
     e48:	4bd010ef          	jal	2b04 <printf>
    ee_printf("Total ticks      : %lu k\n", (long unsigned)(total_time / 1000));
     e4c:	3e800613          	li	a2,1000
     e50:	4681                	li	a3,0
     e52:	8522                	mv	a0,s0
     e54:	85a6                	mv	a1,s1
     e56:	52a060ef          	jal	7380 <__udivdi3>
     e5a:	85aa                	mv	a1,a0
     e5c:	6529                	lui	a0,0xa
     e5e:	ec050513          	addi	a0,a0,-320 # 9ec0 <__fini_array_end+0x190>
     e62:	4a3010ef          	jal	2b04 <printf>
#if HAS_FLOAT
    ee_printf("Total time (secs): %f\n", time_in_secs(total_time));
     e66:	8522                	mv	a0,s0
     e68:	85a6                	mv	a1,s1
     e6a:	27dd                	jal	1650 <time_in_secs>
     e6c:	862a                	mv	a2,a0
     e6e:	6529                	lui	a0,0xa
     e70:	86ae                	mv	a3,a1
     e72:	edc50513          	addi	a0,a0,-292 # 9edc <__fini_array_end+0x1ac>
     e76:	48f010ef          	jal	2b04 <printf>
    if (time_in_secs(total_time) > 0)
     e7a:	8522                	mv	a0,s0
     e7c:	85a6                	mv	a1,s1
     e7e:	2fc9                	jal	1650 <time_in_secs>
     e80:	4601                	li	a2,0
     e82:	4681                	li	a3,0
     e84:	245070ef          	jal	88c8 <__gedf2>
     e88:	02a05b63          	blez	a0,ebe <main+0x446>
        ee_printf("Iterations/Sec   : %f\n",
                  default_num_contexts * results[0].iterations
     e8c:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
     e90:	4526                	lw	a0,72(sp)
        ee_printf("Iterations/Sec   : %f\n",
     e92:	02f50533          	mul	a0,a0,a5
     e96:	2d3080ef          	jal	9968 <__floatunsidf>
     e9a:	8a2a                	mv	s4,a0
     e9c:	8aae                	mv	s5,a1
                      / time_in_secs(total_time));
     e9e:	8522                	mv	a0,s0
     ea0:	85a6                	mv	a1,s1
     ea2:	277d                	jal	1650 <time_in_secs>
     ea4:	862a                	mv	a2,a0
     ea6:	86ae                	mv	a3,a1
        ee_printf("Iterations/Sec   : %f\n",
     ea8:	8552                	mv	a0,s4
     eaa:	85d6                	mv	a1,s5
     eac:	1d4070ef          	jal	8080 <__divdf3>
     eb0:	862a                	mv	a2,a0
     eb2:	6529                	lui	a0,0xa
     eb4:	86ae                	mv	a3,a1
     eb6:	ef450513          	addi	a0,a0,-268 # 9ef4 <__fini_array_end+0x1c4>
     eba:	44b010ef          	jal	2b04 <printf>
    if (time_in_secs(total_time) > 0)
        ee_printf("Iterations/Sec   : %d\n",
                  default_num_contexts * results[0].iterations
                      / time_in_secs(total_time));
#endif
    if (time_in_secs(total_time) < 10)
     ebe:	8522                	mv	a0,s0
     ec0:	85a6                	mv	a1,s1
     ec2:	2779                	jal	1650 <time_in_secs>
     ec4:	67ad                	lui	a5,0xb
     ec6:	fb07a603          	lw	a2,-80(a5) # afb0 <__clz_tab+0x108>
     eca:	fb47a683          	lw	a3,-76(a5)
     ece:	2d3070ef          	jal	89a0 <__ledf2>
     ed2:	1a054563          	bltz	a0,107c <main+0x604>
        ee_printf(
            "ERROR! Must execute for at least 10 secs for a valid result!\n");
        total_errors++;
    }

    ee_printf("Iterations       : %lu\n",
     ed6:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
     eda:	45a6                	lw	a1,72(sp)
     edc:	6529                	lui	a0,0xa
     ede:	f4c50513          	addi	a0,a0,-180 # 9f4c <__fini_array_end+0x21c>
     ee2:	02f585b3          	mul	a1,a1,a5
              (long unsigned)default_num_contexts * results[0].iterations);
    ee_printf("Compiler version : %s\n", COMPILER_VERSION);
     ee6:	6a29                	lui	s4,0xa
    ee_printf("Compiler flags   : %s\n", COMPILER_FLAGS);
     ee8:	6aa9                	lui	s5,0xa
#if (MULTITHREAD > 1)
    ee_printf("Parallel %s : %d\n", PARALLEL_METHOD, default_num_contexts);
#endif
    ee_printf("Memory location  : %s\n", MEM_LOCATION);
     eea:	6b29                	lui	s6,0xa
     eec:	09c2                	slli	s3,s3,0x10
     eee:	4109d993          	srai	s3,s3,0x10
    ee_printf("Iterations       : %lu\n",
     ef2:	413010ef          	jal	2b04 <printf>
    ee_printf("Compiler version : %s\n", COMPILER_VERSION);
     ef6:	6529                	lui	a0,0xa
     ef8:	f64a0593          	addi	a1,s4,-156 # 9f64 <__fini_array_end+0x234>
     efc:	f7050513          	addi	a0,a0,-144 # 9f70 <__fini_array_end+0x240>
     f00:	405010ef          	jal	2b04 <printf>
    ee_printf("Compiler flags   : %s\n", COMPILER_FLAGS);
     f04:	6529                	lui	a0,0xa
     f06:	f88a8593          	addi	a1,s5,-120 # 9f88 <__fini_array_end+0x258>
     f0a:	f9850513          	addi	a0,a0,-104 # 9f98 <__fini_array_end+0x268>
     f0e:	3f7010ef          	jal	2b04 <printf>
    ee_printf("Memory location  : %s\n", MEM_LOCATION);
     f12:	6529                	lui	a0,0xa
     f14:	fb0b0593          	addi	a1,s6,-80 # 9fb0 <__fini_array_end+0x280>
     f18:	fb850513          	addi	a0,a0,-72 # 9fb8 <__fini_array_end+0x288>
     f1c:	3e9010ef          	jal	2b04 <printf>
    /* output for verification */
    ee_printf("seedcrc          : 0x%04x\n", seedcrc);
     f20:	6529                	lui	a0,0xa
     f22:	85ca                	mv	a1,s2
     f24:	fd050513          	addi	a0,a0,-48 # 9fd0 <__fini_array_end+0x2a0>
     f28:	3dd010ef          	jal	2b04 <printf>
    if (results[0].execs & ID_LIST)
     f2c:	47b6                	lw	a5,76(sp)
     f2e:	0017f713          	andi	a4,a5,1
     f32:	cf15                	beqz	a4,f6e <main+0x4f6>
        for (i = 0; i < default_num_contexts; i++)
     f34:	d541a703          	lw	a4,-684(gp) # 80000554 <default_num_contexts>
     f38:	02e05b63          	blez	a4,f6e <main+0x4f6>
     f3c:	6929                	lui	s2,0xa
            ee_printf("[%d]crclist       : 0x%04x\n", i, results[i].crclist);
     f3e:	fec90913          	addi	s2,s2,-20 # 9fec <__fini_array_end+0x2bc>
        for (i = 0; i < default_num_contexts; i++)
     f42:	4b81                	li	s7,0
     f44:	4581                	li	a1,0
            ee_printf("[%d]crclist       : 0x%04x\n", i, results[i].crclist);
     f46:	00459793          	slli	a5,a1,0x4
     f4a:	97ae                	add	a5,a5,a1
     f4c:	078a                	slli	a5,a5,0x2
     f4e:	978a                	add	a5,a5,sp
     f50:	0667d603          	lhu	a2,102(a5)
     f54:	854a                	mv	a0,s2
        for (i = 0; i < default_num_contexts; i++)
     f56:	0b85                	addi	s7,s7,1
            ee_printf("[%d]crclist       : 0x%04x\n", i, results[i].crclist);
     f58:	3ad010ef          	jal	2b04 <printf>
        for (i = 0; i < default_num_contexts; i++)
     f5c:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
     f60:	0bc2                	slli	s7,s7,0x10
     f62:	010bdb93          	srli	s7,s7,0x10
     f66:	85de                	mv	a1,s7
     f68:	fcfbcfe3          	blt	s7,a5,f46 <main+0x4ce>
     f6c:	47b6                	lw	a5,76(sp)
    if (results[0].execs & ID_MATRIX)
     f6e:	0027f713          	andi	a4,a5,2
     f72:	cf15                	beqz	a4,fae <main+0x536>
        for (i = 0; i < default_num_contexts; i++)
     f74:	d541a703          	lw	a4,-684(gp) # 80000554 <default_num_contexts>
     f78:	22e05263          	blez	a4,119c <main+0x724>
     f7c:	6929                	lui	s2,0xa
            ee_printf("[%d]crcmatrix     : 0x%04x\n", i, results[i].crcmatrix);
     f7e:	00890913          	addi	s2,s2,8 # a008 <__fini_array_end+0x2d8>
        for (i = 0; i < default_num_contexts; i++)
     f82:	4b81                	li	s7,0
     f84:	4581                	li	a1,0
            ee_printf("[%d]crcmatrix     : 0x%04x\n", i, results[i].crcmatrix);
     f86:	00459793          	slli	a5,a1,0x4
     f8a:	97ae                	add	a5,a5,a1
     f8c:	078a                	slli	a5,a5,0x2
     f8e:	978a                	add	a5,a5,sp
     f90:	0687d603          	lhu	a2,104(a5)
     f94:	854a                	mv	a0,s2
        for (i = 0; i < default_num_contexts; i++)
     f96:	0b85                	addi	s7,s7,1
            ee_printf("[%d]crcmatrix     : 0x%04x\n", i, results[i].crcmatrix);
     f98:	36d010ef          	jal	2b04 <printf>
        for (i = 0; i < default_num_contexts; i++)
     f9c:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
     fa0:	0bc2                	slli	s7,s7,0x10
     fa2:	010bdb93          	srli	s7,s7,0x10
     fa6:	85de                	mv	a1,s7
     fa8:	fcfbcfe3          	blt	s7,a5,f86 <main+0x50e>
     fac:	47b6                	lw	a5,76(sp)
    if (results[0].execs & ID_STATE)
     fae:	8b91                	andi	a5,a5,4
     fb0:	cf8d                	beqz	a5,fea <main+0x572>
        for (i = 0; i < default_num_contexts; i++)
     fb2:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
     fb6:	06f05663          	blez	a5,1022 <main+0x5aa>
     fba:	6929                	lui	s2,0xa
            ee_printf("[%d]crcstate      : 0x%04x\n", i, results[i].crcstate);
     fbc:	02490913          	addi	s2,s2,36 # a024 <__fini_array_end+0x2f4>
        for (i = 0; i < default_num_contexts; i++)
     fc0:	4b81                	li	s7,0
     fc2:	4581                	li	a1,0
            ee_printf("[%d]crcstate      : 0x%04x\n", i, results[i].crcstate);
     fc4:	00459793          	slli	a5,a1,0x4
     fc8:	97ae                	add	a5,a5,a1
     fca:	078a                	slli	a5,a5,0x2
     fcc:	978a                	add	a5,a5,sp
     fce:	06a7d603          	lhu	a2,106(a5)
     fd2:	854a                	mv	a0,s2
        for (i = 0; i < default_num_contexts; i++)
     fd4:	0b85                	addi	s7,s7,1
            ee_printf("[%d]crcstate      : 0x%04x\n", i, results[i].crcstate);
     fd6:	32f010ef          	jal	2b04 <printf>
        for (i = 0; i < default_num_contexts; i++)
     fda:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
     fde:	0bc2                	slli	s7,s7,0x10
     fe0:	010bdb93          	srli	s7,s7,0x10
     fe4:	85de                	mv	a1,s7
     fe6:	fcfbcfe3          	blt	s7,a5,fc4 <main+0x54c>
    for (i = 0; i < default_num_contexts; i++)
     fea:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
     fee:	6929                	lui	s2,0xa
        ee_printf("[%d]crcfinal      : 0x%04x\n", i, results[i].crc);
     ff0:	04090913          	addi	s2,s2,64 # a040 <__fini_array_end+0x310>
    for (i = 0; i < default_num_contexts; i++)
     ff4:	4b81                	li	s7,0
     ff6:	4581                	li	a1,0
     ff8:	02f05563          	blez	a5,1022 <main+0x5aa>
        ee_printf("[%d]crcfinal      : 0x%04x\n", i, results[i].crc);
     ffc:	00459793          	slli	a5,a1,0x4
    1000:	97ae                	add	a5,a5,a1
    1002:	078a                	slli	a5,a5,0x2
    1004:	978a                	add	a5,a5,sp
    1006:	0647d603          	lhu	a2,100(a5)
    100a:	854a                	mv	a0,s2
    for (i = 0; i < default_num_contexts; i++)
    100c:	0b85                	addi	s7,s7,1
        ee_printf("[%d]crcfinal      : 0x%04x\n", i, results[i].crc);
    100e:	2f7010ef          	jal	2b04 <printf>
    for (i = 0; i < default_num_contexts; i++)
    1012:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
    1016:	0bc2                	slli	s7,s7,0x10
    1018:	010bdb93          	srli	s7,s7,0x10
    101c:	85de                	mv	a1,s7
    101e:	fcfbcfe3          	blt	s7,a5,ffc <main+0x584>
    if (total_errors == 0)
    1022:	06098463          	beqz	s3,108a <main+0x612>
#endif
            ee_printf("\n");
        }
#endif
    }
    if (total_errors > 0)
    1026:	0d305363          	blez	s3,10ec <main+0x674>
        ee_printf("Errors detected\n");
    102a:	6529                	lui	a0,0xa
    102c:	12c50513          	addi	a0,a0,300 # a12c <__fini_array_end+0x3fc>
    1030:	070040ef          	jal	50a0 <puts>
            "Cannot validate operation for these seed values, please compare "
            "with results on a known platform.\n");

#if (MEM_METHOD == MEM_MALLOC)
    for (i = 0; i < MULTITHREAD; i++)
        portable_free(results[i].memblock[0]);
    1034:	5552                	lw	a0,52(sp)
    1036:	0bd000ef          	jal	18f2 <portable_free>
#endif
    /* And last call any target specific code for finalizing */
    portable_fini(&(results[0].port));
    103a:	06e10513          	addi	a0,sp,110
    103e:	2f2d                	jal	1778 <portable_fini>

    return MAIN_RETURN_VAL;
}
    1040:	50ba                	lw	ra,172(sp)
    1042:	542a                	lw	s0,168(sp)
    1044:	549a                	lw	s1,164(sp)
    1046:	590a                	lw	s2,160(sp)
    1048:	49fa                	lw	s3,156(sp)
    104a:	4a6a                	lw	s4,152(sp)
    104c:	4ada                	lw	s5,148(sp)
    104e:	4b4a                	lw	s6,144(sp)
    1050:	4bba                	lw	s7,140(sp)
    1052:	4c2a                	lw	s8,136(sp)
    1054:	4c9a                	lw	s9,132(sp)
    1056:	4d0a                	lw	s10,128(sp)
    1058:	4501                	li	a0,0
    105a:	614d                	addi	sp,sp,176
    105c:	8082                	ret
                ee_printf("[%u]ERROR! state crc 0x%04x - should be 0x%04x\n",
    105e:	4692                	lw	a3,4(sp)
    1060:	4552                	lw	a0,20(sp)
    1062:	85d6                	mv	a1,s5
    1064:	2a1010ef          	jal	2b04 <printf>
                results[i].err++;
    1068:	ffccd783          	lhu	a5,-4(s9)
    106c:	0785                	addi	a5,a5,1
    106e:	07c2                	slli	a5,a5,0x10
    1070:	83c1                	srli	a5,a5,0x10
    1072:	fefc9e23          	sh	a5,-4(s9)
    1076:	b9d5                	j	d6a <main+0x2f2>
    1078:	5df6                	lw	s11,124(sp)
    107a:	bb7d                	j	e38 <main+0x3c0>
        ee_printf(
    107c:	6529                	lui	a0,0xa
    107e:	f0c50513          	addi	a0,a0,-244 # 9f0c <__fini_array_end+0x1dc>
    1082:	01e040ef          	jal	50a0 <puts>
        total_errors++;
    1086:	0985                	addi	s3,s3,1
    1088:	b5b9                	j	ed6 <main+0x45e>
        ee_printf(
    108a:	6529                	lui	a0,0xa
    108c:	05c50513          	addi	a0,a0,92 # a05c <__fini_array_end+0x32c>
    1090:	010040ef          	jal	50a0 <puts>
        if (known_id == 3)
    1094:	4762                	lw	a4,24(sp)
    1096:	478d                	li	a5,3
    1098:	f8f71ee3          	bne	a4,a5,1034 <main+0x5bc>
                      default_num_contexts * results[0].iterations
    109c:	d541a783          	lw	a5,-684(gp) # 80000554 <default_num_contexts>
    10a0:	4526                	lw	a0,72(sp)
            ee_printf("CoreMark 1.0 : %f / %s %s",
    10a2:	02f50533          	mul	a0,a0,a5
    10a6:	0c3080ef          	jal	9968 <__floatunsidf>
    10aa:	892a                	mv	s2,a0
    10ac:	89ae                	mv	s3,a1
                          / time_in_secs(total_time),
    10ae:	8522                	mv	a0,s0
    10b0:	85a6                	mv	a1,s1
    10b2:	2b79                	jal	1650 <time_in_secs>
    10b4:	862a                	mv	a2,a0
    10b6:	86ae                	mv	a3,a1
            ee_printf("CoreMark 1.0 : %f / %s %s",
    10b8:	854a                	mv	a0,s2
    10ba:	85ce                	mv	a1,s3
    10bc:	7c5060ef          	jal	8080 <__divdf3>
    10c0:	862a                	mv	a2,a0
    10c2:	6529                	lui	a0,0xa
    10c4:	86ae                	mv	a3,a1
    10c6:	f88a8793          	addi	a5,s5,-120
    10ca:	f64a0713          	addi	a4,s4,-156
    10ce:	0a450513          	addi	a0,a0,164 # a0a4 <__fini_array_end+0x374>
    10d2:	233010ef          	jal	2b04 <printf>
            ee_printf(" / %s", MEM_LOCATION);
    10d6:	6529                	lui	a0,0xa
    10d8:	fb0b0593          	addi	a1,s6,-80
    10dc:	0c050513          	addi	a0,a0,192 # a0c0 <__fini_array_end+0x390>
    10e0:	225010ef          	jal	2b04 <printf>
            ee_printf("\n");
    10e4:	4529                	li	a0,10
    10e6:	6d3030ef          	jal	4fb8 <putchar>
    if (total_errors < 0)
    10ea:	b7a9                	j	1034 <main+0x5bc>
        ee_printf(
    10ec:	6529                	lui	a0,0xa
    10ee:	0c850513          	addi	a0,a0,200 # a0c8 <__fini_array_end+0x398>
    10f2:	7af030ef          	jal	50a0 <puts>
    10f6:	bf3d                	j	1034 <main+0x5bc>
            ee_printf("6k performance run parameters for coremark.\n");
    10f8:	6529                	lui	a0,0xa
    10fa:	d3050513          	addi	a0,a0,-720 # 9d30 <__fini_array_end>
    10fe:	7a3030ef          	jal	50a0 <puts>
            break;
    1102:	6799                	lui	a5,0x6
    1104:	e4778793          	addi	a5,a5,-441 # 5e47 <__sfvwrite_r+0x383>
    1108:	c23e                	sw	a5,4(sp)
    110a:	67b1                	lui	a5,0xc
    110c:	e5278793          	addi	a5,a5,-430 # be52 <__crt0_copy_data_src_begin+0xe92>
    1110:	c43e                	sw	a5,8(sp)
    1112:	67b5                	lui	a5,0xd
    1114:	4b078793          	addi	a5,a5,1200 # d4b0 <__crt0_copy_data_src_begin+0x24f0>
    1118:	4c12                	lw	s8,4(sp)
    111a:	4ba2                	lw	s7,8(sp)
    111c:	c03e                	sw	a5,0(sp)
    111e:	8b3e                	mv	s6,a5
            known_id = 0;
    1120:	cc02                	sw	zero,24(sp)
            break;
    1122:	b919                	j	d38 <main+0x2c0>
            ee_printf("2K validation run parameters for coremark.\n");
    1124:	6529                	lui	a0,0xa
    1126:	de850513          	addi	a0,a0,-536 # 9de8 <__fini_array_end+0xb8>
    112a:	777030ef          	jal	50a0 <puts>
            break;
    112e:	67a5                	lui	a5,0x9
    1130:	d8478793          	addi	a5,a5,-636 # 8d84 <__muldf3+0x30c>
    1134:	c23e                	sw	a5,4(sp)
    1136:	67b9                	lui	a5,0xe
    1138:	3c178793          	addi	a5,a5,961 # e3c1 <__crt0_copy_data_src_begin+0x3401>
    113c:	c03e                	sw	a5,0(sp)
    113e:	74700793          	li	a5,1863
    1142:	c43e                	sw	a5,8(sp)
    1144:	8bbe                	mv	s7,a5
            known_id = 4;
    1146:	4791                	li	a5,4
            break;
    1148:	4c12                	lw	s8,4(sp)
    114a:	4b02                	lw	s6,0(sp)
            known_id = 4;
    114c:	cc3e                	sw	a5,24(sp)
            break;
    114e:	b6ed                	j	d38 <main+0x2c0>
            ee_printf("6k validation run parameters for coremark.\n");
    1150:	6529                	lui	a0,0xa
    1152:	d5c50513          	addi	a0,a0,-676 # 9d5c <__fini_array_end+0x2c>
    1156:	74b030ef          	jal	50a0 <puts>
            break;
    115a:	6791                	lui	a5,0x4
    115c:	9bf78793          	addi	a5,a5,-1601 # 39bf <neorv32_cpu_hpm_get_num_counters+0x111>
    1160:	c23e                	sw	a5,4(sp)
    1162:	6785                	lui	a5,0x1
    1164:	19978793          	addi	a5,a5,409 # 1199 <main+0x721>
    1168:	c43e                	sw	a5,8(sp)
    116a:	678d                	lui	a5,0x3
    116c:	34078793          	addi	a5,a5,832 # 3340 <printf+0x83c>
    1170:	c03e                	sw	a5,0(sp)
    1172:	8b3e                	mv	s6,a5
            known_id = 1;
    1174:	4785                	li	a5,1
            break;
    1176:	4c12                	lw	s8,4(sp)
    1178:	4ba2                	lw	s7,8(sp)
            known_id = 1;
    117a:	cc3e                	sw	a5,24(sp)
            break;
    117c:	be75                	j	d38 <main+0x2c0>
        && (results[0].seed3 == 0))
    117e:	03011783          	lh	a5,48(sp)
    1182:	94079ee3          	bnez	a5,ade <main+0x66>
        results[0].seed1 = 0x3415;
    1186:	341537b7          	lui	a5,0x34153
    118a:	41578793          	addi	a5,a5,1045 # 34153415 <__neorv32_ram_size+0x34143415>
        results[0].seed3 = 0x66;
    118e:	06600713          	li	a4,102
        results[0].seed1 = 0x3415;
    1192:	d63e                	sw	a5,44(sp)
        results[0].seed3 = 0x66;
    1194:	02e11823          	sh	a4,48(sp)
    1198:	947ff06f          	j	ade <main+0x66>
    if (results[0].execs & ID_STATE)
    119c:	8b91                	andi	a5,a5,4
    119e:	e40786e3          	beqz	a5,fea <main+0x572>
    11a2:	b541                	j	1022 <main+0x5aa>

000011a4 <matrix_test>:

        After the last step, matrix A is back to original contents.
*/
ee_s16
matrix_test(ee_u32 N, MATRES *C, MATDAT *A, MATDAT *B, MATDAT val)
{
    11a4:	7179                	addi	sp,sp,-48
    11a6:	d226                	sw	s1,36(sp)
    11a8:	d04a                	sw	s2,32(sp)
    11aa:	ca56                	sw	s5,20(sp)
    11ac:	00151493          	slli	s1,a0,0x1
    ee_u16 crc     = 0;
    MATDAT clipval = matrix_big(val);
    11b0:	797d                	lui	s2,0xfffff
{
    11b2:	d606                	sw	ra,44(sp)
    11b4:	8ab2                	mv	s5,a2
    MATDAT clipval = matrix_big(val);
    11b6:	01276933          	or	s2,a4,s2
    11ba:	9626                	add	a2,a2,s1
*/
void
matrix_add_const(ee_u32 N, MATDAT *A, MATDAT val)
{
    ee_u32 i, j;
    for (i = 0; i < N; i++)
    11bc:	32050863          	beqz	a0,14ec <matrix_test+0x348>
    11c0:	ce4e                	sw	s3,28(sp)
    11c2:	cc52                	sw	s4,24(sp)
    11c4:	c65e                	sw	s7,12(sp)
    11c6:	d422                	sw	s0,40(sp)
    11c8:	8bb6                	mv	s7,a3
    11ca:	c85a                	sw	s6,16(sp)
    11cc:	c462                	sw	s8,8(sp)
    11ce:	89ba                	mv	s3,a4
    11d0:	8a2e                	mv	s4,a1
    11d2:	86b2                	mv	a3,a2
    11d4:	4801                	li	a6,0
    {
        for (j = 0; j < N; j++)
    11d6:	409687b3          	sub	a5,a3,s1
        {
            A[i * N + j] += val;
    11da:	0007d703          	lhu	a4,0(a5)
        for (j = 0; j < N; j++)
    11de:	0789                	addi	a5,a5,2
            A[i * N + j] += val;
    11e0:	974e                	add	a4,a4,s3
    11e2:	fee79f23          	sh	a4,-2(a5)
        for (j = 0; j < N; j++)
    11e6:	fed79ae3          	bne	a5,a3,11da <matrix_test+0x36>
    for (i = 0; i < N; i++)
    11ea:	00180413          	addi	s0,a6,1
    11ee:	009786b3          	add	a3,a5,s1
    11f2:	00850463          	beq	a0,s0,11fa <matrix_test+0x56>
    11f6:	8822                	mv	a6,s0
    11f8:	bff9                	j	11d6 <matrix_test+0x32>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    11fa:	4581                	li	a1,0
    for (i = 0; i < N; i++)
    11fc:	4501                	li	a0,0
        for (j = 0; j < N; j++)
    11fe:	00259693          	slli	a3,a1,0x2
    1202:	96d2                	add	a3,a3,s4
    1204:	409607b3          	sub	a5,a2,s1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    1208:	00079703          	lh	a4,0(a5)
        for (j = 0; j < N; j++)
    120c:	0789                	addi	a5,a5,2
    120e:	0691                	addi	a3,a3,4
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    1210:	03370733          	mul	a4,a4,s3
    1214:	fee6ae23          	sw	a4,-4(a3)
        for (j = 0; j < N; j++)
    1218:	fef618e3          	bne	a2,a5,1208 <matrix_test+0x64>
    for (i = 0; i < N; i++)
    121c:	95a2                	add	a1,a1,s0
    121e:	9626                	add	a2,a2,s1
    1220:	01050463          	beq	a0,a6,1228 <matrix_test+0x84>
    1224:	0505                	addi	a0,a0,1
    1226:	bfe1                	j	11fe <matrix_test+0x5a>
    for (i = 0; i < N; i++)
    1228:	00241b13          	slli	s6,s0,0x2
    122c:	016a0c33          	add	s8,s4,s6
            if (tmp > clipval)
    1230:	88e2                	mv	a7,s8
    MATRES tmp = 0, prev = 0, cur = 0;
    1232:	4701                	li	a4,0
    1234:	4601                	li	a2,0
    ee_s16 ret = 0;
    1236:	4501                	li	a0,0
    for (i = 0; i < N; i++)
    1238:	4301                	li	t1,0
        for (j = 0; j < N; j++)
    123a:	416887b3          	sub	a5,a7,s6
    for (i = 0; i < N; i++)
    123e:	86ba                	mv	a3,a4
            cur = C[i * N + j];
    1240:	4398                	lw	a4,0(a5)
                ret += 10;
    1242:	00a50593          	addi	a1,a0,10
        for (j = 0; j < N; j++)
    1246:	0791                	addi	a5,a5,4
                ret += (cur > prev) ? 1 : 0;
    1248:	00e6a6b3          	slt	a3,a3,a4
            tmp += cur;
    124c:	963a                	add	a2,a2,a4
                ret += (cur > prev) ? 1 : 0;
    124e:	9536                	add	a0,a0,a3
            if (tmp > clipval)
    1250:	02c94163          	blt	s2,a2,1272 <matrix_test+0xce>
    1254:	0542                	slli	a0,a0,0x10
    1256:	8541                	srai	a0,a0,0x10
        for (j = 0; j < N; j++)
    1258:	02f88363          	beq	a7,a5,127e <matrix_test+0xda>
            cur = C[i * N + j];
    125c:	86ba                	mv	a3,a4
    125e:	4398                	lw	a4,0(a5)
                ret += 10;
    1260:	00a50593          	addi	a1,a0,10
        for (j = 0; j < N; j++)
    1264:	0791                	addi	a5,a5,4
                ret += (cur > prev) ? 1 : 0;
    1266:	00e6a6b3          	slt	a3,a3,a4
            tmp += cur;
    126a:	963a                	add	a2,a2,a4
                ret += (cur > prev) ? 1 : 0;
    126c:	9536                	add	a0,a0,a3
            if (tmp > clipval)
    126e:	fec953e3          	bge	s2,a2,1254 <matrix_test+0xb0>
    1272:	01059513          	slli	a0,a1,0x10
    1276:	8541                	srai	a0,a0,0x10
                tmp = 0;
    1278:	4601                	li	a2,0
        for (j = 0; j < N; j++)
    127a:	fef891e3          	bne	a7,a5,125c <matrix_test+0xb8>
    for (i = 0; i < N; i++)
    127e:	98da                	add	a7,a7,s6
    1280:	00680463          	beq	a6,t1,1288 <matrix_test+0xe4>
    1284:	0305                	addi	t1,t1,1
    1286:	bf55                	j	123a <matrix_test+0x96>
    crc = crc16(matrix_sum(N, C, clipval), crc);
    1288:	4581                	li	a1,0
    128a:	0a2010ef          	jal	232c <crc16>
    128e:	85aa                	mv	a1,a0
    1290:	88d2                	mv	a7,s4
    1292:	009b8533          	add	a0,s7,s1
    1296:	4301                	li	t1,0
{
    ee_u32 i, j;
    for (i = 0; i < N; i++)
    {
        C[i] = 0;
        for (j = 0; j < N; j++)
    1298:	00131693          	slli	a3,t1,0x1
    129c:	96d6                	add	a3,a3,s5
    crc = crc16(matrix_sum(N, C, clipval), crc);
    129e:	87de                	mv	a5,s7
    12a0:	4601                	li	a2,0
        {
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    12a2:	00069703          	lh	a4,0(a3)
    12a6:	00079803          	lh	a6,0(a5)
        for (j = 0; j < N; j++)
    12aa:	0789                	addi	a5,a5,2
    12ac:	0689                	addi	a3,a3,2
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    12ae:	03070733          	mul	a4,a4,a6
    12b2:	963a                	add	a2,a2,a4
        for (j = 0; j < N; j++)
    12b4:	fea797e3          	bne	a5,a0,12a2 <matrix_test+0xfe>
    12b8:	00c8a023          	sw	a2,0(a7)
    for (i = 0; i < N; i++)
    12bc:	0891                	addi	a7,a7,4
    12be:	9322                	add	t1,t1,s0
    12c0:	fd889ce3          	bne	a7,s8,1298 <matrix_test+0xf4>
    12c4:	4e01                	li	t3,0
    MATRES tmp = 0, prev = 0, cur = 0;
    12c6:	4701                	li	a4,0
    12c8:	4601                	li	a2,0
    ee_s16 ret = 0;
    12ca:	4781                	li	a5,0
    for (i = 0; i < N; i++)
    12cc:	4501                	li	a0,0
        for (j = 0; j < N; j++)
    12ce:	002e1813          	slli	a6,t3,0x2
    12d2:	9852                	add	a6,a6,s4
    for (i = 0; i < N; i++)
    12d4:	86ba                	mv	a3,a4
            cur = C[i * N + j];
    12d6:	00082703          	lw	a4,0(a6)
        for (j = 0; j < N; j++)
    12da:	4881                	li	a7,0
                ret += 10;
    12dc:	00a78313          	addi	t1,a5,10
                ret += (cur > prev) ? 1 : 0;
    12e0:	00e6a6b3          	slt	a3,a3,a4
            tmp += cur;
    12e4:	963a                	add	a2,a2,a4
                ret += (cur > prev) ? 1 : 0;
    12e6:	97b6                	add	a5,a5,a3
        for (j = 0; j < N; j++)
    12e8:	0885                	addi	a7,a7,1
            if (tmp > clipval)
    12ea:	02c94363          	blt	s2,a2,1310 <matrix_test+0x16c>
    12ee:	07c2                	slli	a5,a5,0x10
    12f0:	87c1                	srai	a5,a5,0x10
        for (j = 0; j < N; j++)
    12f2:	0288f963          	bgeu	a7,s0,1324 <matrix_test+0x180>
    12f6:	0811                	addi	a6,a6,4
            cur = C[i * N + j];
    12f8:	86ba                	mv	a3,a4
    12fa:	00082703          	lw	a4,0(a6)
                ret += 10;
    12fe:	00a78313          	addi	t1,a5,10
        for (j = 0; j < N; j++)
    1302:	0885                	addi	a7,a7,1
                ret += (cur > prev) ? 1 : 0;
    1304:	00e6a6b3          	slt	a3,a3,a4
            tmp += cur;
    1308:	963a                	add	a2,a2,a4
                ret += (cur > prev) ? 1 : 0;
    130a:	97b6                	add	a5,a5,a3
            if (tmp > clipval)
    130c:	fec951e3          	bge	s2,a2,12ee <matrix_test+0x14a>
    1310:	01031793          	slli	a5,t1,0x10
    1314:	87c1                	srai	a5,a5,0x10
        for (j = 0; j < N; j++)
    1316:	0088f663          	bgeu	a7,s0,1322 <matrix_test+0x17e>
    131a:	0811                	addi	a6,a6,4
                tmp = 0;
    131c:	4601                	li	a2,0
            cur = C[i * N + j];
    131e:	86ba                	mv	a3,a4
    1320:	bfe9                	j	12fa <matrix_test+0x156>
                tmp = 0;
    1322:	4601                	li	a2,0
    for (i = 0; i < N; i++)
    1324:	0505                	addi	a0,a0,1
    1326:	9e22                	add	t3,t3,s0
    1328:	fa8563e3          	bltu	a0,s0,12ce <matrix_test+0x12a>
    crc = crc16(matrix_sum(N, C, clipval), crc);
    132c:	853e                	mv	a0,a5
    132e:	7ff000ef          	jal	232c <crc16>
    1332:	85aa                	mv	a1,a0
    1334:	8fd2                	mv	t6,s4
    1336:	8ed6                	mv	t4,s5
*/
void
matrix_mul_matrix(ee_u32 N, MATRES *C, MATDAT *A, MATDAT *B)
{
    ee_u32 i, j, k;
    for (i = 0; i < N; i++)
    1338:	4f01                	li	t5,0
                tmp = 0;
    133a:	855e                	mv	a0,s7
    133c:	867e                	mv	a2,t6
    {
        for (j = 0; j < N; j++)
    133e:	4681                	li	a3,0
    1340:	832a                	mv	t1,a0
    1342:	88f6                	mv	a7,t4
    1344:	4e01                	li	t3,0
        {
            C[i * N + j] = 0;
            for (k = 0; k < N; k++)
    1346:	4801                	li	a6,0
            {
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    1348:	00089783          	lh	a5,0(a7)
    134c:	00031703          	lh	a4,0(t1)
            for (k = 0; k < N; k++)
    1350:	0805                	addi	a6,a6,1
    1352:	0889                	addi	a7,a7,2
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    1354:	02e787b3          	mul	a5,a5,a4
            for (k = 0; k < N; k++)
    1358:	9326                	add	t1,t1,s1
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    135a:	9e3e                	add	t3,t3,a5
            for (k = 0; k < N; k++)
    135c:	fe8866e3          	bltu	a6,s0,1348 <matrix_test+0x1a4>
    1360:	01c62023          	sw	t3,0(a2)
        for (j = 0; j < N; j++)
    1364:	0685                	addi	a3,a3,1
    1366:	0611                	addi	a2,a2,4
    1368:	0509                	addi	a0,a0,2
    136a:	fc86ebe3          	bltu	a3,s0,1340 <matrix_test+0x19c>
    for (i = 0; i < N; i++)
    136e:	0f05                	addi	t5,t5,1
    1370:	9ea6                	add	t4,t4,s1
    1372:	9fda                	add	t6,t6,s6
    1374:	fc8f63e3          	bltu	t5,s0,133a <matrix_test+0x196>
    1378:	4e01                	li	t3,0
    MATRES tmp = 0, prev = 0, cur = 0;
    137a:	4701                	li	a4,0
    137c:	4601                	li	a2,0
    ee_s16 ret = 0;
    137e:	4781                	li	a5,0
    for (i = 0; i < N; i++)
    1380:	4301                	li	t1,0
        for (j = 0; j < N; j++)
    1382:	002e1813          	slli	a6,t3,0x2
    1386:	9852                	add	a6,a6,s4
    for (i = 0; i < N; i++)
    1388:	86ba                	mv	a3,a4
            cur = C[i * N + j];
    138a:	00082703          	lw	a4,0(a6)
        for (j = 0; j < N; j++)
    138e:	4881                	li	a7,0
                ret += 10;
    1390:	00a78513          	addi	a0,a5,10
                ret += (cur > prev) ? 1 : 0;
    1394:	00e6a6b3          	slt	a3,a3,a4
            tmp += cur;
    1398:	963a                	add	a2,a2,a4
                ret += (cur > prev) ? 1 : 0;
    139a:	97b6                	add	a5,a5,a3
        for (j = 0; j < N; j++)
    139c:	0885                	addi	a7,a7,1
            if (tmp > clipval)
    139e:	02c94363          	blt	s2,a2,13c4 <matrix_test+0x220>
    13a2:	07c2                	slli	a5,a5,0x10
    13a4:	87c1                	srai	a5,a5,0x10
        for (j = 0; j < N; j++)
    13a6:	0288f963          	bgeu	a7,s0,13d8 <matrix_test+0x234>
    13aa:	0811                	addi	a6,a6,4
            cur = C[i * N + j];
    13ac:	86ba                	mv	a3,a4
    13ae:	00082703          	lw	a4,0(a6)
                ret += 10;
    13b2:	00a78513          	addi	a0,a5,10
        for (j = 0; j < N; j++)
    13b6:	0885                	addi	a7,a7,1
                ret += (cur > prev) ? 1 : 0;
    13b8:	00e6a6b3          	slt	a3,a3,a4
            tmp += cur;
    13bc:	963a                	add	a2,a2,a4
                ret += (cur > prev) ? 1 : 0;
    13be:	97b6                	add	a5,a5,a3
            if (tmp > clipval)
    13c0:	fec951e3          	bge	s2,a2,13a2 <matrix_test+0x1fe>
    13c4:	01051793          	slli	a5,a0,0x10
    13c8:	87c1                	srai	a5,a5,0x10
        for (j = 0; j < N; j++)
    13ca:	0088f663          	bgeu	a7,s0,13d6 <matrix_test+0x232>
    13ce:	0811                	addi	a6,a6,4
                tmp = 0;
    13d0:	4601                	li	a2,0
            cur = C[i * N + j];
    13d2:	86ba                	mv	a3,a4
    13d4:	bfe9                	j	13ae <matrix_test+0x20a>
                tmp = 0;
    13d6:	4601                	li	a2,0
    for (i = 0; i < N; i++)
    13d8:	0305                	addi	t1,t1,1
    13da:	9e22                	add	t3,t3,s0
    13dc:	fa8363e3          	bltu	t1,s0,1382 <matrix_test+0x1de>
    crc = crc16(matrix_sum(N, C, clipval), crc);
    13e0:	853e                	mv	a0,a5
    13e2:	74b000ef          	jal	232c <crc16>
    13e6:	85aa                	mv	a1,a0
    13e8:	82d2                	mv	t0,s4
    13ea:	8f56                	mv	t5,s5
*/
void
matrix_mul_matrix_bitextract(ee_u32 N, MATRES *C, MATDAT *A, MATDAT *B)
{
    ee_u32 i, j, k;
    for (i = 0; i < N; i++)
    13ec:	4f81                	li	t6,0
                tmp = 0;
    13ee:	855e                	mv	a0,s7
    13f0:	8616                	mv	a2,t0
    {
        for (j = 0; j < N; j++)
    13f2:	4681                	li	a3,0
    13f4:	8e2a                	mv	t3,a0
    13f6:	837a                	mv	t1,t5
    13f8:	4e81                	li	t4,0
        {
            C[i * N + j] = 0;
            for (k = 0; k < N; k++)
    13fa:	4881                	li	a7,0
            {
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    13fc:	00031783          	lh	a5,0(t1)
    1400:	000e1703          	lh	a4,0(t3)
            for (k = 0; k < N; k++)
    1404:	0885                	addi	a7,a7,1
    1406:	0309                	addi	t1,t1,2
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    1408:	02e787b3          	mul	a5,a5,a4
            for (k = 0; k < N; k++)
    140c:	9e26                	add	t3,t3,s1
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    140e:	4027d813          	srai	a6,a5,0x2
    1412:	8795                	srai	a5,a5,0x5
    1414:	00f87813          	andi	a6,a6,15
    1418:	07f7f793          	andi	a5,a5,127
    141c:	02f807b3          	mul	a5,a6,a5
    1420:	9ebe                	add	t4,t4,a5
            for (k = 0; k < N; k++)
    1422:	fc88ede3          	bltu	a7,s0,13fc <matrix_test+0x258>
    1426:	01d62023          	sw	t4,0(a2)
        for (j = 0; j < N; j++)
    142a:	0685                	addi	a3,a3,1
    142c:	0611                	addi	a2,a2,4
    142e:	0509                	addi	a0,a0,2
    1430:	fc86e2e3          	bltu	a3,s0,13f4 <matrix_test+0x250>
    for (i = 0; i < N; i++)
    1434:	0f85                	addi	t6,t6,1
    1436:	9f26                	add	t5,t5,s1
    1438:	92da                	add	t0,t0,s6
    143a:	fa8feae3          	bltu	t6,s0,13ee <matrix_test+0x24a>
    143e:	4e01                	li	t3,0
    MATRES tmp = 0, prev = 0, cur = 0;
    1440:	4701                	li	a4,0
    1442:	4601                	li	a2,0
    ee_s16 ret = 0;
    1444:	4781                	li	a5,0
    for (i = 0; i < N; i++)
    1446:	4301                	li	t1,0
        for (j = 0; j < N; j++)
    1448:	002e1513          	slli	a0,t3,0x2
    144c:	9552                	add	a0,a0,s4
    for (i = 0; i < N; i++)
    144e:	86ba                	mv	a3,a4
            cur = C[i * N + j];
    1450:	4118                	lw	a4,0(a0)
        for (j = 0; j < N; j++)
    1452:	4801                	li	a6,0
                ret += 10;
    1454:	00a78893          	addi	a7,a5,10
                ret += (cur > prev) ? 1 : 0;
    1458:	00e6a6b3          	slt	a3,a3,a4
            tmp += cur;
    145c:	963a                	add	a2,a2,a4
                ret += (cur > prev) ? 1 : 0;
    145e:	97b6                	add	a5,a5,a3
        for (j = 0; j < N; j++)
    1460:	0805                	addi	a6,a6,1
            if (tmp > clipval)
    1462:	02c94263          	blt	s2,a2,1486 <matrix_test+0x2e2>
    1466:	07c2                	slli	a5,a5,0x10
    1468:	87c1                	srai	a5,a5,0x10
        for (j = 0; j < N; j++)
    146a:	02887863          	bgeu	a6,s0,149a <matrix_test+0x2f6>
    146e:	0511                	addi	a0,a0,4
            cur = C[i * N + j];
    1470:	86ba                	mv	a3,a4
    1472:	4118                	lw	a4,0(a0)
                ret += 10;
    1474:	00a78893          	addi	a7,a5,10
        for (j = 0; j < N; j++)
    1478:	0805                	addi	a6,a6,1
                ret += (cur > prev) ? 1 : 0;
    147a:	00e6a6b3          	slt	a3,a3,a4
            tmp += cur;
    147e:	963a                	add	a2,a2,a4
                ret += (cur > prev) ? 1 : 0;
    1480:	97b6                	add	a5,a5,a3
            if (tmp > clipval)
    1482:	fec952e3          	bge	s2,a2,1466 <matrix_test+0x2c2>
    1486:	01089793          	slli	a5,a7,0x10
    148a:	87c1                	srai	a5,a5,0x10
        for (j = 0; j < N; j++)
    148c:	00887663          	bgeu	a6,s0,1498 <matrix_test+0x2f4>
    1490:	0511                	addi	a0,a0,4
                tmp = 0;
    1492:	4601                	li	a2,0
            cur = C[i * N + j];
    1494:	86ba                	mv	a3,a4
    1496:	bff1                	j	1472 <matrix_test+0x2ce>
                tmp = 0;
    1498:	4601                	li	a2,0
    for (i = 0; i < N; i++)
    149a:	0305                	addi	t1,t1,1
    149c:	9e22                	add	t3,t3,s0
    149e:	fa8365e3          	bltu	t1,s0,1448 <matrix_test+0x2a4>
    crc = crc16(matrix_sum(N, C, clipval), crc);
    14a2:	853e                	mv	a0,a5
    14a4:	689000ef          	jal	232c <crc16>
    14a8:	4581                	li	a1,0
    for (i = 0; i < N; i++)
    14aa:	4601                	li	a2,0
        for (j = 0; j < N; j++)
    14ac:	00159793          	slli	a5,a1,0x1
    14b0:	97d6                	add	a5,a5,s5
    14b2:	4681                	li	a3,0
            A[i * N + j] += val;
    14b4:	0007d703          	lhu	a4,0(a5)
        for (j = 0; j < N; j++)
    14b8:	0685                	addi	a3,a3,1
    14ba:	0789                	addi	a5,a5,2
            A[i * N + j] += val;
    14bc:	41370733          	sub	a4,a4,s3
    14c0:	fee79f23          	sh	a4,-2(a5)
        for (j = 0; j < N; j++)
    14c4:	fe86e8e3          	bltu	a3,s0,14b4 <matrix_test+0x310>
    for (i = 0; i < N; i++)
    14c8:	0605                	addi	a2,a2,1
    14ca:	95a2                	add	a1,a1,s0
    14cc:	fe8660e3          	bltu	a2,s0,14ac <matrix_test+0x308>
    return crc;
    14d0:	5422                	lw	s0,40(sp)
}
    14d2:	50b2                	lw	ra,44(sp)
    14d4:	0542                	slli	a0,a0,0x10
    14d6:	49f2                	lw	s3,28(sp)
    14d8:	4a62                	lw	s4,24(sp)
    14da:	4b42                	lw	s6,16(sp)
    14dc:	4bb2                	lw	s7,12(sp)
    14de:	4c22                	lw	s8,8(sp)
    14e0:	5492                	lw	s1,36(sp)
    14e2:	5902                	lw	s2,32(sp)
    14e4:	4ad2                	lw	s5,20(sp)
    14e6:	8541                	srai	a0,a0,0x10
    14e8:	6145                	addi	sp,sp,48
    14ea:	8082                	ret
    crc = crc16(matrix_sum(N, C, clipval), crc);
    14ec:	4581                	li	a1,0
    14ee:	63f000ef          	jal	232c <crc16>
    14f2:	85aa                	mv	a1,a0
    crc = crc16(matrix_sum(N, C, clipval), crc);
    14f4:	4501                	li	a0,0
    14f6:	637000ef          	jal	232c <crc16>
    14fa:	85aa                	mv	a1,a0
    crc = crc16(matrix_sum(N, C, clipval), crc);
    14fc:	4501                	li	a0,0
    14fe:	62f000ef          	jal	232c <crc16>
    1502:	85aa                	mv	a1,a0
    crc = crc16(matrix_sum(N, C, clipval), crc);
    1504:	4501                	li	a0,0
    1506:	627000ef          	jal	232c <crc16>
}
    150a:	50b2                	lw	ra,44(sp)
    150c:	0542                	slli	a0,a0,0x10
    150e:	5492                	lw	s1,36(sp)
    1510:	5902                	lw	s2,32(sp)
    1512:	4ad2                	lw	s5,20(sp)
    1514:	8541                	srai	a0,a0,0x10
    1516:	6145                	addi	sp,sp,48
    1518:	8082                	ret

0000151a <core_bench_matrix>:
{
    151a:	1141                	addi	sp,sp,-16
    151c:	c422                	sw	s0,8(sp)
    crc = crc16(matrix_test(N, C, A, B, val), crc);
    151e:	4514                	lw	a3,8(a0)
{
    1520:	8432                	mv	s0,a2
    1522:	872e                	mv	a4,a1
    crc = crc16(matrix_test(N, C, A, B, val), crc);
    1524:	4150                	lw	a2,4(a0)
    1526:	454c                	lw	a1,12(a0)
    1528:	4108                	lw	a0,0(a0)
{
    152a:	c606                	sw	ra,12(sp)
    crc = crc16(matrix_test(N, C, A, B, val), crc);
    152c:	39a5                	jal	11a4 <matrix_test>
    152e:	85a2                	mv	a1,s0
}
    1530:	4422                	lw	s0,8(sp)
    1532:	40b2                	lw	ra,12(sp)
    1534:	0141                	addi	sp,sp,16
    crc = crc16(matrix_test(N, C, A, B, val), crc);
    1536:	5f70006f          	j	232c <crc16>

0000153a <core_init_matrix>:
{
    153a:	1141                	addi	sp,sp,-16
    153c:	c622                	sw	s0,12(sp)
    153e:	c426                	sw	s1,8(sp)
    1540:	882a                	mv	a6,a0
    if (seed == 0)
    1542:	e211                	bnez	a2,1546 <core_init_matrix+0xc>
        seed = 1;
    1544:	4605                	li	a2,1
    A = (MATDAT *)align_mem(memblk);
    1546:	fff58413          	addi	s0,a1,-1
    154a:	9871                	andi	s0,s0,-4
    154c:	00440393          	addi	t2,s0,4
    while (j < blksize)
    1550:	4781                	li	a5,0
    1552:	08080b63          	beqz	a6,15e8 <core_init_matrix+0xae>
        i++;
    1556:	853e                	mv	a0,a5
    1558:	0785                	addi	a5,a5,1
        j = i * i * 2 * 4;
    155a:	02f78733          	mul	a4,a5,a5
    155e:	070e                	slli	a4,a4,0x3
    while (j < blksize)
    1560:	ff076be3          	bltu	a4,a6,1556 <core_init_matrix+0x1c>
    B = A + N * N;
    1564:	02a502b3          	mul	t0,a0,a0
    1568:	0286                	slli	t0,t0,0x1
    156a:	00538433          	add	s0,t2,t0
    for (i = 0; i < N; i++)
    156e:	c159                	beqz	a0,15f4 <core_init_matrix+0xba>
    1570:	c24a                	sw	s2,4(sp)
    p->N = N;
    1572:	84aa                	mv	s1,a0
    1574:	00150313          	addi	t1,a0,1
    1578:	00151913          	slli	s2,a0,0x1
    B = A + N * N;
    157c:	8f22                	mv	t5,s0
    for (i = 0; i < N; i++)
    157e:	4e81                	li	t4,0
    ee_s32  order = 1;
    1580:	4785                	li	a5,1
    1582:	40838e33          	sub	t3,t2,s0
        for (j = 0; j < N; j++)
    1586:	8fbe                	mv	t6,a5
    B = A + N * N;
    1588:	85fa                	mv	a1,t5
            seed         = ((order * seed) % 65536);
    158a:	02f60633          	mul	a2,a2,a5
            A[i * N + j] = val;
    158e:	00be08b3          	add	a7,t3,a1
        for (j = 0; j < N; j++)
    1592:	0589                	addi	a1,a1,2
            seed         = ((order * seed) % 65536);
    1594:	41f65713          	srai	a4,a2,0x1f
    1598:	8341                	srli	a4,a4,0x10
    159a:	963a                	add	a2,a2,a4
    159c:	0642                	slli	a2,a2,0x10
    159e:	8241                	srli	a2,a2,0x10
    15a0:	8e19                	sub	a2,a2,a4
            val          = (seed + order);
    15a2:	00c78833          	add	a6,a5,a2
            val          = (val + order);
    15a6:	00f80733          	add	a4,a6,a5
            B[i * N + j] = val;
    15aa:	ff059f23          	sh	a6,-2(a1)
            val          = matrix_clip(val, 1);
    15ae:	0ff77713          	zext.b	a4,a4
            order++;
    15b2:	0785                	addi	a5,a5,1
            A[i * N + j] = val;
    15b4:	00e89023          	sh	a4,0(a7)
        for (j = 0; j < N; j++)
    15b8:	fc6799e3          	bne	a5,t1,158a <core_init_matrix+0x50>
    for (i = 0; i < N; i++)
    15bc:	0e85                	addi	t4,t4,1 # ffff8001 <__crt0_stack_top+0x7ffe8001>
    15be:	01f507b3          	add	a5,a0,t6
    15c2:	932a                	add	t1,t1,a0
    15c4:	9f4a                	add	t5,t5,s2
    15c6:	fcae90e3          	bne	t4,a0,1586 <core_init_matrix+0x4c>
    15ca:	4912                	lw	s2,4(sp)
    p->C = (MATRES *)align_mem(B + N * N);
    15cc:	005407b3          	add	a5,s0,t0
    15d0:	17fd                	addi	a5,a5,-1
    p->B = B;
    15d2:	c680                	sw	s0,8(a3)
    p->C = (MATRES *)align_mem(B + N * N);
    15d4:	9bf1                	andi	a5,a5,-4
}
    15d6:	4432                	lw	s0,12(sp)
    p->C = (MATRES *)align_mem(B + N * N);
    15d8:	0791                	addi	a5,a5,4
    p->N = N;
    15da:	c284                	sw	s1,0(a3)
    p->C = (MATRES *)align_mem(B + N * N);
    15dc:	c6dc                	sw	a5,12(a3)
    p->A = A;
    15de:	0076a223          	sw	t2,4(a3)
}
    15e2:	44a2                	lw	s1,8(sp)
    15e4:	0141                	addi	sp,sp,16
    15e6:	8082                	ret
    B = A + N * N;
    15e8:	54fd                	li	s1,-1
    15ea:	c24a                	sw	s2,4(sp)
    15ec:	0419                	addi	s0,s0,6
    N = i - 1;
    15ee:	8526                	mv	a0,s1
    B = A + N * N;
    15f0:	4289                	li	t0,2
    15f2:	b749                	j	1574 <core_init_matrix+0x3a>
    for (i = 0; i < N; i++)
    15f4:	4281                	li	t0,0
    15f6:	4481                	li	s1,0
    15f8:	bfd1                	j	15cc <core_init_matrix+0x92>

000015fa <start_time>:
 * This function will be called right before starting the timed portion of the benchmark.
 *
 * Implementation may be capturing a system timer (as implemented in the
 * example code) or zeroing some system parameters - e.g. setting the cpu clocks cycles to 0.
*/
void start_time(void) {
    15fa:	1141                	addi	sp,sp,-16
    15fc:	c606                	sw	ra,12(sp)
    GETMYTIME(&start_time_val);
    15fe:	29e020ef          	jal	389c <neorv32_cpu_get_cycle>
    1602:	d8a1a023          	sw	a0,-640(gp) # 80000580 <start_time_val>
    1606:	d8b1a223          	sw	a1,-636(gp) # 80000584 <start_time_val+0x4>
 * @param[in] data Data to write (uint32_t).
 **************************************************************************/
inline void __attribute__ ((always_inline)) neorv32_cpu_csr_write(const int csr_id, uint32_t data) {

  uint32_t csr_data = data;
  asm volatile ("csrw %[id], %[src]" :  : [id] "i" (csr_id), [src] "r" (csr_data));
    160a:	4781                	li	a5,0
    160c:	32079073          	csrw	mcountinhibit,a5
    neorv32_cpu_csr_write(CSR_MCOUNTINHIBIT, 0); // start all counters
}
    1610:	40b2                	lw	ra,12(sp)
    1612:	0141                	addi	sp,sp,16
    1614:	8082                	ret

00001616 <stop_time>:
 * This function will be called right after ending the timed portion of the benchmark.
 *
 * Implementation may be capturing a system timer (as implemented in the example code) or
 * other system parameters - e.g. reading the current value of cpu cycles counter.
 */
void stop_time(void) {
    1616:	1141                	addi	sp,sp,-16
    1618:	c606                	sw	ra,12(sp)
    161a:	57fd                	li	a5,-1
    161c:	32079073          	csrw	mcountinhibit,a5
    neorv32_cpu_csr_write(CSR_MCOUNTINHIBIT, -1); // stop all counters
    GETMYTIME(&stop_time_val);
    1620:	27c020ef          	jal	389c <neorv32_cpu_get_cycle>
}
    1624:	40b2                	lw	ra,12(sp)
    GETMYTIME(&stop_time_val);
    1626:	d6a1ac23          	sw	a0,-648(gp) # 80000578 <stop_time_val>
    162a:	d6b1ae23          	sw	a1,-644(gp) # 8000057c <stop_time_val+0x4>
}
    162e:	0141                	addi	sp,sp,16
    1630:	8082                	ret

00001632 <get_time>:
 * methodology is taken to accommodate any hardware or simulated platform. The
 * sample implementation returns milliseconds by default, and the resolution is
 * controlled by <TIMER_RES_DIVIDER>
 */
CORE_TICKS get_time(void) {
    CORE_TICKS elapsed
    1632:	d781a783          	lw	a5,-648(gp) # 80000578 <stop_time_val>
    1636:	d801a503          	lw	a0,-640(gp) # 80000580 <start_time_val>
    163a:	d7c1a583          	lw	a1,-644(gp) # 8000057c <stop_time_val+0x4>
    163e:	d841a703          	lw	a4,-636(gp) # 80000584 <start_time_val+0x4>
    1642:	40a78533          	sub	a0,a5,a0
    1646:	00a7b7b3          	sltu	a5,a5,a0
    164a:	8d99                	sub	a1,a1,a4
        = (CORE_TICKS)(MYTIMEDIFF(stop_time_val, start_time_val));
    return elapsed;
}
    164c:	8d9d                	sub	a1,a1,a5
    164e:	8082                	ret

00001650 <time_in_secs>:
/**********************************************************************//**
 * Get current processor clock frequency.
 * @return Clock frequency in Hz.
 **************************************************************************/
inline uint32_t __attribute__ ((always_inline)) neorv32_sysinfo_get_clk(void) {
  return NEORV32_SYSINFO->CLK;
    1650:	7781                	lui	a5,0xfffe0
    1652:	4390                	lw	a2,0(a5)
 * Convert the value returned by get_time to seconds.
 *
 * The <secs_ret> type is used to accommodate systems with no support for floating point.
 * Default implementation implemented by the EE_TICKS_PER_SEC macro above.
 */
secs_ret time_in_secs(CORE_TICKS ticks) {
    1654:	1141                	addi	sp,sp,-16
    /* NEORV32-specific */
    secs_ret retval = (secs_ret)(((CORE_TICKS)ticks) / ((CORE_TICKS)neorv32_sysinfo_get_clk()));
    1656:	4681                	li	a3,0
secs_ret time_in_secs(CORE_TICKS ticks) {
    1658:	c606                	sw	ra,12(sp)
    secs_ret retval = (secs_ret)(((CORE_TICKS)ticks) / ((CORE_TICKS)neorv32_sysinfo_get_clk()));
    165a:	527050ef          	jal	7380 <__udivdi3>
    165e:	386080ef          	jal	99e4 <__floatundidf>
    return retval;
}
    1662:	40b2                	lw	ra,12(sp)
    1664:	0141                	addi	sp,sp,16
    1666:	8082                	ret

00001668 <portable_init>:

/* Function : portable_init
 * Target specific initialization code
 * Test for some common mistakes.
 */
void portable_init(core_portable *p, int *argc, char *argv[]) {
    1668:	1141                	addi	sp,sp,-16
    166a:	c422                	sw	s0,8(sp)
    166c:	c226                	sw	s1,4(sp)
    166e:	c606                	sw	ra,12(sp)
    1670:	84aa                	mv	s1,a0
    1672:	4401                	li	s0,0
    1674:	30441073          	csrw	mie,s0

  /* NEORV32-specific */
  neorv32_cpu_csr_write(CSR_MIE, 0); // no interrupt, thanks
  neorv32_rte_setup(); // capture all trap and give debug information, no HW flow control
    1678:	31b020ef          	jal	4192 <neorv32_rte_setup>
  asm volatile ("csrr %[dst], %[id]" : [dst] "=r" (csr_data) : [id] "i" (csr_id));
    167c:	fc0027f3          	csrr	a5,0xfc0

  // abort if CPU base counter not available
  if ((neorv32_cpu_csr_read(CSR_MXISA) & (1 << CSR_MXISA_ZICNTR)) == 0) {
    1680:	0807f793          	andi	a5,a5,128
    1684:	eb89                	bnez	a5,1696 <portable_init+0x2e>
    neorv32_uart0_printf("ERROR! No CPU base counters available (Zicntr)!\n");
    1686:	65a9                	lui	a1,0xa
    1688:	13c58593          	addi	a1,a1,316 # a13c <__fini_array_end+0x40c>
    168c:	fff50537          	lui	a0,0xfff50
    1690:	69b020ef          	jal	452a <neorv32_uart_printf>
    while(1); // halt
    1694:	a001                	j	1694 <portable_init+0x2c>
  }

  // setup UART at default baud rate, no interrupts
  neorv32_uart0_setup(BAUD_RATE, 0);
    1696:	6595                	lui	a1,0x5
    1698:	b0058593          	addi	a1,a1,-1280 # 4b00 <_malloc_r+0x3cc>
    169c:	4601                	li	a2,0
    169e:	fff50537          	lui	a0,0xfff50
    16a2:	36f020ef          	jal	4210 <neorv32_uart_setup>

  // get number of available HPM counters
  num_hpm_cnts_global = neorv32_cpu_hpm_get_num_counters();
    16a6:	208020ef          	jal	38ae <neorv32_cpu_hpm_get_num_counters>
    16aa:	d6a1a823          	sw	a0,-656(gp) # 80000570 <num_hpm_cnts_global>
  asm volatile ("csrw %[id], %[src]" :  : [id] "i" (csr_id), [src] "r" (csr_data));
    16ae:	57fd                	li	a5,-1
    16b0:	32079073          	csrw	mcountinhibit,a5
    16b4:	b0041073          	csrw	mcycle,s0
    16b8:	b0241073          	csrw	minstret,s0
  // setup base counters
  neorv32_cpu_csr_write(CSR_MCYCLE, 0);
  neorv32_cpu_csr_write(CSR_MINSTRET, 0);

  // try to setup as many HPMs as possible
  if (num_hpm_cnts_global > 0)  {neorv32_cpu_csr_write(CSR_MHPMCOUNTER3,  0); neorv32_cpu_csr_write(CSR_MHPMEVENT3,  1 << HPMCNT_EVENT_COMPR);    }
    16bc:	c541                	beqz	a0,1744 <portable_init+0xdc>
    16be:	b0341073          	csrw	mhpmcounter3,s0
    16c2:	47a1                	li	a5,8
    16c4:	32379073          	csrw	mhpmevent3,a5
  if (num_hpm_cnts_global > 1)  {neorv32_cpu_csr_write(CSR_MHPMCOUNTER4,  0); neorv32_cpu_csr_write(CSR_MHPMEVENT4,  1 << HPMCNT_EVENT_WAIT_DIS); }
    16c8:	4785                	li	a5,1
    16ca:	06f50d63          	beq	a0,a5,1744 <portable_init+0xdc>
    16ce:	b0441073          	csrw	mhpmcounter4,s0
    16d2:	47c1                	li	a5,16
    16d4:	32479073          	csrw	mhpmevent4,a5
  if (num_hpm_cnts_global > 2)  {neorv32_cpu_csr_write(CSR_MHPMCOUNTER5,  0); neorv32_cpu_csr_write(CSR_MHPMEVENT5,  1 << HPMCNT_EVENT_WAIT_ALU); }
    16d8:	4789                	li	a5,2
    16da:	06f50563          	beq	a0,a5,1744 <portable_init+0xdc>
    16de:	b0541073          	csrw	mhpmcounter5,s0
    16e2:	02000793          	li	a5,32
    16e6:	32579073          	csrw	mhpmevent5,a5
  if (num_hpm_cnts_global > 3)  {neorv32_cpu_csr_write(CSR_MHPMCOUNTER6,  0); neorv32_cpu_csr_write(CSR_MHPMEVENT6,  1 << HPMCNT_EVENT_BRANCH);   }
    16ea:	478d                	li	a5,3
    16ec:	04f50c63          	beq	a0,a5,1744 <portable_init+0xdc>
    16f0:	b0641073          	csrw	mhpmcounter6,s0
    16f4:	04000793          	li	a5,64
    16f8:	32679073          	csrw	mhpmevent6,a5
  if (num_hpm_cnts_global > 4)  {neorv32_cpu_csr_write(CSR_MHPMCOUNTER7,  0); neorv32_cpu_csr_write(CSR_MHPMEVENT7,  1 << HPMCNT_EVENT_CTRLFLOW); }
    16fc:	4791                	li	a5,4
    16fe:	04f50363          	beq	a0,a5,1744 <portable_init+0xdc>
    1702:	b0741073          	csrw	mhpmcounter7,s0
    1706:	08000793          	li	a5,128
    170a:	32779073          	csrw	mhpmevent7,a5
  if (num_hpm_cnts_global > 5)  {neorv32_cpu_csr_write(CSR_MHPMCOUNTER8,  0); neorv32_cpu_csr_write(CSR_MHPMEVENT8,  1 << HPMCNT_EVENT_LOAD);     }
    170e:	4795                	li	a5,5
    1710:	02f50a63          	beq	a0,a5,1744 <portable_init+0xdc>
    1714:	b0841073          	csrw	mhpmcounter8,s0
    1718:	10000793          	li	a5,256
    171c:	32879073          	csrw	mhpmevent8,a5
  if (num_hpm_cnts_global > 6)  {neorv32_cpu_csr_write(CSR_MHPMCOUNTER9,  0); neorv32_cpu_csr_write(CSR_MHPMEVENT9,  1 << HPMCNT_EVENT_STORE);    }
    1720:	4799                	li	a5,6
    1722:	02f50163          	beq	a0,a5,1744 <portable_init+0xdc>
    1726:	b0941073          	csrw	mhpmcounter9,s0
    172a:	20000793          	li	a5,512
    172e:	32979073          	csrw	mhpmevent9,a5
  if (num_hpm_cnts_global > 7)  {neorv32_cpu_csr_write(CSR_MHPMCOUNTER10, 0); neorv32_cpu_csr_write(CSR_MHPMEVENT10, 1 << HPMCNT_EVENT_WAIT_LSU); }
    1732:	479d                	li	a5,7
    1734:	00f50863          	beq	a0,a5,1744 <portable_init+0xdc>
    1738:	b0a41073          	csrw	mhpmcounter10,s0
    173c:	40000793          	li	a5,1024
    1740:	32a79073          	csrw	mhpmevent10,a5
    1744:	7781                	lui	a5,0xfffe0
    1746:	4390                	lw	a2,0(a5)

  neorv32_uart0_printf("NEORV32: Processor running at %u Hz\n", (uint32_t)neorv32_sysinfo_get_clk());
    1748:	65a9                	lui	a1,0xa
    174a:	17058593          	addi	a1,a1,368 # a170 <__fini_array_end+0x440>
    174e:	fff50537          	lui	a0,0xfff50
    1752:	5d9020ef          	jal	452a <neorv32_uart_printf>
#if MULTITHREAD == 2
  neorv32_uart0_printf("NEORV32: SMP dual-core version (HIGHLY EXPERIMENTAL!)\n");
#endif
  neorv32_uart0_printf("NEORV32: Executing coremark (%u iterations). This may take some time...\n\n", (uint32_t)ITERATIONS);
    1756:	65a9                	lui	a1,0xa
    1758:	19858593          	addi	a1,a1,408 # a198 <__fini_array_end+0x468>
    175c:	7d000613          	li	a2,2000
    1760:	fff50537          	lui	a0,0xfff50
    1764:	5c7020ef          	jal	452a <neorv32_uart_printf>
    }
    if (sizeof(ee_u32) != 4)
    {
        ee_printf("ERROR! Please define ee_u32 to a 32b unsigned type!\n");
    }
    p->portable_id = 1;
    1768:	4785                	li	a5,1
    176a:	00f48023          	sb	a5,0(s1)
}
    176e:	40b2                	lw	ra,12(sp)
    1770:	4422                	lw	s0,8(sp)
    1772:	4492                	lw	s1,4(sp)
    1774:	0141                	addi	sp,sp,16
    1776:	8082                	ret

00001778 <portable_fini>:


/* Function : portable_fini
 * Target specific final code
 */
void portable_fini(core_portable *p) {
    1778:	1141                	addi	sp,sp,-16
    177a:	c606                	sw	ra,12(sp)
    177c:	c422                	sw	s0,8(sp)

    p->portable_id = 0;

    neorv32_uart0_printf("\nNEORV32: Hardware Performance Monitors (low words only)\n");
    177e:	65a9                	lui	a1,0xa
    p->portable_id = 0;
    1780:	00050023          	sb	zero,0(a0) # fff50000 <__crt0_stack_top+0x7ff40000>
    neorv32_uart0_printf("\nNEORV32: Hardware Performance Monitors (low words only)\n");
    1784:	1e458593          	addi	a1,a1,484 # a1e4 <__fini_array_end+0x4b4>
    1788:	fff50537          	lui	a0,0xfff50
    178c:	59f020ef          	jal	452a <neorv32_uart_printf>
  asm volatile ("csrr %[dst], %[id]" : [dst] "=r" (csr_data) : [id] "i" (csr_id));
    1790:	b0002673          	csrr	a2,mcycle
    neorv32_uart0_printf(" > Active clock cycles         : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MCYCLE));
    1794:	65a9                	lui	a1,0xa
    1796:	22058593          	addi	a1,a1,544 # a220 <__fini_array_end+0x4f0>
    179a:	fff50537          	lui	a0,0xfff50
    179e:	58d020ef          	jal	452a <neorv32_uart_printf>
    17a2:	b0202673          	csrr	a2,minstret
    neorv32_uart0_printf(" > Retired instructions        : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MINSTRET));
    17a6:	65a9                	lui	a1,0xa
    17a8:	24858593          	addi	a1,a1,584 # a248 <__fini_array_end+0x518>
    17ac:	fff50537          	lui	a0,0xfff50
    17b0:	57b020ef          	jal	452a <neorv32_uart_printf>
    if (num_hpm_cnts_global == 0) {neorv32_uart0_printf("no HPMs available\n"); }
    17b4:	d701a783          	lw	a5,-656(gp) # 80000570 <num_hpm_cnts_global>
    17b8:	0e078763          	beqz	a5,18a6 <portable_fini+0x12e>
    17bc:	b0302673          	csrr	a2,mhpmcounter3
    if (num_hpm_cnts_global > 0)  {neorv32_uart0_printf(" > Compressed instructions     : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MHPMCOUNTER3));  }
    17c0:	65a9                	lui	a1,0xa
    17c2:	27058593          	addi	a1,a1,624 # a270 <__fini_array_end+0x540>
    17c6:	fff50537          	lui	a0,0xfff50
    17ca:	561020ef          	jal	452a <neorv32_uart_printf>
    if (num_hpm_cnts_global > 1)  {neorv32_uart0_printf(" > Instr. dispatch wait cycles : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MHPMCOUNTER4));  }
    17ce:	d701a703          	lw	a4,-656(gp) # 80000570 <num_hpm_cnts_global>
    17d2:	4785                	li	a5,1
    17d4:	0ae7ff63          	bgeu	a5,a4,1892 <portable_fini+0x11a>
    17d8:	b0402673          	csrr	a2,mhpmcounter4
    17dc:	65a9                	lui	a1,0xa
    17de:	2ac58593          	addi	a1,a1,684 # a2ac <__fini_array_end+0x57c>
    17e2:	fff50537          	lui	a0,0xfff50
    17e6:	545020ef          	jal	452a <neorv32_uart_printf>
    if (num_hpm_cnts_global > 2)  {neorv32_uart0_printf(" > ALU wait cycles             : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MHPMCOUNTER5));  }
    17ea:	d701a703          	lw	a4,-656(gp) # 80000570 <num_hpm_cnts_global>
    17ee:	4789                	li	a5,2
    17f0:	0ae7f163          	bgeu	a5,a4,1892 <portable_fini+0x11a>
    17f4:	b0502673          	csrr	a2,mhpmcounter5
    17f8:	65a9                	lui	a1,0xa
    17fa:	2d458593          	addi	a1,a1,724 # a2d4 <__fini_array_end+0x5a4>
    17fe:	fff50537          	lui	a0,0xfff50
    1802:	529020ef          	jal	452a <neorv32_uart_printf>
    if (num_hpm_cnts_global > 3)  {neorv32_uart0_printf(" > Branch instructions         : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MHPMCOUNTER6));  }
    1806:	d701a703          	lw	a4,-656(gp) # 80000570 <num_hpm_cnts_global>
    180a:	478d                	li	a5,3
    180c:	08e7f363          	bgeu	a5,a4,1892 <portable_fini+0x11a>
    1810:	b0602673          	csrr	a2,mhpmcounter6
    1814:	65a9                	lui	a1,0xa
    1816:	2fc58593          	addi	a1,a1,764 # a2fc <__fini_array_end+0x5cc>
    181a:	fff50537          	lui	a0,0xfff50
    181e:	50d020ef          	jal	452a <neorv32_uart_printf>
    if (num_hpm_cnts_global > 4)  {neorv32_uart0_printf(" > Control flow transfers      : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MHPMCOUNTER7));  }
    1822:	d701a703          	lw	a4,-656(gp) # 80000570 <num_hpm_cnts_global>
    1826:	4791                	li	a5,4
    1828:	06e7f563          	bgeu	a5,a4,1892 <portable_fini+0x11a>
    182c:	b0702673          	csrr	a2,mhpmcounter7
    1830:	65a9                	lui	a1,0xa
    1832:	32458593          	addi	a1,a1,804 # a324 <__fini_array_end+0x5f4>
    1836:	fff50537          	lui	a0,0xfff50
    183a:	4f1020ef          	jal	452a <neorv32_uart_printf>
    if (num_hpm_cnts_global > 5)  {neorv32_uart0_printf(" > Load instructions           : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MHPMCOUNTER8));  }
    183e:	d701a703          	lw	a4,-656(gp) # 80000570 <num_hpm_cnts_global>
    1842:	4795                	li	a5,5
    1844:	04e7f763          	bgeu	a5,a4,1892 <portable_fini+0x11a>
    1848:	b0802673          	csrr	a2,mhpmcounter8
    184c:	65a9                	lui	a1,0xa
    184e:	34c58593          	addi	a1,a1,844 # a34c <__fini_array_end+0x61c>
    1852:	fff50537          	lui	a0,0xfff50
    1856:	4d5020ef          	jal	452a <neorv32_uart_printf>
    if (num_hpm_cnts_global > 6)  {neorv32_uart0_printf(" > Store instructions          : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MHPMCOUNTER9));  }
    185a:	d701a703          	lw	a4,-656(gp) # 80000570 <num_hpm_cnts_global>
    185e:	4799                	li	a5,6
    1860:	02e7f963          	bgeu	a5,a4,1892 <portable_fini+0x11a>
    1864:	b0902673          	csrr	a2,mhpmcounter9
    1868:	65a9                	lui	a1,0xa
    186a:	37458593          	addi	a1,a1,884 # a374 <__fini_array_end+0x644>
    186e:	fff50537          	lui	a0,0xfff50
    1872:	4b9020ef          	jal	452a <neorv32_uart_printf>
    if (num_hpm_cnts_global > 7)  {neorv32_uart0_printf(" > Load/store wait cycles      : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MHPMCOUNTER10)); }
    1876:	d701a703          	lw	a4,-656(gp) # 80000570 <num_hpm_cnts_global>
    187a:	479d                	li	a5,7
    187c:	00e7fb63          	bgeu	a5,a4,1892 <portable_fini+0x11a>
    1880:	b0a02673          	csrr	a2,mhpmcounter10
    1884:	65a9                	lui	a1,0xa
    1886:	39c58593          	addi	a1,a1,924 # a39c <__fini_array_end+0x66c>
    188a:	fff50537          	lui	a0,0xfff50
    188e:	49d020ef          	jal	452a <neorv32_uart_printf>
    neorv32_uart0_printf("\n");
}
    1892:	4422                	lw	s0,8(sp)
    1894:	40b2                	lw	ra,12(sp)
    neorv32_uart0_printf("\n");
    1896:	65a9                	lui	a1,0xa
    1898:	1e058593          	addi	a1,a1,480 # a1e0 <__fini_array_end+0x4b0>
    189c:	fff50537          	lui	a0,0xfff50
}
    18a0:	0141                	addi	sp,sp,16
    neorv32_uart0_printf("\n");
    18a2:	4890206f          	j	452a <neorv32_uart_printf>
    if (num_hpm_cnts_global == 0) {neorv32_uart0_printf("no HPMs available\n"); }
    18a6:	65a9                	lui	a1,0xa
    18a8:	29858593          	addi	a1,a1,664 # a298 <__fini_array_end+0x568>
    18ac:	fff50537          	lui	a0,0xfff50
    18b0:	47b020ef          	jal	452a <neorv32_uart_printf>
    if (num_hpm_cnts_global > 0)  {neorv32_uart0_printf(" > Compressed instructions     : %u\n", (uint32_t)neorv32_cpu_csr_read(CSR_MHPMCOUNTER3));  }
    18b4:	d701a783          	lw	a5,-656(gp) # 80000570 <num_hpm_cnts_global>
    18b8:	f00792e3          	bnez	a5,17bc <portable_fini+0x44>
}
    18bc:	4422                	lw	s0,8(sp)
    18be:	40b2                	lw	ra,12(sp)
    neorv32_uart0_printf("\n");
    18c0:	65a9                	lui	a1,0xa
    18c2:	1e058593          	addi	a1,a1,480 # a1e0 <__fini_array_end+0x4b0>
    18c6:	fff50537          	lui	a0,0xfff50
}
    18ca:	0141                	addi	sp,sp,16
    neorv32_uart0_printf("\n");
    18cc:	45f0206f          	j	452a <neorv32_uart_printf>

000018d0 <portable_malloc>:

/* Function : portable_malloc
 * Allocate dynamic memory.
 */
void *portable_malloc(size_t size) {
    18d0:	1141                	addi	sp,sp,-16
    18d2:	c606                	sw	ra,12(sp)

  void *pnt;
  pnt = malloc(size);
    18d4:	649020ef          	jal	471c <malloc>

  if (pnt <= 0) {
    18d8:	c501                	beqz	a0,18e0 <portable_malloc+0x10>
    neorv32_uart0_printf("Malloc failed!\n");
    asm volatile ("ebreak");
    while(1);
  }
  return pnt;
}
    18da:	40b2                	lw	ra,12(sp)
    18dc:	0141                	addi	sp,sp,16
    18de:	8082                	ret
    neorv32_uart0_printf("Malloc failed!\n");
    18e0:	65a9                	lui	a1,0xa
    18e2:	3c458593          	addi	a1,a1,964 # a3c4 <__fini_array_end+0x694>
    18e6:	fff50537          	lui	a0,0xfff50
    18ea:	441020ef          	jal	452a <neorv32_uart_printf>
    asm volatile ("ebreak");
    18ee:	9002                	ebreak
    while(1);
    18f0:	a001                	j	18f0 <portable_malloc+0x20>

000018f2 <portable_free>:

/* Function : portable_free
 * Free dynamic memory.
 */
void portable_free(void *p) {
  free(p);
    18f2:	6370206f          	j	4728 <free>

000018f6 <core_init_state>:
    ee_u8 *buf = 0;
#if CORE_DEBUG
    ee_u8 *start = p;
    ee_printf("State: %d,%d\n", size, seed);
#endif
    size--;
    18f6:	fff50813          	addi	a6,a0,-1 # fff4ffff <__crt0_stack_top+0x7ff3ffff>
    next = 0;
    while ((total + next + 1) < size)
    18fa:	4e05                	li	t3,1
{
    18fc:	88b2                	mv	a7,a2
    while ((total + next + 1) < size)
    18fe:	170e7663          	bgeu	t3,a6,1a6a <core_init_state+0x174>
    1902:	01c58733          	add	a4,a1,t3
    1906:	0742                	slli	a4,a4,0x10
{
    1908:	1141                	addi	sp,sp,-16
    190a:	8341                	srli	a4,a4,0x10
            case 6: /* scientific */
                buf  = scipat[(seed >> 3) & 0x3];
                next = 8;
                break;
            case 7: /* invalid */
                buf  = errpat[(seed >> 3) & 0x3];
    190c:	6fad                	lui	t6,0xb
                buf  = scipat[(seed >> 3) & 0x3];
    190e:	6f2d                	lui	t5,0xb
                buf  = floatpat[(seed >> 3) & 0x3];
    1910:	6ead                	lui	t4,0xb
                buf  = intpat[(seed >> 3) & 0x3];
    1912:	01b71393          	slli	t2,a4,0x1b
{
    1916:	c622                	sw	s0,12(sp)
    1918:	c426                	sw	s1,8(sp)
        switch (seed & 0x7)
    191a:	461d                	li	a2,7
    191c:	00777693          	andi	a3,a4,7
                buf  = errpat[(seed >> 3) & 0x3];
    1920:	810f8f93          	addi	t6,t6,-2032 # a810 <errpat>
                buf  = scipat[(seed >> 3) & 0x3];
    1924:	820f0f13          	addi	t5,t5,-2016 # a820 <scipat>
                buf  = floatpat[(seed >> 3) & 0x3];
    1928:	830e8e93          	addi	t4,t4,-2000 # a830 <floatpat>
    192c:	4581                	li	a1,0
        switch (seed & 0x7)
    192e:	4311                	li	t1,4
            *(p + total + i) = ',';
    1930:	02c00293          	li	t0,44
                buf  = intpat[(seed >> 3) & 0x3];
    1934:	01e3d793          	srli	a5,t2,0x1e
        switch (seed & 0x7)
    1938:	06c68663          	beq	a3,a2,19a4 <core_init_state+0xae>
    193c:	10d36163          	bltu	t1,a3,1a3e <core_init_state+0x148>
    1940:	16f5                	addi	a3,a3,-3
    1942:	06c2                	slli	a3,a3,0x10
    1944:	82c1                	srli	a3,a3,0x10
    1946:	06de6363          	bltu	t3,a3,19ac <core_init_state+0xb6>
                buf  = floatpat[(seed >> 3) & 0x3];
    194a:	078a                	slli	a5,a5,0x2
    194c:	97f6                	add	a5,a5,t4
    194e:	4380                	lw	s0,0(a5)
    while ((total + next + 1) < size)
    1950:	0705                	addi	a4,a4,1
    1952:	0742                	slli	a4,a4,0x10
    1954:	00958493          	addi	s1,a1,9
    1958:	8341                	srli	a4,a4,0x10
    195a:	0504fd63          	bgeu	s1,a6,19b4 <core_init_state+0xbe>
        if (next > 0)
    195e:	00b883b3          	add	t2,a7,a1
    1962:	408387b3          	sub	a5,t2,s0
    1966:	17fd                	addi	a5,a5,-1 # fffdffff <__crt0_stack_top+0x7ffcffff>
    1968:	007466b3          	or	a3,s0,t2
    196c:	0037b793          	sltiu	a5,a5,3
    1970:	8a8d                	andi	a3,a3,3
    1972:	0017b793          	seqz	a5,a5
    1976:	0016b693          	seqz	a3,a3
    197a:	8ff5                	and	a5,a5,a3
    197c:	c7e9                	beqz	a5,1a46 <core_init_state+0x150>
                *(p + total + i) = buf[i];
    197e:	4014                	lw	a3,0(s0)
    1980:	47a1                	li	a5,8
    1982:	00d3a023          	sw	a3,0(t2)
    1986:	4054                	lw	a3,4(s0)
    1988:	00d3a223          	sw	a3,4(t2)
            *(p + total + i) = ',';
    198c:	979e                	add	a5,a5,t2
    198e:	00578023          	sb	t0,0(a5)
                buf  = intpat[(seed >> 3) & 0x3];
    1992:	01b71393          	slli	t2,a4,0x1b
    1996:	00777693          	andi	a3,a4,7
            total += next + 1;
    199a:	85a6                	mv	a1,s1
                buf  = intpat[(seed >> 3) & 0x3];
    199c:	01e3d793          	srli	a5,t2,0x1e
        switch (seed & 0x7)
    19a0:	f8c69ee3          	bne	a3,a2,193c <core_init_state+0x46>
                buf  = errpat[(seed >> 3) & 0x3];
    19a4:	078a                	slli	a5,a5,0x2
    19a6:	97fe                	add	a5,a5,t6
    19a8:	4380                	lw	s0,0(a5)
                next = 8;
                break;
    19aa:	b75d                	j	1950 <core_init_state+0x5a>
    while ((total + next + 1) < size)
    19ac:	00558493          	addi	s1,a1,5
    19b0:	0304e163          	bltu	s1,a6,19d2 <core_init_state+0xdc>
            default: /* Never happen, just to make some compilers happy */
                break;
        }
    }
    size++;
    while (total < size)
    19b4:	0ca5f863          	bgeu	a1,a0,1a84 <core_init_state+0x18e>
    { /* fill the rest with 0 */
        *(p + total) = 0;
    19b8:	00158793          	addi	a5,a1,1
    19bc:	4605                	li	a2,1
    19be:	08f57c63          	bgeu	a0,a5,1a56 <core_init_state+0x160>
        total++;
    }
#if CORE_DEBUG
    ee_printf("State Input: %s\n", start);
#endif
}
    19c2:	4432                	lw	s0,12(sp)
    19c4:	44a2                	lw	s1,8(sp)
        *(p + total) = 0;
    19c6:	00b88533          	add	a0,a7,a1
    19ca:	4581                	li	a1,0
}
    19cc:	0141                	addi	sp,sp,16
        *(p + total) = 0;
    19ce:	0630306f          	j	5230 <memset>
                buf  = intpat[(seed >> 3) & 0x3];
    19d2:	66ad                	lui	a3,0xb
    19d4:	078a                	slli	a5,a5,0x2
    19d6:	84068693          	addi	a3,a3,-1984 # a840 <intpat>
    19da:	97b6                	add	a5,a5,a3
    19dc:	4380                	lw	s0,0(a5)
    19de:	c24a                	sw	s2,4(sp)
    while ((total + next + 1) < size)
    19e0:	0705                	addi	a4,a4,1
                *(p + total + i) = buf[i];
    19e2:	00044783          	lbu	a5,0(s0)
    19e6:	00b883b3          	add	t2,a7,a1
    while ((total + next + 1) < size)
    19ea:	0742                	slli	a4,a4,0x10
                *(p + total + i) = buf[i];
    19ec:	00f38023          	sb	a5,0(t2)
    while ((total + next + 1) < size)
    19f0:	8341                	srli	a4,a4,0x10
            for (i = 0; i < next; i++)
    19f2:	0585                	addi	a1,a1,1
                next = 4;
    19f4:	4791                	li	a5,4
                *(p + total + i) = buf[i];
    19f6:	00144683          	lbu	a3,1(s0)
    19fa:	95c6                	add	a1,a1,a7
    19fc:	8936                	mv	s2,a3
    19fe:	01258023          	sb	s2,0(a1)
    1a02:	00244583          	lbu	a1,2(s0)
            for (i = 0; i < next; i++)
    1a06:	4691                	li	a3,4
                *(p + total + i) = buf[i];
    1a08:	00b38123          	sb	a1,2(t2)
    1a0c:	00344583          	lbu	a1,3(s0)
    1a10:	00b381a3          	sb	a1,3(t2)
            for (i = 0; i < next; i++)
    1a14:	06d78c63          	beq	a5,a3,1a8c <core_init_state+0x196>
                *(p + total + i) = buf[i];
    1a18:	00444683          	lbu	a3,4(s0)
    1a1c:	47a1                	li	a5,8
    1a1e:	00d38223          	sb	a3,4(t2)
    1a22:	00544683          	lbu	a3,5(s0)
    1a26:	00d382a3          	sb	a3,5(t2)
    1a2a:	00644683          	lbu	a3,6(s0)
    1a2e:	00d38323          	sb	a3,6(t2)
    1a32:	00744683          	lbu	a3,7(s0)
    1a36:	00d383a3          	sb	a3,7(t2)
    1a3a:	4912                	lw	s2,4(sp)
    1a3c:	bf81                	j	198c <core_init_state+0x96>
                buf  = scipat[(seed >> 3) & 0x3];
    1a3e:	078a                	slli	a5,a5,0x2
    1a40:	97fa                	add	a5,a5,t5
    1a42:	4380                	lw	s0,0(a5)
                break;
    1a44:	b731                	j	1950 <core_init_state+0x5a>
    1a46:	c24a                	sw	s2,4(sp)
                *(p + total + i) = buf[i];
    1a48:	00044683          	lbu	a3,0(s0)
    1a4c:	0585                	addi	a1,a1,1
    1a4e:	47a1                	li	a5,8
    1a50:	00d38023          	sb	a3,0(t2)
            for (i = 0; i < next; i++)
    1a54:	b74d                	j	19f6 <core_init_state+0x100>
}
    1a56:	4432                	lw	s0,12(sp)
    1a58:	44a2                	lw	s1,8(sp)
        *(p + total) = 0;
    1a5a:	40b50633          	sub	a2,a0,a1
    1a5e:	00b88533          	add	a0,a7,a1
}
    1a62:	0141                	addi	sp,sp,16
        *(p + total) = 0;
    1a64:	4581                	li	a1,0
    1a66:	7ca0306f          	j	5230 <memset>
    ee_u32 total = 0, next = 0, i;
    1a6a:	4581                	li	a1,0
        *(p + total) = 0;
    1a6c:	00158793          	addi	a5,a1,1
    1a70:	4605                	li	a2,1
    1a72:	00f56463          	bltu	a0,a5,1a7a <core_init_state+0x184>
    1a76:	40b50633          	sub	a2,a0,a1
    1a7a:	00b88533          	add	a0,a7,a1
    1a7e:	4581                	li	a1,0
    1a80:	7b00306f          	j	5230 <memset>
}
    1a84:	4432                	lw	s0,12(sp)
    1a86:	44a2                	lw	s1,8(sp)
    1a88:	0141                	addi	sp,sp,16
    1a8a:	8082                	ret
    1a8c:	4912                	lw	s2,4(sp)
    1a8e:	bdfd                	j	198c <core_init_state+0x96>

00001a90 <core_state_transition>:
*/

enum CORE_STATE
core_state_transition(ee_u8 **instr, ee_u32 *transition_count)
{
    ee_u8 *         str = *instr;
    1a90:	4118                	lw	a4,0(a0)
    ee_u8           NEXT_SYMBOL;
    enum CORE_STATE state = CORE_START;
    1a92:	4601                	li	a2,0
    for (; *str && state != CORE_INVALID; str++)
    1a94:	00074783          	lbu	a5,0(a4)
    1a98:	cb95                	beqz	a5,1acc <core_state_transition+0x3c>
    {
        NEXT_SYMBOL = *str;
        if (NEXT_SYMBOL == ',') /* end of this input */
    1a9a:	02c00693          	li	a3,44
    1a9e:	4601                	li	a2,0
    1aa0:	16d78363          	beq	a5,a3,1c06 <core_state_transition+0x176>
            break;
        }
        switch (state)
        {
            case CORE_START:
                if (ee_isdigit(NEXT_SYMBOL))
    1aa4:	02e00813          	li	a6,46
    1aa8:	17078163          	beq	a5,a6,1c0a <core_state_transition+0x17a>
    1aac:	02f86363          	bltu	a6,a5,1ad2 <core_state_transition+0x42>
    1ab0:	fd578793          	addi	a5,a5,-43
    1ab4:	0fd7f793          	andi	a5,a5,253
    1ab8:	16078463          	beqz	a5,1c20 <core_state_transition+0x190>
                    state = CORE_FLOAT;
                }
                else
                {
                    state = CORE_INVALID;
                    transition_count[CORE_INVALID]++;
    1abc:	41d4                	lw	a3,4(a1)
                }
                transition_count[CORE_START]++;
    1abe:	419c                	lw	a5,0(a1)
    for (; *str && state != CORE_INVALID; str++)
    1ac0:	0705                	addi	a4,a4,1
                    transition_count[CORE_INVALID]++;
    1ac2:	0685                	addi	a3,a3,1
                transition_count[CORE_START]++;
    1ac4:	0785                	addi	a5,a5,1
                    transition_count[CORE_INVALID]++;
    1ac6:	c1d4                	sw	a3,4(a1)
                transition_count[CORE_START]++;
    1ac8:	c19c                	sw	a5,0(a1)
                    state = CORE_INVALID;
    1aca:	4605                	li	a2,1
                break;
            default:
                break;
        }
    }
    *instr = str;
    1acc:	c118                	sw	a4,0(a0)
    return state;
}
    1ace:	8532                	mv	a0,a2
    1ad0:	8082                	ret
    1ad2:	fd078793          	addi	a5,a5,-48
    1ad6:	0ff7f793          	zext.b	a5,a5
    1ada:	4625                	li	a2,9
    1adc:	fef660e3          	bltu	a2,a5,1abc <core_state_transition+0x2c>
                transition_count[CORE_START]++;
    1ae0:	4190                	lw	a2,0(a1)
    for (; *str && state != CORE_INVALID; str++)
    1ae2:	00170793          	addi	a5,a4,1
                transition_count[CORE_START]++;
    1ae6:	0605                	addi	a2,a2,1
    1ae8:	c190                	sw	a2,0(a1)
    for (; *str && state != CORE_INVALID; str++)
    1aea:	00174703          	lbu	a4,1(a4)
    1aee:	16070563          	beqz	a4,1c58 <core_state_transition+0x1c8>
        if (NEXT_SYMBOL == ',') /* end of this input */
    1af2:	16d70663          	beq	a4,a3,1c5e <core_state_transition+0x1ce>
                if (NEXT_SYMBOL == '.')
    1af6:	02e00693          	li	a3,46
    1afa:	02d70c63          	beq	a4,a3,1b32 <core_state_transition+0xa2>
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    1afe:	fd070713          	addi	a4,a4,-48
    1b02:	0ff77713          	zext.b	a4,a4
    1b06:	46a5                	li	a3,9
    1b08:	00e6fd63          	bgeu	a3,a4,1b22 <core_state_transition+0x92>
                    transition_count[CORE_INT]++;
    1b0c:	4994                	lw	a3,16(a1)
                    state = CORE_INVALID;
    1b0e:	4605                	li	a2,1
    for (; *str && state != CORE_INVALID; str++)
    1b10:	00178713          	addi	a4,a5,1
                    transition_count[CORE_INT]++;
    1b14:	00c687b3          	add	a5,a3,a2
    1b18:	c99c                	sw	a5,16(a1)
    *instr = str;
    1b1a:	c118                	sw	a4,0(a0)
}
    1b1c:	8532                	mv	a0,a2
    1b1e:	8082                	ret
                    transition_count[CORE_S1]++;
    1b20:	c590                	sw	a2,8(a1)
    for (; *str && state != CORE_INVALID; str++)
    1b22:	0017c703          	lbu	a4,1(a5)
    1b26:	0785                	addi	a5,a5,1
    1b28:	12070863          	beqz	a4,1c58 <core_state_transition+0x1c8>
        if (NEXT_SYMBOL == ',') /* end of this input */
    1b2c:	02c00693          	li	a3,44
    1b30:	b7c9                	j	1af2 <core_state_transition+0x62>
                    transition_count[CORE_INT]++;
    1b32:	4998                	lw	a4,16(a1)
    1b34:	0705                	addi	a4,a4,1
    1b36:	c998                	sw	a4,16(a1)
    for (; *str && state != CORE_INVALID; str++)
    1b38:	0017c703          	lbu	a4,1(a5)
    1b3c:	0785                	addi	a5,a5,1
    1b3e:	cf71                	beqz	a4,1c1a <core_state_transition+0x18a>
        if (NEXT_SYMBOL == ',') /* end of this input */
    1b40:	02c00693          	li	a3,44
    1b44:	0ad70f63          	beq	a4,a3,1c02 <core_state_transition+0x172>
                if (NEXT_SYMBOL == 'E' || NEXT_SYMBOL == 'e')
    1b48:	0df77693          	andi	a3,a4,223
    1b4c:	04500613          	li	a2,69
    1b50:	08c69a63          	bne	a3,a2,1be4 <core_state_transition+0x154>
                    transition_count[CORE_FLOAT]++;
    1b54:	49d4                	lw	a3,20(a1)
    for (; *str && state != CORE_INVALID; str++)
    1b56:	00178713          	addi	a4,a5,1
                    state = CORE_S2;
    1b5a:	460d                	li	a2,3
                    transition_count[CORE_FLOAT]++;
    1b5c:	0685                	addi	a3,a3,1
    1b5e:	c9d4                	sw	a3,20(a1)
    for (; *str && state != CORE_INVALID; str++)
    1b60:	0017c683          	lbu	a3,1(a5)
    1b64:	d6a5                	beqz	a3,1acc <core_state_transition+0x3c>
        if (NEXT_SYMBOL == ',') /* end of this input */
    1b66:	02c00813          	li	a6,44
    1b6a:	09068e63          	beq	a3,a6,1c06 <core_state_transition+0x176>
                    transition_count[CORE_S2]++;
    1b6e:	45d8                	lw	a4,12(a1)
                if (NEXT_SYMBOL == '+' || NEXT_SYMBOL == '-')
    1b70:	fd568693          	addi	a3,a3,-43
    1b74:	0fd6f693          	andi	a3,a3,253
                    transition_count[CORE_S2]++;
    1b78:	0705                	addi	a4,a4,1
    1b7a:	c5d8                	sw	a4,12(a1)
                    state = CORE_INVALID;
    1b7c:	4605                	li	a2,1
    for (; *str && state != CORE_INVALID; str++)
    1b7e:	00278713          	addi	a4,a5,2
                if (NEXT_SYMBOL == '+' || NEXT_SYMBOL == '-')
    1b82:	f6a9                	bnez	a3,1acc <core_state_transition+0x3c>
    for (; *str && state != CORE_INVALID; str++)
    1b84:	0027c683          	lbu	a3,2(a5)
    1b88:	00278713          	addi	a4,a5,2
                    state = CORE_EXPONENT;
    1b8c:	4619                	li	a2,6
    for (; *str && state != CORE_INVALID; str++)
    1b8e:	de9d                	beqz	a3,1acc <core_state_transition+0x3c>
        if (NEXT_SYMBOL == ',') /* end of this input */
    1b90:	07068b63          	beq	a3,a6,1c06 <core_state_transition+0x176>
                    transition_count[CORE_EXPONENT]++;
    1b94:	4d90                	lw	a2,24(a1)
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    1b96:	fd068693          	addi	a3,a3,-48
    1b9a:	0ff6f693          	zext.b	a3,a3
                    transition_count[CORE_EXPONENT]++;
    1b9e:	0605                	addi	a2,a2,1
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    1ba0:	4825                	li	a6,9
                    transition_count[CORE_EXPONENT]++;
    1ba2:	cd90                	sw	a2,24(a1)
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    1ba4:	00d87863          	bgeu	a6,a3,1bb4 <core_state_transition+0x124>
    for (; *str && state != CORE_INVALID; str++)
    1ba8:	00378713          	addi	a4,a5,3
                    state = CORE_INVALID;
    1bac:	4605                	li	a2,1
    *instr = str;
    1bae:	c118                	sw	a4,0(a0)
}
    1bb0:	8532                	mv	a0,a2
    1bb2:	8082                	ret
    for (; *str && state != CORE_INVALID; str++)
    1bb4:	863a                	mv	a2,a4
    1bb6:	00174683          	lbu	a3,1(a4)
    1bba:	0705                	addi	a4,a4,1
        if (NEXT_SYMBOL == ',') /* end of this input */
    1bbc:	02c00893          	li	a7,44
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    1bc0:	fd068793          	addi	a5,a3,-48
    1bc4:	0ff7f793          	zext.b	a5,a5
    for (; *str && state != CORE_INVALID; str++)
    1bc8:	ced9                	beqz	a3,1c66 <core_state_transition+0x1d6>
        if (NEXT_SYMBOL == ',') /* end of this input */
    1bca:	0b168063          	beq	a3,a7,1c6a <core_state_transition+0x1da>
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    1bce:	fef873e3          	bgeu	a6,a5,1bb4 <core_state_transition+0x124>
                    transition_count[CORE_INVALID]++;
    1bd2:	41dc                	lw	a5,4(a1)
    for (; *str && state != CORE_INVALID; str++)
    1bd4:	00260713          	addi	a4,a2,2
                    state = CORE_INVALID;
    1bd8:	4605                	li	a2,1
                    transition_count[CORE_INVALID]++;
    1bda:	97b2                	add	a5,a5,a2
    1bdc:	c1dc                	sw	a5,4(a1)
    *instr = str;
    1bde:	c118                	sw	a4,0(a0)
}
    1be0:	8532                	mv	a0,a2
    1be2:	8082                	ret
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    1be4:	fd070713          	addi	a4,a4,-48
    1be8:	0ff77713          	zext.b	a4,a4
    1bec:	46a5                	li	a3,9
    1bee:	f4e6f5e3          	bgeu	a3,a4,1b38 <core_state_transition+0xa8>
                    transition_count[CORE_FLOAT]++;
    1bf2:	49d4                	lw	a3,20(a1)
                    state = CORE_INVALID;
    1bf4:	4605                	li	a2,1
    for (; *str && state != CORE_INVALID; str++)
    1bf6:	00178713          	addi	a4,a5,1
                    transition_count[CORE_FLOAT]++;
    1bfa:	00c687b3          	add	a5,a3,a2
    1bfe:	c9dc                	sw	a5,20(a1)
    for (; *str && state != CORE_INVALID; str++)
    1c00:	b5f1                	j	1acc <core_state_transition+0x3c>
    1c02:	873e                	mv	a4,a5
                    state = CORE_FLOAT;
    1c04:	4615                	li	a2,5
            str++;
    1c06:	0705                	addi	a4,a4,1
            break;
    1c08:	b5d1                	j	1acc <core_state_transition+0x3c>
                transition_count[CORE_START]++;
    1c0a:	4190                	lw	a2,0(a1)
    for (; *str && state != CORE_INVALID; str++)
    1c0c:	00170793          	addi	a5,a4,1
                transition_count[CORE_START]++;
    1c10:	0605                	addi	a2,a2,1
    1c12:	c190                	sw	a2,0(a1)
    for (; *str && state != CORE_INVALID; str++)
    1c14:	00174703          	lbu	a4,1(a4)
    1c18:	f715                	bnez	a4,1b44 <core_state_transition+0xb4>
    1c1a:	873e                	mv	a4,a5
                    state = CORE_FLOAT;
    1c1c:	4615                	li	a2,5
    1c1e:	b57d                	j	1acc <core_state_transition+0x3c>
                transition_count[CORE_START]++;
    1c20:	4190                	lw	a2,0(a1)
    for (; *str && state != CORE_INVALID; str++)
    1c22:	00170793          	addi	a5,a4,1
                transition_count[CORE_START]++;
    1c26:	0605                	addi	a2,a2,1
    1c28:	c190                	sw	a2,0(a1)
    for (; *str && state != CORE_INVALID; str++)
    1c2a:	00174303          	lbu	t1,1(a4)
    1c2e:	04030563          	beqz	t1,1c78 <core_state_transition+0x1e8>
        if (NEXT_SYMBOL == ',') /* end of this input */
    1c32:	02d30f63          	beq	t1,a3,1c70 <core_state_transition+0x1e0>
                    transition_count[CORE_S1]++;
    1c36:	4590                	lw	a2,8(a1)
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    1c38:	fd030693          	addi	a3,t1,-48
    1c3c:	0ff6f693          	zext.b	a3,a3
    1c40:	48a5                	li	a7,9
                    transition_count[CORE_S1]++;
    1c42:	0605                	addi	a2,a2,1
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    1c44:	ecd8fee3          	bgeu	a7,a3,1b20 <core_state_transition+0x90>
                else if (NEXT_SYMBOL == '.')
    1c48:	01030663          	beq	t1,a6,1c54 <core_state_transition+0x1c4>
                    transition_count[CORE_S1]++;
    1c4c:	c590                	sw	a2,8(a1)
    for (; *str && state != CORE_INVALID; str++)
    1c4e:	0709                	addi	a4,a4,2
                    state = CORE_INVALID;
    1c50:	4605                	li	a2,1
    1c52:	bdad                	j	1acc <core_state_transition+0x3c>
                    transition_count[CORE_S1]++;
    1c54:	c590                	sw	a2,8(a1)
    1c56:	b5cd                	j	1b38 <core_state_transition+0xa8>
    for (; *str && state != CORE_INVALID; str++)
    1c58:	873e                	mv	a4,a5
    1c5a:	4611                	li	a2,4
    1c5c:	bd85                	j	1acc <core_state_transition+0x3c>
    1c5e:	873e                	mv	a4,a5
        if (NEXT_SYMBOL == ',') /* end of this input */
    1c60:	4611                	li	a2,4
            str++;
    1c62:	0705                	addi	a4,a4,1
            break;
    1c64:	b5a5                	j	1acc <core_state_transition+0x3c>
                    state = CORE_SCIENTIFIC;
    1c66:	461d                	li	a2,7
    1c68:	b595                	j	1acc <core_state_transition+0x3c>
    1c6a:	461d                	li	a2,7
            str++;
    1c6c:	0705                	addi	a4,a4,1
            break;
    1c6e:	bdb9                	j	1acc <core_state_transition+0x3c>
    for (; *str && state != CORE_INVALID; str++)
    1c70:	873e                	mv	a4,a5
        if (NEXT_SYMBOL == ',') /* end of this input */
    1c72:	4609                	li	a2,2
            str++;
    1c74:	0705                	addi	a4,a4,1
            break;
    1c76:	bd99                	j	1acc <core_state_transition+0x3c>
    for (; *str && state != CORE_INVALID; str++)
    1c78:	873e                	mv	a4,a5
    1c7a:	4609                	li	a2,2
    1c7c:	bd81                	j	1acc <core_state_transition+0x3c>

00001c7e <core_bench_state>:
{
    1c7e:	7119                	addi	sp,sp,-128
    1c80:	dca2                	sw	s0,120(sp)
    1c82:	daa6                	sw	s1,116(sp)
    1c84:	d8ca                	sw	s2,112(sp)
    1c86:	d6ce                	sw	s3,108(sp)
    1c88:	d4d2                	sw	s4,104(sp)
    1c8a:	d2d6                	sw	s5,100(sp)
    1c8c:	d0da                	sw	s6,96(sp)
    1c8e:	cede                	sw	s7,92(sp)
    1c90:	cce2                	sw	s8,88(sp)
    1c92:	de86                	sw	ra,124(sp)
    1c94:	84ae                	mv	s1,a1
    while (*p != 0)
    1c96:	0005c583          	lbu	a1,0(a1)
        final_counts[i] = track_counts[i] = 0;
    1c9a:	03010993          	addi	s3,sp,48
    1c9e:	0800                	addi	s0,sp,16
    1ca0:	d802                	sw	zero,48(sp)
    1ca2:	c802                	sw	zero,16(sp)
    ee_u8 *p = memblock;
    1ca4:	c626                	sw	s1,12(sp)
        final_counts[i] = track_counts[i] = 0;
    1ca6:	0009a223          	sw	zero,4(s3)
    1caa:	0009a423          	sw	zero,8(s3)
    1cae:	0009a623          	sw	zero,12(s3)
    1cb2:	0009a823          	sw	zero,16(s3)
    1cb6:	0009aa23          	sw	zero,20(s3)
    1cba:	0009ac23          	sw	zero,24(s3)
    1cbe:	0009ae23          	sw	zero,28(s3)
    1cc2:	00042223          	sw	zero,4(s0)
    1cc6:	00042423          	sw	zero,8(s0)
    1cca:	00042623          	sw	zero,12(s0)
    1cce:	00042823          	sw	zero,16(s0)
    1cd2:	00042a23          	sw	zero,20(s0)
    1cd6:	00042c23          	sw	zero,24(s0)
    1cda:	00042e23          	sw	zero,28(s0)
{
    1cde:	893e                	mv	s2,a5
    1ce0:	8c2a                	mv	s8,a0
    1ce2:	8bb2                	mv	s7,a2
    1ce4:	8ab6                	mv	s5,a3
    1ce6:	8b3a                	mv	s6,a4
    1ce8:	00c10a13          	addi	s4,sp,12
    while (*p != 0)
    1cec:	10058363          	beqz	a1,1df2 <core_bench_state+0x174>
        enum CORE_STATE fstate = core_state_transition(&p, track_counts);
    1cf0:	85ce                	mv	a1,s3
    1cf2:	8552                	mv	a0,s4
    1cf4:	3b71                	jal	1a90 <core_state_transition>
        final_counts[fstate]++;
    1cf6:	00251713          	slli	a4,a0,0x2
    1cfa:	9722                	add	a4,a4,s0
    while (*p != 0)
    1cfc:	46b2                	lw	a3,12(sp)
        final_counts[fstate]++;
    1cfe:	431c                	lw	a5,0(a4)
    while (*p != 0)
    1d00:	0006c683          	lbu	a3,0(a3)
        final_counts[fstate]++;
    1d04:	0785                	addi	a5,a5,1
    1d06:	c31c                	sw	a5,0(a4)
    while (*p != 0)
    1d08:	f6e5                	bnez	a3,1cf0 <core_bench_state+0x72>
    p = memblock;
    1d0a:	c626                	sw	s1,12(sp)
    while (p < (memblock + blksize))
    1d0c:	9c26                	add	s8,s8,s1
    1d0e:	0384f863          	bgeu	s1,s8,1d3e <core_bench_state+0xc0>
    1d12:	4705                	li	a4,1
    1d14:	87a6                	mv	a5,s1
        if (*p != ',')
    1d16:	02c00613          	li	a2,44
    1d1a:	08eb1963          	bne	s6,a4,1dac <core_bench_state+0x12e>
    1d1e:	0007c703          	lbu	a4,0(a5)
            *p ^= (ee_u8)seed1;
    1d22:	017746b3          	xor	a3,a4,s7
        if (*p != ',')
    1d26:	00c70463          	beq	a4,a2,1d2e <core_bench_state+0xb0>
            *p ^= (ee_u8)seed1;
    1d2a:	00d78023          	sb	a3,0(a5)
    while (p < (memblock + blksize))
    1d2e:	0785                	addi	a5,a5,1
    1d30:	ff87e7e3          	bltu	a5,s8,1d1e <core_bench_state+0xa0>
    while (*p != 0)
    1d34:	0004c783          	lbu	a5,0(s1)
    1d38:	00c10a13          	addi	s4,sp,12
    1d3c:	cbc5                	beqz	a5,1dec <core_bench_state+0x16e>
        enum CORE_STATE fstate = core_state_transition(&p, track_counts);
    1d3e:	85ce                	mv	a1,s3
    1d40:	8552                	mv	a0,s4
    1d42:	33b9                	jal	1a90 <core_state_transition>
        final_counts[fstate]++;
    1d44:	00251713          	slli	a4,a0,0x2
    1d48:	9722                	add	a4,a4,s0
    while (*p != 0)
    1d4a:	46b2                	lw	a3,12(sp)
        final_counts[fstate]++;
    1d4c:	431c                	lw	a5,0(a4)
    while (*p != 0)
    1d4e:	0006c683          	lbu	a3,0(a3)
        final_counts[fstate]++;
    1d52:	0785                	addi	a5,a5,1
    1d54:	c31c                	sw	a5,0(a4)
    while (*p != 0)
    1d56:	f6e5                	bnez	a3,1d3e <core_bench_state+0xc0>
    while (p < (memblock + blksize))
    1d58:	0384f263          	bgeu	s1,s8,1d7c <core_bench_state+0xfe>
    1d5c:	4785                	li	a5,1
    1d5e:	06fb1963          	bne	s6,a5,1dd0 <core_bench_state+0x152>
        if (*p != ',')
    1d62:	02c00693          	li	a3,44
    1d66:	0004c783          	lbu	a5,0(s1)
            *p ^= (ee_u8)seed2;
    1d6a:	0157c733          	xor	a4,a5,s5
        if (*p != ',')
    1d6e:	00d78463          	beq	a5,a3,1d76 <core_bench_state+0xf8>
            *p ^= (ee_u8)seed2;
    1d72:	00e48023          	sb	a4,0(s1)
    while (p < (memblock + blksize))
    1d76:	0485                	addi	s1,s1,1
    1d78:	ff84e7e3          	bltu	s1,s8,1d66 <core_bench_state+0xe8>
    for (i = 0; i < NUM_CORE_STATES; i++)
    1d7c:	84ce                	mv	s1,s3
        crc = crcu32(final_counts[i], crc);
    1d7e:	4008                	lw	a0,0(s0)
    1d80:	85ca                	mv	a1,s2
    for (i = 0; i < NUM_CORE_STATES; i++)
    1d82:	0411                	addi	s0,s0,4
        crc = crcu32(final_counts[i], crc);
    1d84:	24b1                	jal	1fd0 <crcu32>
    1d86:	85aa                	mv	a1,a0
        crc = crcu32(track_counts[i], crc);
    1d88:	4088                	lw	a0,0(s1)
    for (i = 0; i < NUM_CORE_STATES; i++)
    1d8a:	0491                	addi	s1,s1,4
        crc = crcu32(track_counts[i], crc);
    1d8c:	2491                	jal	1fd0 <crcu32>
    1d8e:	892a                	mv	s2,a0
    for (i = 0; i < NUM_CORE_STATES; i++)
    1d90:	fe8997e3          	bne	s3,s0,1d7e <core_bench_state+0x100>
}
    1d94:	50f6                	lw	ra,124(sp)
    1d96:	5466                	lw	s0,120(sp)
    1d98:	54d6                	lw	s1,116(sp)
    1d9a:	5946                	lw	s2,112(sp)
    1d9c:	59b6                	lw	s3,108(sp)
    1d9e:	5a26                	lw	s4,104(sp)
    1da0:	5a96                	lw	s5,100(sp)
    1da2:	5b06                	lw	s6,96(sp)
    1da4:	4bf6                	lw	s7,92(sp)
    1da6:	4c66                	lw	s8,88(sp)
    1da8:	6109                	addi	sp,sp,128
    1daa:	8082                	ret
        if (*p != ',')
    1dac:	0007c703          	lbu	a4,0(a5)
            *p ^= (ee_u8)seed1;
    1db0:	017746b3          	xor	a3,a4,s7
        if (*p != ',')
    1db4:	00c70463          	beq	a4,a2,1dbc <core_bench_state+0x13e>
            *p ^= (ee_u8)seed1;
    1db8:	00d78023          	sb	a3,0(a5)
    while (p < (memblock + blksize))
    1dbc:	97da                	add	a5,a5,s6
    1dbe:	ff87e7e3          	bltu	a5,s8,1dac <core_bench_state+0x12e>
    while (*p != 0)
    1dc2:	0004c783          	lbu	a5,0(s1)
    1dc6:	00c10a13          	addi	s4,sp,12
    1dca:	fbb5                	bnez	a5,1d3e <core_bench_state+0xc0>
    while (p < (memblock + blksize))
    1dcc:	fb84f8e3          	bgeu	s1,s8,1d7c <core_bench_state+0xfe>
        if (*p != ',')
    1dd0:	02c00693          	li	a3,44
    1dd4:	0004c783          	lbu	a5,0(s1)
            *p ^= (ee_u8)seed2;
    1dd8:	0157c733          	xor	a4,a5,s5
        if (*p != ',')
    1ddc:	00d78463          	beq	a5,a3,1de4 <core_bench_state+0x166>
            *p ^= (ee_u8)seed2;
    1de0:	00e48023          	sb	a4,0(s1)
    while (p < (memblock + blksize))
    1de4:	94da                	add	s1,s1,s6
    1de6:	ff84e7e3          	bltu	s1,s8,1dd4 <core_bench_state+0x156>
    1dea:	bf49                	j	1d7c <core_bench_state+0xfe>
    1dec:	f784ebe3          	bltu	s1,s8,1d62 <core_bench_state+0xe4>
    1df0:	b771                	j	1d7c <core_bench_state+0xfe>
    while (p < (memblock + blksize))
    1df2:	00a48c33          	add	s8,s1,a0
    1df6:	f184eee3          	bltu	s1,s8,1d12 <core_bench_state+0x94>
    1dfa:	b749                	j	1d7c <core_bench_state+0xfe>

00001dfc <get_seed_32>:
extern volatile ee_s32 seed5_volatile;
ee_s32
get_seed_32(int i)
{
    ee_s32 retval;
    switch (i)
    1dfc:	4795                	li	a5,5
    1dfe:	02a7e863          	bltu	a5,a0,1e2e <get_seed_32+0x32>
    1e02:	67ad                	lui	a5,0xb
    1e04:	85078793          	addi	a5,a5,-1968 # a850 <intpat+0x10>
    1e08:	050a                	slli	a0,a0,0x2
    1e0a:	953e                	add	a0,a0,a5
    1e0c:	411c                	lw	a5,0(a0)
    1e0e:	8782                	jr	a5
            break;
        case 4:
            retval = seed4_volatile;
            break;
        case 5:
            retval = seed5_volatile;
    1e10:	d881a503          	lw	a0,-632(gp) # 80000588 <seed5_volatile>
            break;
    1e14:	8082                	ret
            retval = seed1_volatile;
    1e16:	d901a503          	lw	a0,-624(gp) # 80000590 <seed1_volatile>
            break;
    1e1a:	8082                	ret
            retval = seed2_volatile;
    1e1c:	d8c1a503          	lw	a0,-628(gp) # 8000058c <seed2_volatile>
            break;
    1e20:	8082                	ret
            retval = seed3_volatile;
    1e22:	d5c1a503          	lw	a0,-676(gp) # 8000055c <seed3_volatile>
            break;
    1e26:	8082                	ret
            retval = seed4_volatile;
    1e28:	d581a503          	lw	a0,-680(gp) # 80000558 <seed4_volatile>
            break;
    1e2c:	8082                	ret
    switch (i)
    1e2e:	4501                	li	a0,0
        default:
            retval = 0;
            break;
    }
    return retval;
}
    1e30:	8082                	ret

00001e32 <crcu16>:
    return crc;
}
ee_u16
crcu16(ee_u16 newval, ee_u16 crc)
{
    crc = crcu8((ee_u8)(newval), crc);
    1e32:	0ff5f793          	zext.b	a5,a1
    1e36:	07a2                	slli	a5,a5,0x8
    1e38:	81a1                	srli	a1,a1,0x8
    1e3a:	6705                	lui	a4,0x1
    1e3c:	737d                	lui	t1,0xfffff
    1e3e:	0f030313          	addi	t1,t1,240 # fffff0f0 <__crt0_stack_top+0x7ffef0f0>
    for (i = 0; i < 8; i++)
    1e42:	f0f70713          	addi	a4,a4,-241 # f0f <main+0x497>
    1e46:	8fcd                	or	a5,a5,a1
    1e48:	00e7f5b3          	and	a1,a5,a4
    1e4c:	0067f7b3          	and	a5,a5,t1
    1e50:	8391                	srli	a5,a5,0x4
    1e52:	0592                	slli	a1,a1,0x4
    1e54:	8ddd                	or	a1,a1,a5
    1e56:	78f5                	lui	a7,0xffffd
    1e58:	678d                	lui	a5,0x3
    1e5a:	ccc88893          	addi	a7,a7,-820 # ffffcccc <__crt0_stack_top+0x7ffecccc>
    1e5e:	33378793          	addi	a5,a5,819 # 3333 <printf+0x82f>
    1e62:	00f57693          	andi	a3,a0,15
    1e66:	0f057813          	andi	a6,a0,240
    1e6a:	00f5f633          	and	a2,a1,a5
    1e6e:	00485813          	srli	a6,a6,0x4
    1e72:	0115f5b3          	and	a1,a1,a7
    1e76:	0692                	slli	a3,a3,0x4
    1e78:	0106e6b3          	or	a3,a3,a6
    1e7c:	8189                	srli	a1,a1,0x2
    1e7e:	060a                	slli	a2,a2,0x2
    1e80:	8e4d                	or	a2,a2,a1
    1e82:	0336fe13          	andi	t3,a3,51
    1e86:	6595                	lui	a1,0x5
    1e88:	0cc6f693          	andi	a3,a3,204
    1e8c:	786d                	lui	a6,0xffffb
    1e8e:	55558593          	addi	a1,a1,1365 # 5555 <_malloc_trim_r+0x95>
    1e92:	aaa80813          	addi	a6,a6,-1366 # ffffaaaa <__crt0_stack_top+0x7ffeaaaa>
    1e96:	0026de93          	srli	t4,a3,0x2
    1e9a:	0e0a                	slli	t3,t3,0x2
    1e9c:	00b676b3          	and	a3,a2,a1
    1ea0:	01de6e33          	or	t3,t3,t4
    1ea4:	01067633          	and	a2,a2,a6
    1ea8:	0686                	slli	a3,a3,0x1
    1eaa:	8205                	srli	a2,a2,0x1
    1eac:	055e7f13          	andi	t5,t3,85
    1eb0:	0aae7e13          	andi	t3,t3,170
    1eb4:	00c6eeb3          	or	t4,a3,a2
    1eb8:	0f06                	slli	t5,t5,0x1
    1eba:	001e5e13          	srli	t3,t3,0x1
    1ebe:	01cf6e33          	or	t3,t5,t3
    1ec2:	008ede93          	srli	t4,t4,0x8
    1ec6:	01ceceb3          	xor	t4,t4,t3
    1eca:	6e2d                	lui	t3,0xb
    1ecc:	868e0e13          	addi	t3,t3,-1944 # a868 <intpat+0x28>
    1ed0:	8e55                	or	a2,a2,a3
    1ed2:	001e9693          	slli	a3,t4,0x1
    1ed6:	96f2                	add	a3,a3,t3
    1ed8:	0006d683          	lhu	a3,0(a3)
    1edc:	0622                	slli	a2,a2,0x8
    crc = crcu8((ee_u8)((newval) >> 8), crc);
    1ede:	8121                	srli	a0,a0,0x8
    1ee0:	8e35                	xor	a2,a2,a3
    1ee2:	01061e93          	slli	t4,a2,0x10
    1ee6:	0ff6f693          	zext.b	a3,a3
    1eea:	018ed613          	srli	a2,t4,0x18
    1eee:	06a2                	slli	a3,a3,0x8
    1ef0:	8ed1                	or	a3,a3,a2
    1ef2:	00e6f633          	and	a2,a3,a4
    1ef6:	0066f6b3          	and	a3,a3,t1
    1efa:	8291                	srli	a3,a3,0x4
    1efc:	0612                	slli	a2,a2,0x4
    1efe:	8e55                	or	a2,a2,a3
    1f00:	00f676b3          	and	a3,a2,a5
    1f04:	01167633          	and	a2,a2,a7
    1f08:	8209                	srli	a2,a2,0x2
    1f0a:	068a                	slli	a3,a3,0x2
    1f0c:	8ed1                	or	a3,a3,a2
    1f0e:	00b6f633          	and	a2,a3,a1
    1f12:	0106f6b3          	and	a3,a3,a6
    1f16:	0606                	slli	a2,a2,0x1
    1f18:	8285                	srli	a3,a3,0x1
    1f1a:	8ed1                	or	a3,a3,a2
    1f1c:	0ff6f613          	zext.b	a2,a3
    1f20:	0622                	slli	a2,a2,0x8
    1f22:	82a1                	srli	a3,a3,0x8
    1f24:	8e55                	or	a2,a2,a3
    1f26:	00e676b3          	and	a3,a2,a4
    1f2a:	00667eb3          	and	t4,a2,t1
    1f2e:	004ede93          	srli	t4,t4,0x4
    1f32:	00f57613          	andi	a2,a0,15
    1f36:	0692                	slli	a3,a3,0x4
    1f38:	01d6e6b3          	or	a3,a3,t4
    1f3c:	8111                	srli	a0,a0,0x4
    1f3e:	0612                	slli	a2,a2,0x4
    1f40:	8e49                	or	a2,a2,a0
    1f42:	0116feb3          	and	t4,a3,a7
    1f46:	00f6f533          	and	a0,a3,a5
    1f4a:	002ede93          	srli	t4,t4,0x2
    1f4e:	03367693          	andi	a3,a2,51
    1f52:	050a                	slli	a0,a0,0x2
    1f54:	0cc67613          	andi	a2,a2,204
    1f58:	01d56533          	or	a0,a0,t4
    1f5c:	8209                	srli	a2,a2,0x2
    1f5e:	068a                	slli	a3,a3,0x2
    1f60:	8ed1                	or	a3,a3,a2
    1f62:	00b57633          	and	a2,a0,a1
    1f66:	01057533          	and	a0,a0,a6
    1f6a:	0556ff13          	andi	t5,a3,85
    1f6e:	0606                	slli	a2,a2,0x1
    1f70:	8105                	srli	a0,a0,0x1
    1f72:	0aa6f693          	andi	a3,a3,170
    1f76:	00a66eb3          	or	t4,a2,a0
    1f7a:	8285                	srli	a3,a3,0x1
    1f7c:	0f06                	slli	t5,t5,0x1
    1f7e:	00df6f33          	or	t5,t5,a3
    1f82:	008ed693          	srli	a3,t4,0x8
    1f86:	01e6c6b3          	xor	a3,a3,t5
    1f8a:	0686                	slli	a3,a3,0x1
    1f8c:	96f2                	add	a3,a3,t3
    1f8e:	0006d683          	lhu	a3,0(a3)
    1f92:	008e9613          	slli	a2,t4,0x8
    1f96:	8e35                	xor	a2,a2,a3
    1f98:	01061513          	slli	a0,a2,0x10
    1f9c:	0ff6f693          	zext.b	a3,a3
    1fa0:	01855613          	srli	a2,a0,0x18
    1fa4:	06a2                	slli	a3,a3,0x8
    1fa6:	8ed1                	or	a3,a3,a2
    1fa8:	8f75                	and	a4,a4,a3
    1faa:	0066f6b3          	and	a3,a3,t1
    1fae:	8291                	srli	a3,a3,0x4
    1fb0:	0712                	slli	a4,a4,0x4
    1fb2:	8f55                	or	a4,a4,a3
    1fb4:	8ff9                	and	a5,a5,a4
    1fb6:	01177733          	and	a4,a4,a7
    1fba:	8309                	srli	a4,a4,0x2
    1fbc:	078a                	slli	a5,a5,0x2
    1fbe:	8fd9                	or	a5,a5,a4
    1fc0:	00b7f533          	and	a0,a5,a1
    1fc4:	0107f7b3          	and	a5,a5,a6
    1fc8:	8385                	srli	a5,a5,0x1
    1fca:	0506                	slli	a0,a0,0x1
    return crc;
}
    1fcc:	8d5d                	or	a0,a0,a5
    1fce:	8082                	ret

00001fd0 <crcu32>:
ee_u16
crcu32(ee_u32 newval, ee_u16 crc)
{
    crc = crc16((ee_s16)newval, crc);
    1fd0:	0ff5f793          	zext.b	a5,a1
    1fd4:	07a2                	slli	a5,a5,0x8
    1fd6:	81a1                	srli	a1,a1,0x8
    1fd8:	6705                	lui	a4,0x1
    1fda:	78fd                	lui	a7,0xfffff
    1fdc:	0f088893          	addi	a7,a7,240 # fffff0f0 <__crt0_stack_top+0x7ffef0f0>
    crc = crc16((ee_s16)(newval >> 16), crc);
    1fe0:	f0f70713          	addi	a4,a4,-241 # f0f <main+0x497>
    1fe4:	8fcd                	or	a5,a5,a1
    1fe6:	00e7f6b3          	and	a3,a5,a4
    1fea:	0117f7b3          	and	a5,a5,a7
    1fee:	8391                	srli	a5,a5,0x4
    1ff0:	0692                	slli	a3,a3,0x4
    1ff2:	8edd                	or	a3,a3,a5
    1ff4:	7875                	lui	a6,0xffffd
    1ff6:	678d                	lui	a5,0x3
    1ff8:	ccc80813          	addi	a6,a6,-820 # ffffcccc <__crt0_stack_top+0x7ffecccc>
    1ffc:	33378793          	addi	a5,a5,819 # 3333 <printf+0x82f>
    2000:	00f57613          	andi	a2,a0,15
    2004:	0f057593          	andi	a1,a0,240
    2008:	00f6f333          	and	t1,a3,a5
    200c:	8191                	srli	a1,a1,0x4
    200e:	0106f6b3          	and	a3,a3,a6
    2012:	0612                	slli	a2,a2,0x4
    2014:	8e4d                	or	a2,a2,a1
    2016:	8289                	srli	a3,a3,0x2
    2018:	030a                	slli	t1,t1,0x2
    201a:	00d36333          	or	t1,t1,a3
    201e:	03367e13          	andi	t3,a2,51
    2022:	6695                	lui	a3,0x5
    2024:	0cc67613          	andi	a2,a2,204
    2028:	75ed                	lui	a1,0xffffb
    202a:	55568693          	addi	a3,a3,1365 # 5555 <_malloc_trim_r+0x95>
    202e:	aaa58593          	addi	a1,a1,-1366 # ffffaaaa <__crt0_stack_top+0x7ffeaaaa>
    2032:	00265e93          	srli	t4,a2,0x2
    2036:	0e0a                	slli	t3,t3,0x2
    2038:	00d37633          	and	a2,t1,a3
    203c:	01de6e33          	or	t3,t3,t4
    2040:	00b37333          	and	t1,t1,a1
    2044:	0606                	slli	a2,a2,0x1
    2046:	00135313          	srli	t1,t1,0x1
    204a:	055e7f13          	andi	t5,t3,85
    204e:	0aae7e13          	andi	t3,t3,170
    2052:	00666eb3          	or	t4,a2,t1
    2056:	0f06                	slli	t5,t5,0x1
    2058:	001e5e13          	srli	t3,t3,0x1
    205c:	01cf6e33          	or	t3,t5,t3
    2060:	008ede93          	srli	t4,t4,0x8
    2064:	01ceceb3          	xor	t4,t4,t3
    2068:	00666e33          	or	t3,a2,t1
    206c:	632d                	lui	t1,0xb
    206e:	86830313          	addi	t1,t1,-1944 # a868 <intpat+0x28>
    2072:	001e9613          	slli	a2,t4,0x1
    2076:	961a                	add	a2,a2,t1
    2078:	00065603          	lhu	a2,0(a2)
    207c:	0e22                	slli	t3,t3,0x8
    crc = crcu8((ee_u8)((newval) >> 8), crc);
    207e:	00855f13          	srli	t5,a0,0x8
    2082:	01c64e33          	xor	t3,a2,t3
    2086:	010e1e93          	slli	t4,t3,0x10
    208a:	0ff67613          	zext.b	a2,a2
    208e:	018ede13          	srli	t3,t4,0x18
    2092:	0622                	slli	a2,a2,0x8
    2094:	01c66633          	or	a2,a2,t3
    2098:	00e67e33          	and	t3,a2,a4
    209c:	01167633          	and	a2,a2,a7
    20a0:	8211                	srli	a2,a2,0x4
    20a2:	0e12                	slli	t3,t3,0x4
    20a4:	00ce6e33          	or	t3,t3,a2
    20a8:	00fe7633          	and	a2,t3,a5
    20ac:	010e7e33          	and	t3,t3,a6
    20b0:	002e5e13          	srli	t3,t3,0x2
    20b4:	060a                	slli	a2,a2,0x2
    20b6:	01c66633          	or	a2,a2,t3
    20ba:	00d67e33          	and	t3,a2,a3
    20be:	8e6d                	and	a2,a2,a1
    20c0:	8205                	srli	a2,a2,0x1
    20c2:	0e06                	slli	t3,t3,0x1
    20c4:	00ce6e33          	or	t3,t3,a2
    20c8:	0ffe7613          	zext.b	a2,t3
    20cc:	0622                	slli	a2,a2,0x8
    20ce:	008e5e13          	srli	t3,t3,0x8
    20d2:	01c66633          	or	a2,a2,t3
    20d6:	00e67eb3          	and	t4,a2,a4
    20da:	01167633          	and	a2,a2,a7
    20de:	8211                	srli	a2,a2,0x4
    20e0:	0e92                	slli	t4,t4,0x4
    20e2:	00ceeeb3          	or	t4,t4,a2
    20e6:	00ff7613          	andi	a2,t5,15
    20ea:	0f0f7f13          	andi	t5,t5,240
    20ee:	00fefe33          	and	t3,t4,a5
    20f2:	004f5f13          	srli	t5,t5,0x4
    20f6:	010efeb3          	and	t4,t4,a6
    20fa:	0612                	slli	a2,a2,0x4
    20fc:	01e66633          	or	a2,a2,t5
    2100:	002ede93          	srli	t4,t4,0x2
    2104:	0e0a                	slli	t3,t3,0x2
    2106:	01de6e33          	or	t3,t3,t4
    210a:	03367e93          	andi	t4,a2,51
    210e:	0cc67613          	andi	a2,a2,204
    2112:	00265f13          	srli	t5,a2,0x2
    2116:	0e8a                	slli	t4,t4,0x2
    2118:	00de7633          	and	a2,t3,a3
    211c:	01eeeeb3          	or	t4,t4,t5
    2120:	00be7e33          	and	t3,t3,a1
    2124:	0606                	slli	a2,a2,0x1
    2126:	001e5e13          	srli	t3,t3,0x1
    212a:	055eff93          	andi	t6,t4,85
    212e:	0aaefe93          	andi	t4,t4,170
    2132:	01c66f33          	or	t5,a2,t3
    2136:	0f86                	slli	t6,t6,0x1
    2138:	001ede93          	srli	t4,t4,0x1
    213c:	008f5f13          	srli	t5,t5,0x8
    2140:	01dfeeb3          	or	t4,t6,t4
    2144:	01df4eb3          	xor	t4,t5,t4
    2148:	01c66e33          	or	t3,a2,t3
    214c:	001e9613          	slli	a2,t4,0x1
    2150:	961a                	add	a2,a2,t1
    2152:	00065603          	lhu	a2,0(a2)
    2156:	0e22                	slli	t3,t3,0x8
    crc = crc16((ee_s16)(newval >> 16), crc);
    2158:	01055e93          	srli	t4,a0,0x10
    for (i = 0; i < 8; i++)
    215c:	01c64e33          	xor	t3,a2,t3
    2160:	010e1f13          	slli	t5,t3,0x10
    2164:	0ff67613          	zext.b	a2,a2
    2168:	018f5e13          	srli	t3,t5,0x18
    216c:	0622                	slli	a2,a2,0x8
    216e:	01c66633          	or	a2,a2,t3
    2172:	00e67e33          	and	t3,a2,a4
    2176:	01167633          	and	a2,a2,a7
    217a:	8211                	srli	a2,a2,0x4
    217c:	0e12                	slli	t3,t3,0x4
    217e:	00ce6e33          	or	t3,t3,a2
    2182:	00fe7633          	and	a2,t3,a5
    2186:	010e7e33          	and	t3,t3,a6
    218a:	002e5e13          	srli	t3,t3,0x2
    218e:	060a                	slli	a2,a2,0x2
    2190:	01c66633          	or	a2,a2,t3
    2194:	00d67e33          	and	t3,a2,a3
    2198:	8e6d                	and	a2,a2,a1
    219a:	0e06                	slli	t3,t3,0x1
    219c:	8205                	srli	a2,a2,0x1
    219e:	00ce6633          	or	a2,t3,a2
    21a2:	0ff67e13          	zext.b	t3,a2
    21a6:	0e22                	slli	t3,t3,0x8
    21a8:	8221                	srli	a2,a2,0x8
    21aa:	00ce6e33          	or	t3,t3,a2
    21ae:	00ee7633          	and	a2,t3,a4
    21b2:	011e7e33          	and	t3,t3,a7
    21b6:	004e5e13          	srli	t3,t3,0x4
    21ba:	0612                	slli	a2,a2,0x4
    21bc:	01c66633          	or	a2,a2,t3
    21c0:	00fefe13          	andi	t3,t4,15
    21c4:	0f0efe93          	andi	t4,t4,240
    21c8:	004edf13          	srli	t5,t4,0x4
    21cc:	0e12                	slli	t3,t3,0x4
    21ce:	00f67eb3          	and	t4,a2,a5
    21d2:	01067633          	and	a2,a2,a6
    21d6:	01ee6e33          	or	t3,t3,t5
    21da:	8209                	srli	a2,a2,0x2
    21dc:	0e8a                	slli	t4,t4,0x2
    21de:	00ceeeb3          	or	t4,t4,a2
    21e2:	033e7613          	andi	a2,t3,51
    21e6:	0cce7e13          	andi	t3,t3,204
    21ea:	002e5f13          	srli	t5,t3,0x2
    21ee:	060a                	slli	a2,a2,0x2
    21f0:	00defe33          	and	t3,t4,a3
    21f4:	01e66633          	or	a2,a2,t5
    21f8:	00befeb3          	and	t4,t4,a1
    21fc:	001ede93          	srli	t4,t4,0x1
    2200:	0e06                	slli	t3,t3,0x1
    2202:	05567f93          	andi	t6,a2,85
    2206:	0aa67613          	andi	a2,a2,170
    220a:	01de6f33          	or	t5,t3,t4
    220e:	0f86                	slli	t6,t6,0x1
    2210:	8205                	srli	a2,a2,0x1
    2212:	008f5f13          	srli	t5,t5,0x8
    2216:	00cfe633          	or	a2,t6,a2
    221a:	00cf4633          	xor	a2,t5,a2
    221e:	0606                	slli	a2,a2,0x1
    2220:	961a                	add	a2,a2,t1
    2222:	00065603          	lhu	a2,0(a2)
    2226:	01de6e33          	or	t3,t3,t4
    222a:	0e22                	slli	t3,t3,0x8
    222c:	01c64e33          	xor	t3,a2,t3
    2230:	010e1e93          	slli	t4,t3,0x10
    2234:	0ff67613          	zext.b	a2,a2
    2238:	018ede13          	srli	t3,t4,0x18
    223c:	0622                	slli	a2,a2,0x8
    223e:	01c66633          	or	a2,a2,t3
    2242:	00e67e33          	and	t3,a2,a4
    2246:	01167633          	and	a2,a2,a7
    224a:	8211                	srli	a2,a2,0x4
    224c:	0e12                	slli	t3,t3,0x4
    224e:	00ce6e33          	or	t3,t3,a2
    2252:	00fe7633          	and	a2,t3,a5
    2256:	010e7e33          	and	t3,t3,a6
    225a:	002e5e13          	srli	t3,t3,0x2
    225e:	060a                	slli	a2,a2,0x2
    2260:	01c66633          	or	a2,a2,t3
    2264:	00d67e33          	and	t3,a2,a3
    2268:	8e6d                	and	a2,a2,a1
    226a:	8205                	srli	a2,a2,0x1
    226c:	0e06                	slli	t3,t3,0x1
    226e:	00ce6e33          	or	t3,t3,a2
    2272:	0ffe7613          	zext.b	a2,t3
    2276:	0622                	slli	a2,a2,0x8
    2278:	008e5e13          	srli	t3,t3,0x8
    227c:	01c66633          	or	a2,a2,t3
    2280:	00e67eb3          	and	t4,a2,a4
    2284:	01167e33          	and	t3,a2,a7
    crc = crcu8((ee_u8)((newval) >> 8), crc);
    2288:	8161                	srli	a0,a0,0x18
    228a:	00f57613          	andi	a2,a0,15
    228e:	004e5e13          	srli	t3,t3,0x4
    2292:	0e92                	slli	t4,t4,0x4
    2294:	0612                	slli	a2,a2,0x4
    2296:	01ceeeb3          	or	t4,t4,t3
    229a:	8111                	srli	a0,a0,0x4
    229c:	00fefe33          	and	t3,t4,a5
    22a0:	8d51                	or	a0,a0,a2
    22a2:	010efeb3          	and	t4,t4,a6
    22a6:	03357613          	andi	a2,a0,51
    22aa:	002ede93          	srli	t4,t4,0x2
    22ae:	0cc57513          	andi	a0,a0,204
    22b2:	0e0a                	slli	t3,t3,0x2
    22b4:	01de6e33          	or	t3,t3,t4
    22b8:	8109                	srli	a0,a0,0x2
    22ba:	060a                	slli	a2,a2,0x2
    22bc:	8e49                	or	a2,a2,a0
    22be:	00de7533          	and	a0,t3,a3
    22c2:	00be7e33          	and	t3,t3,a1
    22c6:	05567f13          	andi	t5,a2,85
    22ca:	0506                	slli	a0,a0,0x1
    22cc:	001e5e13          	srli	t3,t3,0x1
    22d0:	0aa67613          	andi	a2,a2,170
    22d4:	01c56eb3          	or	t4,a0,t3
    22d8:	8205                	srli	a2,a2,0x1
    22da:	0f06                	slli	t5,t5,0x1
    22dc:	00cf6f33          	or	t5,t5,a2
    22e0:	008ed613          	srli	a2,t4,0x8
    22e4:	01e64633          	xor	a2,a2,t5
    22e8:	0606                	slli	a2,a2,0x1
    22ea:	961a                	add	a2,a2,t1
    22ec:	00065603          	lhu	a2,0(a2)
    22f0:	008e9513          	slli	a0,t4,0x8
    22f4:	8d31                	xor	a0,a0,a2
    22f6:	01051313          	slli	t1,a0,0x10
    22fa:	0ff67613          	zext.b	a2,a2
    22fe:	01835513          	srli	a0,t1,0x18
    2302:	0622                	slli	a2,a2,0x8
    2304:	8e49                	or	a2,a2,a0
    2306:	8f71                	and	a4,a4,a2
    2308:	01167633          	and	a2,a2,a7
    230c:	8211                	srli	a2,a2,0x4
    230e:	0712                	slli	a4,a4,0x4
    2310:	8f51                	or	a4,a4,a2
    2312:	8ff9                	and	a5,a5,a4
    2314:	01077733          	and	a4,a4,a6
    2318:	8309                	srli	a4,a4,0x2
    231a:	078a                	slli	a5,a5,0x2
    231c:	8fd9                	or	a5,a5,a4
    231e:	00d7f533          	and	a0,a5,a3
    2322:	8fed                	and	a5,a5,a1
    2324:	8385                	srli	a5,a5,0x1
    2326:	0506                	slli	a0,a0,0x1
    return crc;
}
    2328:	8d5d                	or	a0,a0,a5
    232a:	8082                	ret

0000232c <crc16>:
ee_u16
crc16(ee_s16 newval, ee_u16 crc)
{
    return crcu16((ee_u16)newval, crc);
    232c:	0ff5f793          	zext.b	a5,a1
    2330:	07a2                	slli	a5,a5,0x8
    2332:	81a1                	srli	a1,a1,0x8
    2334:	6705                	lui	a4,0x1
    2336:	737d                	lui	t1,0xfffff
    2338:	0f030313          	addi	t1,t1,240 # fffff0f0 <__crt0_stack_top+0x7ffef0f0>
    return crc;
    233c:	f0f70713          	addi	a4,a4,-241 # f0f <main+0x497>
    2340:	8fcd                	or	a5,a5,a1
    2342:	00e7f5b3          	and	a1,a5,a4
    2346:	0067f7b3          	and	a5,a5,t1
    234a:	8391                	srli	a5,a5,0x4
    234c:	0592                	slli	a1,a1,0x4
    234e:	8ddd                	or	a1,a1,a5
    2350:	78f5                	lui	a7,0xffffd
    2352:	678d                	lui	a5,0x3
    2354:	ccc88893          	addi	a7,a7,-820 # ffffcccc <__crt0_stack_top+0x7ffecccc>
    2358:	33378793          	addi	a5,a5,819 # 3333 <printf+0x82f>
    235c:	00f57693          	andi	a3,a0,15
    2360:	0f057813          	andi	a6,a0,240
    2364:	00f5f633          	and	a2,a1,a5
    2368:	00485813          	srli	a6,a6,0x4
    236c:	0115f5b3          	and	a1,a1,a7
    2370:	0692                	slli	a3,a3,0x4
    2372:	0106e6b3          	or	a3,a3,a6
    2376:	8189                	srli	a1,a1,0x2
    2378:	060a                	slli	a2,a2,0x2
    237a:	8e4d                	or	a2,a2,a1
    237c:	0336fe13          	andi	t3,a3,51
    2380:	6595                	lui	a1,0x5
    2382:	0cc6f693          	andi	a3,a3,204
    2386:	786d                	lui	a6,0xffffb
    2388:	55558593          	addi	a1,a1,1365 # 5555 <_malloc_trim_r+0x95>
    238c:	aaa80813          	addi	a6,a6,-1366 # ffffaaaa <__crt0_stack_top+0x7ffeaaaa>
    2390:	0026de93          	srli	t4,a3,0x2
    2394:	0e0a                	slli	t3,t3,0x2
    2396:	00b676b3          	and	a3,a2,a1
    239a:	01de6e33          	or	t3,t3,t4
    239e:	01067633          	and	a2,a2,a6
    23a2:	0686                	slli	a3,a3,0x1
    23a4:	8205                	srli	a2,a2,0x1
    23a6:	055e7f13          	andi	t5,t3,85
    23aa:	0aae7e13          	andi	t3,t3,170
    23ae:	00c6eeb3          	or	t4,a3,a2
    23b2:	0f06                	slli	t5,t5,0x1
    23b4:	001e5e13          	srli	t3,t3,0x1
    23b8:	01cf6e33          	or	t3,t5,t3
    23bc:	008ede93          	srli	t4,t4,0x8
    23c0:	01ceceb3          	xor	t4,t4,t3
    23c4:	6e2d                	lui	t3,0xb
    23c6:	868e0e13          	addi	t3,t3,-1944 # a868 <intpat+0x28>
    23ca:	8e55                	or	a2,a2,a3
    23cc:	001e9693          	slli	a3,t4,0x1
    23d0:	96f2                	add	a3,a3,t3
    23d2:	0006d683          	lhu	a3,0(a3)
    23d6:	0622                	slli	a2,a2,0x8
    crc = crcu8((ee_u8)((newval) >> 8), crc);
    23d8:	8121                	srli	a0,a0,0x8
    23da:	8e35                	xor	a2,a2,a3
    23dc:	01061e93          	slli	t4,a2,0x10
    23e0:	0ff6f693          	zext.b	a3,a3
    23e4:	018ed613          	srli	a2,t4,0x18
    23e8:	06a2                	slli	a3,a3,0x8
    23ea:	8ed1                	or	a3,a3,a2
    23ec:	00e6f633          	and	a2,a3,a4
    23f0:	0066f6b3          	and	a3,a3,t1
    23f4:	8291                	srli	a3,a3,0x4
    23f6:	0612                	slli	a2,a2,0x4
    23f8:	8e55                	or	a2,a2,a3
    23fa:	00f676b3          	and	a3,a2,a5
    23fe:	01167633          	and	a2,a2,a7
    2402:	8209                	srli	a2,a2,0x2
    2404:	068a                	slli	a3,a3,0x2
    2406:	8ed1                	or	a3,a3,a2
    2408:	00b6f633          	and	a2,a3,a1
    240c:	0106f6b3          	and	a3,a3,a6
    2410:	0606                	slli	a2,a2,0x1
    2412:	8285                	srli	a3,a3,0x1
    2414:	8ed1                	or	a3,a3,a2
    2416:	0ff6f613          	zext.b	a2,a3
    241a:	0622                	slli	a2,a2,0x8
    241c:	82a1                	srli	a3,a3,0x8
    241e:	8e55                	or	a2,a2,a3
    2420:	00e676b3          	and	a3,a2,a4
    2424:	00667eb3          	and	t4,a2,t1
    2428:	004ede93          	srli	t4,t4,0x4
    242c:	00f57613          	andi	a2,a0,15
    2430:	0692                	slli	a3,a3,0x4
    2432:	0f057513          	andi	a0,a0,240
    2436:	01d6e6b3          	or	a3,a3,t4
    243a:	8111                	srli	a0,a0,0x4
    243c:	0612                	slli	a2,a2,0x4
    243e:	8e49                	or	a2,a2,a0
    2440:	0116feb3          	and	t4,a3,a7
    2444:	00f6f533          	and	a0,a3,a5
    2448:	002ede93          	srli	t4,t4,0x2
    244c:	03367693          	andi	a3,a2,51
    2450:	050a                	slli	a0,a0,0x2
    2452:	0cc67613          	andi	a2,a2,204
    2456:	01d56533          	or	a0,a0,t4
    245a:	8209                	srli	a2,a2,0x2
    245c:	068a                	slli	a3,a3,0x2
    245e:	8ed1                	or	a3,a3,a2
    2460:	00b57633          	and	a2,a0,a1
    2464:	01057533          	and	a0,a0,a6
    2468:	0556ff13          	andi	t5,a3,85
    246c:	0606                	slli	a2,a2,0x1
    246e:	8105                	srli	a0,a0,0x1
    2470:	0aa6f693          	andi	a3,a3,170
    2474:	00a66eb3          	or	t4,a2,a0
    2478:	8285                	srli	a3,a3,0x1
    247a:	0f06                	slli	t5,t5,0x1
    247c:	00df6f33          	or	t5,t5,a3
    2480:	008ed693          	srli	a3,t4,0x8
    2484:	01e6c6b3          	xor	a3,a3,t5
    2488:	0686                	slli	a3,a3,0x1
    248a:	96f2                	add	a3,a3,t3
    248c:	0006d683          	lhu	a3,0(a3)
    2490:	008e9613          	slli	a2,t4,0x8
    2494:	8e35                	xor	a2,a2,a3
    2496:	01061513          	slli	a0,a2,0x10
    249a:	0ff6f693          	zext.b	a3,a3
    249e:	01855613          	srli	a2,a0,0x18
    24a2:	06a2                	slli	a3,a3,0x8
    24a4:	8ed1                	or	a3,a3,a2
    24a6:	8f75                	and	a4,a4,a3
    24a8:	0066f6b3          	and	a3,a3,t1
    24ac:	8291                	srli	a3,a3,0x4
    24ae:	0712                	slli	a4,a4,0x4
    24b0:	8f55                	or	a4,a4,a3
    24b2:	8ff9                	and	a5,a5,a4
    24b4:	01177733          	and	a4,a4,a7
    24b8:	8309                	srli	a4,a4,0x2
    24ba:	078a                	slli	a5,a5,0x2
    24bc:	8fd9                	or	a5,a5,a4
    24be:	00b7f533          	and	a0,a5,a1
    24c2:	0107f7b3          	and	a5,a5,a6
    24c6:	8385                	srli	a5,a5,0x1
    24c8:	0506                	slli	a0,a0,0x1
}
    24ca:	8d5d                	or	a0,a0,a5
    24cc:	8082                	ret

000024ce <check_data_types>:
    if (retval > 0)
    {
        ee_printf("ERROR: Please modify the datatypes in core_portme.h!\n");
    }
    return retval;
}
    24ce:	4501                	li	a0,0
    24d0:	8082                	ret

000024d2 <cvt>:
{
    int    r2;
    double fi, fj;
    char * p, *p1;

    if (ndigits < 0)
    24d2:	fff64893          	not	a7,a2
{
    24d6:	711d                	addi	sp,sp,-96
    if (ndigits < 0)
    24d8:	41f8d893          	srai	a7,a7,0x1f
{
    24dc:	d86a                	sw	s10,48(sp)
    24de:	8d3e                	mv	s10,a5
    if (ndigits < 0)
    24e0:	011677b3          	and	a5,a2,a7
{
    24e4:	cca2                	sw	s0,88(sp)
    24e6:	caa6                	sw	s1,84(sp)
    24e8:	c8ca                	sw	s2,80(sp)
    24ea:	d66e                	sw	s11,44(sp)
    24ec:	ce86                	sw	ra,92(sp)
    24ee:	c6ce                	sw	s3,76(sp)
    24f0:	c4d2                	sw	s4,72(sp)
    24f2:	c2d6                	sw	s5,68(sp)
    24f4:	c0da                	sw	s6,64(sp)
    24f6:	dc62                	sw	s8,56(sp)
    24f8:	da66                	sw	s9,52(sp)
        ndigits = 0;
    if (ndigits >= CVTBUFSIZE - 1)
    24fa:	04e00313          	li	t1,78
{
    24fe:	c642                	sw	a6,12(sp)
    if (ndigits < 0)
    2500:	c43e                	sw	a5,8(sp)
{
    2502:	842e                	mv	s0,a1
    2504:	84aa                	mv	s1,a0
    2506:	8db6                	mv	s11,a3
    2508:	893a                	mv	s2,a4
    if (ndigits >= CVTBUFSIZE - 1)
    250a:	00c35363          	bge	t1,a2,2510 <cvt+0x3e>
    250e:	c41a                	sw	t1,8(sp)
        ndigits = CVTBUFSIZE - 2;
    r2    = 0;
    *sign = 0;
    p     = &buf[0];
    if (arg < 0)
    2510:	8526                	mv	a0,s1
    2512:	85a2                	mv	a1,s0
    2514:	4601                	li	a2,0
    2516:	4681                	li	a3,0
    2518:	488060ef          	jal	89a0 <__ledf2>
    251c:	4781                	li	a5,0
    251e:	00055663          	bgez	a0,252a <cvt+0x58>
    {
        *sign = 1;
        arg   = -arg;
    2522:	800007b7          	lui	a5,0x80000
    2526:	8c3d                	xor	s0,s0,a5
    2528:	4785                	li	a5,1
    *sign = 0;
    252a:	00f92023          	sw	a5,0(s2) # fffff000 <__crt0_stack_top+0x7ffef000>
    }
    arg = modf(arg, &fi);
    252e:	8526                	mv	a0,s1
    2530:	0810                	addi	a2,sp,16
    2532:	85a2                	mv	a1,s0
    2534:	018020ef          	jal	454c <modf>
    p1  = &buf[CVTBUFSIZE];

    if (fi != 0)
    2538:	4c42                	lw	s8,16(sp)
    253a:	4cd2                	lw	s9,20(sp)
    arg = modf(arg, &fi);
    253c:	892e                	mv	s2,a1
    253e:	84aa                	mv	s1,a0
    if (fi != 0)
    2540:	4601                	li	a2,0
    2542:	4681                	li	a3,0
    2544:	8562                	mv	a0,s8
    2546:	85e6                	mv	a1,s9
    2548:	2fc060ef          	jal	8844 <__eqdf2>
    254c:	1e050263          	beqz	a0,2730 <cvt+0x25e>
    2550:	6b2d                	lui	s6,0xb
    2552:	67ad                	lui	a5,0xb
    {
        p1 = &buf[CVTBUFSIZE];
        while (fi != 0)
        {
            fj    = modf(fi / 10, &fi);
    2554:	fb0b2a03          	lw	s4,-80(s6) # afb0 <__clz_tab+0x108>
    2558:	fb4b2a83          	lw	s5,-76(s6)
    255c:	de5e                	sw	s7,60(sp)
            *--p1 = (int)((fj + .03) * 10) + '0';
    255e:	fb87ab03          	lw	s6,-72(a5) # afb8 <__clz_tab+0x110>
    2562:	fbc7ab83          	lw	s7,-68(a5)
        p1 = &buf[CVTBUFSIZE];
    2566:	050d0413          	addi	s0,s10,80
    256a:	89a2                	mv	s3,s0
            fj    = modf(fi / 10, &fi);
    256c:	86d6                	mv	a3,s5
    256e:	8562                	mv	a0,s8
    2570:	85e6                	mv	a1,s9
    2572:	8652                	mv	a2,s4
    2574:	30d050ef          	jal	8080 <__divdf3>
    2578:	0810                	addi	a2,sp,16
    257a:	7d3010ef          	jal	454c <modf>
            *--p1 = (int)((fj + .03) * 10) + '0';
    257e:	865a                	mv	a2,s6
    2580:	86de                	mv	a3,s7
            fj    = modf(fi / 10, &fi);
    2582:	cc2a                	sw	a0,24(sp)
    2584:	ce2e                	sw	a1,28(sp)
            *--p1 = (int)((fj + .03) * 10) + '0';
    2586:	3ae050ef          	jal	7934 <__adddf3>
    258a:	8652                	mv	a2,s4
    258c:	86d6                	mv	a3,s5
    258e:	4ea060ef          	jal	8a78 <__muldf3>
    2592:	2e2070ef          	jal	9874 <__fixdfsi>
        while (fi != 0)
    2596:	4c42                	lw	s8,16(sp)
    2598:	4cd2                	lw	s9,20(sp)
            *--p1 = (int)((fj + .03) * 10) + '0';
    259a:	03050513          	addi	a0,a0,48
    259e:	fea98fa3          	sb	a0,-1(s3)
        while (fi != 0)
    25a2:	4601                	li	a2,0
    25a4:	4681                	li	a3,0
    25a6:	8562                	mv	a0,s8
    25a8:	85e6                	mv	a1,s9
            *--p1 = (int)((fj + .03) * 10) + '0';
    25aa:	19fd                	addi	s3,s3,-1
        while (fi != 0)
    25ac:	298060ef          	jal	8844 <__eqdf2>
    25b0:	fd55                	bnez	a0,256c <cvt+0x9a>
            r2++;
    25b2:	413d0c33          	sub	s8,s10,s3
    25b6:	050c0c13          	addi	s8,s8,80
        }
        while (p1 < &buf[CVTBUFSIZE])
    25ba:	87ce                	mv	a5,s3
    25bc:	2e89f063          	bgeu	s3,s0,289c <cvt+0x3ca>
    25c0:	413d0533          	sub	a0,s10,s3
    25c4:	04f50693          	addi	a3,a0,79
    25c8:	4719                	li	a4,6
    25ca:	2ad77263          	bgeu	a4,a3,286e <cvt+0x39c>
    25ce:	013d6733          	or	a4,s10,s3
    25d2:	fff50693          	addi	a3,a0,-1
    25d6:	8b0d                	andi	a4,a4,3
    25d8:	0036b693          	sltiu	a3,a3,3
    25dc:	00173713          	seqz	a4,a4
    25e0:	0016b693          	seqz	a3,a3
    25e4:	8f75                	and	a4,a4,a3
    25e6:	28070463          	beqz	a4,286e <cvt+0x39c>
    25ea:	05050813          	addi	a6,a0,80
    25ee:	ffc87593          	andi	a1,a6,-4
    25f2:	00b98633          	add	a2,s3,a1
    25f6:	876a                	mv	a4,s10
            *p++ = *p1++;
    25f8:	4394                	lw	a3,0(a5)
    25fa:	0791                	addi	a5,a5,4
    25fc:	0711                	addi	a4,a4,4
    25fe:	fed72e23          	sw	a3,-4(a4)
        while (p1 < &buf[CVTBUFSIZE])
    2602:	fef61be3          	bne	a2,a5,25f8 <cvt+0x126>
    2606:	02b80763          	beq	a6,a1,2634 <cvt+0x162>
            *p++ = *p1++;
    260a:	00064703          	lbu	a4,0(a2)
    260e:	95ea                	add	a1,a1,s10
    2610:	00160793          	addi	a5,a2,1
    2614:	00e58023          	sb	a4,0(a1)
        while (p1 < &buf[CVTBUFSIZE])
    2618:	0087fe63          	bgeu	a5,s0,2634 <cvt+0x162>
            *p++ = *p1++;
    261c:	00164703          	lbu	a4,1(a2)
    2620:	00260793          	addi	a5,a2,2
    2624:	00e580a3          	sb	a4,1(a1)
        while (p1 < &buf[CVTBUFSIZE])
    2628:	0087f663          	bgeu	a5,s0,2634 <cvt+0x162>
            *p++ = *p1++;
    262c:	00264783          	lbu	a5,2(a2)
    2630:	00f58123          	sb	a5,2(a1)
        {
            arg = fj;
            r2--;
        }
    }
    p1 = &buf[ndigits];
    2634:	47a2                	lw	a5,8(sp)
    2636:	5bf2                	lw	s7,60(sp)
    2638:	942a                	add	s0,s0,a0
    263a:	00fd0b33          	add	s6,s10,a5
    if (eflag == 0)
    263e:	47b2                	lw	a5,12(sp)
    2640:	16078863          	beqz	a5,27b0 <cvt+0x2de>
        p1 += r2;
    *decpt = r2;
    2644:	018da023          	sw	s8,0(s11)
    if (p1 < &buf[0])
    2648:	17ab6963          	bltu	s6,s10,27ba <cvt+0x2e8>
        p1 = &buf[CVTBUFSIZE];
    264c:	050d0993          	addi	s3,s10,80
    {
        buf[0] = '\0';
        return buf;
    }
    while (p <= p1 && p < &buf[CVTBUFSIZE])
    2650:	048b6063          	bltu	s6,s0,2690 <cvt+0x1be>
    {
        arg *= 10;
    2654:	67ad                	lui	a5,0xb
    2656:	fb07aa03          	lw	s4,-80(a5) # afb0 <__clz_tab+0x108>
    265a:	fb47aa83          	lw	s5,-76(a5)
    265e:	a01d                	j	2684 <cvt+0x1b2>
    2660:	418060ef          	jal	8a78 <__muldf3>
        arg  = modf(arg, &fj);
    2664:	0830                	addi	a2,sp,24
    2666:	6e7010ef          	jal	454c <modf>
    266a:	84aa                	mv	s1,a0
    266c:	892e                	mv	s2,a1
        *p++ = (int)fj + '0';
    266e:	4562                	lw	a0,24(sp)
    2670:	45f2                	lw	a1,28(sp)
    2672:	0405                	addi	s0,s0,1
    2674:	200070ef          	jal	9874 <__fixdfsi>
    2678:	03050513          	addi	a0,a0,48
    267c:	fea40fa3          	sb	a0,-1(s0)
    while (p <= p1 && p < &buf[CVTBUFSIZE])
    2680:	008b6863          	bltu	s6,s0,2690 <cvt+0x1be>
        arg *= 10;
    2684:	8526                	mv	a0,s1
    2686:	85ca                	mv	a1,s2
    2688:	8652                	mv	a2,s4
    268a:	86d6                	mv	a3,s5
    while (p <= p1 && p < &buf[CVTBUFSIZE])
    268c:	fd346ae3          	bltu	s0,s3,2660 <cvt+0x18e>
    }
    if (p1 >= &buf[CVTBUFSIZE])
    2690:	133b7863          	bgeu	s6,s3,27c0 <cvt+0x2ee>
    {
        buf[CVTBUFSIZE - 1] = '\0';
        return buf;
    }
    p = p1;
    *p1 += 5;
    2694:	000b4783          	lbu	a5,0(s6)
    while (*p1 > '9')
    2698:	03900693          	li	a3,57
    *p1 += 5;
    269c:	0795                	addi	a5,a5,5
    269e:	0ff7f793          	zext.b	a5,a5
    26a2:	00fb0023          	sb	a5,0(s6)
    while (*p1 > '9')
    26a6:	06f6f463          	bgeu	a3,a5,270e <cvt+0x23c>
    26aa:	47b2                	lw	a5,12(sp)
    26ac:	12079663          	bnez	a5,27d8 <cvt+0x306>
    26b0:	87da                	mv	a5,s6
    {
        *p1 = '0';
    26b2:	03000613          	li	a2,48
    26b6:	00c78023          	sb	a2,0(a5)
        if (p1 > buf)
    26ba:	18fd6463          	bltu	s10,a5,2842 <cvt+0x370>
            ++*--p1;
        else
        {
            *p1 = '1';
    26be:	03100713          	li	a4,49
    26c2:	00e78023          	sb	a4,0(a5)
            (*decpt)++;
    26c6:	000da703          	lw	a4,0(s11)
    26ca:	0705                	addi	a4,a4,1
    26cc:	00eda023          	sw	a4,0(s11)
            if (eflag == 0)
            {
                if (p > buf)
    26d0:	016d7463          	bgeu	s10,s6,26d8 <cvt+0x206>
                    *p = '0';
    26d4:	00cb0023          	sb	a2,0(s6)
    while (*p1 > '9')
    26d8:	0007c703          	lbu	a4,0(a5)
    26dc:	03900693          	li	a3,57
                p++;
    26e0:	0b05                	addi	s6,s6,1
    while (*p1 > '9')
    26e2:	02e6f663          	bgeu	a3,a4,270e <cvt+0x23c>
            *p1 = '1';
    26e6:	03100613          	li	a2,49
                    *p = '0';
    26ea:	03000593          	li	a1,48
            *p1 = '1';
    26ee:	00c78023          	sb	a2,0(a5)
            (*decpt)++;
    26f2:	000da703          	lw	a4,0(s11)
    26f6:	0705                	addi	a4,a4,1
    26f8:	00eda023          	sw	a4,0(s11)
                if (p > buf)
    26fc:	016d7463          	bgeu	s10,s6,2704 <cvt+0x232>
                    *p = '0';
    2700:	00bb0023          	sb	a1,0(s6)
    while (*p1 > '9')
    2704:	0007c703          	lbu	a4,0(a5)
                p++;
    2708:	0b05                	addi	s6,s6,1
    while (*p1 > '9')
    270a:	fee6e2e3          	bltu	a3,a4,26ee <cvt+0x21c>
            }
        }
    }
    *p = '\0';
    270e:	000b0023          	sb	zero,0(s6)
    return buf;
}
    2712:	40f6                	lw	ra,92(sp)
    2714:	4466                	lw	s0,88(sp)
    2716:	44d6                	lw	s1,84(sp)
    2718:	4946                	lw	s2,80(sp)
    271a:	49b6                	lw	s3,76(sp)
    271c:	4a26                	lw	s4,72(sp)
    271e:	4a96                	lw	s5,68(sp)
    2720:	4b06                	lw	s6,64(sp)
    2722:	5c62                	lw	s8,56(sp)
    2724:	5cd2                	lw	s9,52(sp)
    2726:	5db2                	lw	s11,44(sp)
    2728:	856a                	mv	a0,s10
    272a:	5d42                	lw	s10,48(sp)
    272c:	6125                	addi	sp,sp,96
    272e:	8082                	ret
    else if (arg > 0)
    2730:	8526                	mv	a0,s1
    2732:	85ca                	mv	a1,s2
    2734:	4601                	li	a2,0
    2736:	4681                	li	a3,0
    2738:	190060ef          	jal	88c8 <__gedf2>
    273c:	08a05563          	blez	a0,27c6 <cvt+0x2f4>
        while ((fj = arg * 10) < 1)
    2740:	6b2d                	lui	s6,0xb
    2742:	fb0b2603          	lw	a2,-80(s6) # afb0 <__clz_tab+0x108>
    2746:	fb4b2683          	lw	a3,-76(s6)
    274a:	8526                	mv	a0,s1
    274c:	85ca                	mv	a1,s2
    274e:	de5e                	sw	s7,60(sp)
    2750:	328060ef          	jal	8a78 <__muldf3>
    2754:	67ad                	lui	a5,0xb
    2756:	fa87aa03          	lw	s4,-88(a5) # afa8 <__clz_tab+0x100>
    275a:	fac7aa83          	lw	s5,-84(a5)
    275e:	89aa                	mv	s3,a0
    2760:	8652                	mv	a2,s4
    2762:	86d6                	mv	a3,s5
    2764:	842e                	mv	s0,a1
    2766:	cc2a                	sw	a0,24(sp)
    2768:	ce2e                	sw	a1,28(sp)
    276a:	236060ef          	jal	89a0 <__ledf2>
    r2    = 0;
    276e:	4c01                	li	s8,0
        while ((fj = arg * 10) < 1)
    2770:	fb4b2b83          	lw	s7,-76(s6)
    2774:	fb0b2b03          	lw	s6,-80(s6)
    2778:	10055563          	bgez	a0,2882 <cvt+0x3b0>
    277c:	854e                	mv	a0,s3
    277e:	85a2                	mv	a1,s0
    2780:	865a                	mv	a2,s6
    2782:	86de                	mv	a3,s7
    2784:	2f4060ef          	jal	8a78 <__muldf3>
    2788:	8652                	mv	a2,s4
    278a:	86d6                	mv	a3,s5
    278c:	84ce                	mv	s1,s3
    278e:	8922                	mv	s2,s0
            r2--;
    2790:	1c7d                	addi	s8,s8,-1
        while ((fj = arg * 10) < 1)
    2792:	89aa                	mv	s3,a0
    2794:	842e                	mv	s0,a1
    2796:	20a060ef          	jal	89a0 <__ledf2>
    279a:	fe0541e3          	bltz	a0,277c <cvt+0x2aa>
    p1 = &buf[ndigits];
    279e:	47a2                	lw	a5,8(sp)
    27a0:	cc4e                	sw	s3,24(sp)
    27a2:	ce22                	sw	s0,28(sp)
    27a4:	00fd0b33          	add	s6,s10,a5
    if (eflag == 0)
    27a8:	47b2                	lw	a5,12(sp)
    27aa:	ebad                	bnez	a5,281c <cvt+0x34a>
    p     = &buf[0];
    27ac:	5bf2                	lw	s7,60(sp)
    27ae:	846a                	mv	s0,s10
        p1 += r2;
    27b0:	9b62                	add	s6,s6,s8
    *decpt = r2;
    27b2:	018da023          	sw	s8,0(s11)
    if (p1 < &buf[0])
    27b6:	e9ab7be3          	bgeu	s6,s10,264c <cvt+0x17a>
        buf[0] = '\0';
    27ba:	000d0023          	sb	zero,0(s10)
        return buf;
    27be:	bf91                	j	2712 <cvt+0x240>
        buf[CVTBUFSIZE - 1] = '\0';
    27c0:	040d07a3          	sb	zero,79(s10)
        return buf;
    27c4:	b7b9                	j	2712 <cvt+0x240>
    p1 = &buf[ndigits];
    27c6:	47a2                	lw	a5,8(sp)
    27c8:	00fd0b33          	add	s6,s10,a5
    if (eflag == 0)
    27cc:	47b2                	lw	a5,12(sp)
    27ce:	e3a5                	bnez	a5,282e <cvt+0x35c>
    r2    = 0;
    27d0:	4c01                	li	s8,0
    p     = &buf[0];
    27d2:	846a                	mv	s0,s10
        p1 += r2;
    27d4:	9b62                	add	s6,s6,s8
    27d6:	bff1                	j	27b2 <cvt+0x2e0>
    while (*p1 > '9')
    27d8:	87da                	mv	a5,s6
        *p1 = '0';
    27da:	03000613          	li	a2,48
    27de:	00c78023          	sb	a2,0(a5)
        if (p1 > buf)
    27e2:	06fd6b63          	bltu	s10,a5,2858 <cvt+0x386>
            *p1 = '1';
    27e6:	03100613          	li	a2,49
    27ea:	00c78023          	sb	a2,0(a5)
            (*decpt)++;
    27ee:	000da703          	lw	a4,0(s11)
    while (*p1 > '9')
    27f2:	03900693          	li	a3,57
            (*decpt)++;
    27f6:	0705                	addi	a4,a4,1
    27f8:	00eda023          	sw	a4,0(s11)
    while (*p1 > '9')
    27fc:	0007c703          	lbu	a4,0(a5)
    2800:	f0e6f7e3          	bgeu	a3,a4,270e <cvt+0x23c>
            *p1 = '1';
    2804:	00c78023          	sb	a2,0(a5)
            (*decpt)++;
    2808:	000da703          	lw	a4,0(s11)
    280c:	0705                	addi	a4,a4,1
    280e:	00eda023          	sw	a4,0(s11)
    while (*p1 > '9')
    2812:	0007c703          	lbu	a4,0(a5)
    2816:	fee6e7e3          	bltu	a3,a4,2804 <cvt+0x332>
    281a:	bdd5                	j	270e <cvt+0x23c>
    *decpt = r2;
    281c:	018da023          	sw	s8,0(s11)
    if (p1 < &buf[0])
    2820:	07ab6a63          	bltu	s6,s10,2894 <cvt+0x3c2>
    while (p <= p1 && p < &buf[CVTBUFSIZE])
    2824:	5bf2                	lw	s7,60(sp)
        p1 = &buf[CVTBUFSIZE];
    2826:	050d0993          	addi	s3,s10,80
    p     = &buf[0];
    282a:	846a                	mv	s0,s10
    282c:	b525                	j	2654 <cvt+0x182>
    *decpt = r2;
    282e:	000da023          	sw	zero,0(s11)
        p1 = &buf[CVTBUFSIZE];
    2832:	050d0993          	addi	s3,s10,80
    p     = &buf[0];
    2836:	846a                	mv	s0,s10
    if (p1 < &buf[0])
    2838:	e1ab7ee3          	bgeu	s6,s10,2654 <cvt+0x182>
        buf[0] = '\0';
    283c:	000d0023          	sb	zero,0(s10)
        return buf;
    2840:	bdc9                	j	2712 <cvt+0x240>
            ++*--p1;
    2842:	fff7c703          	lbu	a4,-1(a5)
    2846:	0705                	addi	a4,a4,1
    2848:	0ff77713          	zext.b	a4,a4
    284c:	fee78fa3          	sb	a4,-1(a5)
    while (*p1 > '9')
    2850:	eae6ffe3          	bgeu	a3,a4,270e <cvt+0x23c>
    2854:	17fd                	addi	a5,a5,-1
    2856:	b585                	j	26b6 <cvt+0x1e4>
            ++*--p1;
    2858:	fff7c703          	lbu	a4,-1(a5)
    285c:	0705                	addi	a4,a4,1
    285e:	0ff77713          	zext.b	a4,a4
    2862:	fee78fa3          	sb	a4,-1(a5)
    while (*p1 > '9')
    2866:	eae6f4e3          	bgeu	a3,a4,270e <cvt+0x23c>
    286a:	17fd                	addi	a5,a5,-1
    286c:	bf8d                	j	27de <cvt+0x30c>
        while (p1 < &buf[CVTBUFSIZE])
    286e:	87ea                	mv	a5,s10
            *p++ = *p1++;
    2870:	0009c703          	lbu	a4,0(s3)
    2874:	0985                	addi	s3,s3,1
    2876:	0785                	addi	a5,a5,1
    2878:	fee78fa3          	sb	a4,-1(a5)
        while (p1 < &buf[CVTBUFSIZE])
    287c:	ff341ae3          	bne	s0,s3,2870 <cvt+0x39e>
    2880:	bb55                	j	2634 <cvt+0x162>
    p1 = &buf[ndigits];
    2882:	47a2                	lw	a5,8(sp)
    2884:	00fd0b33          	add	s6,s10,a5
    if (eflag == 0)
    2888:	47b2                	lw	a5,12(sp)
    288a:	d38d                	beqz	a5,27ac <cvt+0x2da>
    *decpt = r2;
    288c:	000da023          	sw	zero,0(s11)
    if (p1 < &buf[0])
    2890:	f9ab7ae3          	bgeu	s6,s10,2824 <cvt+0x352>
    2894:	5bf2                	lw	s7,60(sp)
        buf[0] = '\0';
    2896:	000d0023          	sb	zero,0(s10)
        return buf;
    289a:	bda5                	j	2712 <cvt+0x240>
    p1 = &buf[ndigits];
    289c:	47a2                	lw	a5,8(sp)
    289e:	00fd0b33          	add	s6,s10,a5
    if (eflag == 0)
    28a2:	47b2                	lw	a5,12(sp)
    28a4:	d781                	beqz	a5,27ac <cvt+0x2da>
    *decpt = r2;
    28a6:	018da023          	sw	s8,0(s11)
    if (p1 < &buf[0])
    28aa:	ffab65e3          	bltu	s6,s10,2894 <cvt+0x3c2>
        p1 = &buf[CVTBUFSIZE];
    28ae:	89a2                	mv	s3,s0
    28b0:	5bf2                	lw	s7,60(sp)
    p     = &buf[0];
    28b2:	846a                	mv	s0,s10
    28b4:	b345                	j	2654 <cvt+0x182>

000028b6 <fcvtbuf>:
}

char *
fcvtbuf(double arg, int ndigits, int *decpt, int *sign, char *buf)
{
    return cvt(arg, ndigits, decpt, sign, buf, 0);
    28b6:	4801                	li	a6,0
    28b8:	b929                	j	24d2 <cvt>

000028ba <number>:
    return i;
}

static char *
number(char *str, long num, int base, int size, int precision, int type)
{
    28ba:	7175                	addi	sp,sp,-144
    28bc:	88aa                	mv	a7,a0
    28be:	c706                	sw	ra,140(sp)
    char  c, sign, tmp[66];
    char *dig = digits;
    28c0:	6529                	lui	a0,0xa
{
    28c2:	c522                	sw	s0,136(sp)
    28c4:	c326                	sw	s1,132(sp)
    28c6:	c14a                	sw	s2,128(sp)
    28c8:	dece                	sw	s3,124(sp)
    int   i;

    if (type & UPPERCASE)
    28ca:	0407fe13          	andi	t3,a5,64
{
    28ce:	8332                	mv	t1,a2
    char *dig = digits;
    28d0:	48450513          	addi	a0,a0,1156 # a484 <__fini_array_end+0x754>
    if (type & UPPERCASE)
    28d4:	000e0563          	beqz	t3,28de <number+0x24>
    28d8:	6ea9                	lui	t4,0xa
    28da:	4ace8513          	addi	a0,t4,1196 # a4ac <__fini_array_end+0x77c>
    if (type & LEFT)
        type &= ~ZEROPAD;
    if (base < 2 || base > 36)
        return 0;

    c    = (type & ZEROPAD) ? '0' : ' ';
    28de:	0017f393          	andi	t2,a5,1
    28e2:	fff38f13          	addi	t5,t2,-1
    28e6:	ff0f7f13          	andi	t5,t5,-16
    if (type & LEFT)
    28ea:	0107f293          	andi	t0,a5,16
    c    = (type & ZEROPAD) ? '0' : ' ';
    28ee:	030f0f13          	addi	t5,t5,48
    if (type & LEFT)
    28f2:	00028663          	beqz	t0,28fe <number+0x44>
        type &= ~ZEROPAD;
    28f6:	9bf9                	andi	a5,a5,-2
    28f8:	43c1                	li	t2,16
    c    = (type & ZEROPAD) ? '0' : ' ';
    28fa:	02000f13          	li	t5,32
    sign = 0;
    if (type & SIGN)
    28fe:	0027f613          	andi	a2,a5,2
            sign = ' ';
            size--;
        }
    }

    if (type & HEX_PREP)
    2902:	0207ff93          	andi	t6,a5,32
    if (type & SIGN)
    2906:	0e060f63          	beqz	a2,2a04 <number+0x14a>
        if (num < 0)
    290a:	1805cc63          	bltz	a1,2aa2 <number+0x1e8>
        else if (type & PLUS)
    290e:	0047f613          	andi	a2,a5,4
    2912:	16061963          	bnez	a2,2a84 <number+0x1ca>
        else if (type & SPACE)
    2916:	8ba1                	andi	a5,a5,8
    sign = 0;
    2918:	4981                	li	s3,0
        else if (type & SPACE)
    291a:	c781                	beqz	a5,2922 <number+0x68>
            size--;
    291c:	16fd                	addi	a3,a3,-1
            sign = ' ';
    291e:	02000993          	li	s3,32
    if (type & HEX_PREP)
    2922:	000f8c63          	beqz	t6,293a <number+0x80>
    {
        if (base == 16)
    2926:	47c1                	li	a5,16
    2928:	18f30d63          	beq	t1,a5,2ac2 <number+0x208>
            size -= 2;
        else if (base == 8)
            size--;
    292c:	ff830793          	addi	a5,t1,-8
    2930:	0017b793          	seqz	a5,a5
    2934:	8e9d                	sub	a3,a3,a5
    2936:	02000f93          	li	t6,32
    }

    i = 0;

    if (num == 0)
    293a:	10059b63          	bnez	a1,2a50 <number+0x196>
        tmp[i++] = '0';
    293e:	03000793          	li	a5,48
    2942:	02f10623          	sb	a5,44(sp)
    2946:	4901                	li	s2,0
    2948:	4785                	li	a5,1
    294a:	1060                	addi	s0,sp,44
            tmp[i++] = dig[((unsigned long)num) % (unsigned)base];
            num      = ((unsigned long)num) / (unsigned)base;
        }
    }

    if (i > precision)
    294c:	8e3e                	mv	t3,a5
    294e:	00e7d363          	bge	a5,a4,2954 <number+0x9a>
    2952:	8e3a                	mv	t3,a4
        precision = i;
    size -= precision;
    2954:	41c684b3          	sub	s1,a3,t3
    if (!(type & (ZEROPAD | LEFT)))
    2958:	0a039963          	bnez	t2,2a0a <number+0x150>
        while (size-- > 0)
    295c:	0a905663          	blez	s1,2a08 <number+0x14e>
            *str++ = ' ';
    2960:	8546                	mv	a0,a7
    2962:	8626                	mv	a2,s1
    2964:	02000593          	li	a1,32
    2968:	ce3a                	sw	a4,28(sp)
    296a:	cc1a                	sw	t1,24(sp)
    296c:	ca7e                	sw	t6,20(sp)
    296e:	c872                	sw	t3,16(sp)
    2970:	c63e                	sw	a5,12(sp)
    2972:	c47a                	sw	t5,8(sp)
    2974:	c216                	sw	t0,4(sp)
    2976:	0bb020ef          	jal	5230 <memset>
    if (sign)
    297a:	4292                	lw	t0,4(sp)
    297c:	4f22                	lw	t5,8(sp)
    297e:	47b2                	lw	a5,12(sp)
    2980:	4e42                	lw	t3,16(sp)
    2982:	4fd2                	lw	t6,20(sp)
    2984:	4362                	lw	t1,24(sp)
    2986:	4772                	lw	a4,28(sp)
    2988:	009508b3          	add	a7,a0,s1
    298c:	0e099563          	bnez	s3,2a76 <number+0x1bc>
        *str++ = sign;

    if (type & HEX_PREP)
    2990:	000f8863          	beqz	t6,29a0 <number+0xe6>
    {
        if (base == 8)
    2994:	46a1                	li	a3,8
    2996:	14d30663          	beq	t1,a3,2ae2 <number+0x228>
            *str++ = '0';
        else if (base == 16)
    299a:	46c1                	li	a3,16
    299c:	0ed30863          	beq	t1,a3,2a8c <number+0x1d2>
            *str++ = digits[33];
        }
    }

    if (!(type & LEFT))
        while (size-- > 0)
    29a0:	005034b3          	snez	s1,t0
    29a4:	14f9                	addi	s1,s1,-2
            *str++ = c;
    while (i < precision--)
    29a6:	00e7dc63          	bge	a5,a4,29be <number+0x104>
        *str++ = '0';
    29aa:	40fe09b3          	sub	s3,t3,a5
    29ae:	8546                	mv	a0,a7
    29b0:	864e                	mv	a2,s3
    29b2:	03000593          	li	a1,48
    29b6:	07b020ef          	jal	5230 <memset>
    29ba:	013508b3          	add	a7,a0,s3
    while (i-- > 0)
    29be:	012407b3          	add	a5,s0,s2
    29c2:	fff40593          	addi	a1,s0,-1
        while (size-- > 0)
    29c6:	8746                	mv	a4,a7
        *str++ = tmp[i];
    29c8:	0007c603          	lbu	a2,0(a5)
    while (i-- > 0)
    29cc:	17fd                	addi	a5,a5,-1
        *str++ = tmp[i];
    29ce:	0705                	addi	a4,a4,1
    29d0:	fec70fa3          	sb	a2,-1(a4)
    while (i-- > 0)
    29d4:	fef59ae3          	bne	a1,a5,29c8 <number+0x10e>
    29d8:	00190793          	addi	a5,s2,1
    29dc:	00f88833          	add	a6,a7,a5
    while (size-- > 0)
    29e0:	00905a63          	blez	s1,29f4 <number+0x13a>
        *str++ = ' ';
    29e4:	8542                	mv	a0,a6
    29e6:	8626                	mv	a2,s1
    29e8:	02000593          	li	a1,32
    29ec:	045020ef          	jal	5230 <memset>
    29f0:	00950833          	add	a6,a0,s1

    return str;
}
    29f4:	40ba                	lw	ra,140(sp)
    29f6:	442a                	lw	s0,136(sp)
    29f8:	449a                	lw	s1,132(sp)
    29fa:	490a                	lw	s2,128(sp)
    29fc:	59f6                	lw	s3,124(sp)
    29fe:	8542                	mv	a0,a6
    2a00:	6149                	addi	sp,sp,144
    2a02:	8082                	ret
    sign = 0;
    2a04:	4981                	li	s3,0
    2a06:	bf31                	j	2922 <number+0x68>
        while (size-- > 0)
    2a08:	14fd                	addi	s1,s1,-1
    if (sign)
    2a0a:	00098563          	beqz	s3,2a14 <number+0x15a>
        *str++ = sign;
    2a0e:	01388023          	sb	s3,0(a7)
    2a12:	0885                	addi	a7,a7,1
    if (type & HEX_PREP)
    2a14:	000f8863          	beqz	t6,2a24 <number+0x16a>
        if (base == 8)
    2a18:	46a1                	li	a3,8
    2a1a:	0ad30863          	beq	t1,a3,2aca <number+0x210>
        else if (base == 16)
    2a1e:	46c1                	li	a3,16
    2a20:	06d30763          	beq	t1,a3,2a8e <number+0x1d4>
    if (!(type & LEFT))
    2a24:	f80291e3          	bnez	t0,29a6 <number+0xec>
        while (size-- > 0)
    2a28:	0c905c63          	blez	s1,2b00 <number+0x246>
            *str++ = c;
    2a2c:	8626                	mv	a2,s1
    2a2e:	8546                	mv	a0,a7
    2a30:	85fa                	mv	a1,t5
    2a32:	c63a                	sw	a4,12(sp)
    2a34:	c472                	sw	t3,8(sp)
    2a36:	c23e                	sw	a5,4(sp)
    2a38:	7f8020ef          	jal	5230 <memset>
    2a3c:	009508b3          	add	a7,a0,s1
    2a40:	4792                	lw	a5,4(sp)
    2a42:	4e22                	lw	t3,8(sp)
    2a44:	4732                	lw	a4,12(sp)
        while (size-- > 0)
    2a46:	54fd                	li	s1,-1
    2a48:	bfb9                	j	29a6 <number+0xec>
            size--;
    2a4a:	16fd                	addi	a3,a3,-1
            sign = '-';
    2a4c:	02d00993          	li	s3,45
    i = 0;
    2a50:	4781                	li	a5,0
    2a52:	1060                	addi	s0,sp,44
            tmp[i++] = dig[((unsigned long)num) % (unsigned)base];
    2a54:	0265f833          	remu	a6,a1,t1
    2a58:	893e                	mv	s2,a5
    2a5a:	0785                	addi	a5,a5,1
    2a5c:	00f40eb3          	add	t4,s0,a5
    2a60:	8e2e                	mv	t3,a1
    2a62:	982a                	add	a6,a6,a0
    2a64:	00084803          	lbu	a6,0(a6)
            num      = ((unsigned long)num) / (unsigned)base;
    2a68:	0265d5b3          	divu	a1,a1,t1
            tmp[i++] = dig[((unsigned long)num) % (unsigned)base];
    2a6c:	ff0e8fa3          	sb	a6,-1(t4)
        while (num != 0)
    2a70:	fe6e72e3          	bgeu	t3,t1,2a54 <number+0x19a>
    2a74:	bde1                	j	294c <number+0x92>
        *str++ = sign;
    2a76:	01388023          	sb	s3,0(a7)
    2a7a:	0885                	addi	a7,a7,1
    if (type & HEX_PREP)
    2a7c:	f20f82e3          	beqz	t6,29a0 <number+0xe6>
        while (size-- > 0)
    2a80:	54fd                	li	s1,-1
    2a82:	bf59                	j	2a18 <number+0x15e>
            size--;
    2a84:	16fd                	addi	a3,a3,-1
            sign = '+';
    2a86:	02b00993          	li	s3,43
    2a8a:	bd61                	j	2922 <number+0x68>
        while (size-- > 0)
    2a8c:	54fd                	li	s1,-1
            *str++ = '0';
    2a8e:	03000613          	li	a2,48
            *str++ = digits[33];
    2a92:	07800693          	li	a3,120
            *str++ = '0';
    2a96:	00c88023          	sb	a2,0(a7)
            *str++ = digits[33];
    2a9a:	00d880a3          	sb	a3,1(a7)
    2a9e:	0889                	addi	a7,a7,2
    2aa0:	b751                	j	2a24 <number+0x16a>
            num  = -num;
    2aa2:	40b005b3          	neg	a1,a1
    if (type & HEX_PREP)
    2aa6:	fa0f82e3          	beqz	t6,2a4a <number+0x190>
        if (base == 16)
    2aaa:	47c1                	li	a5,16
    2aac:	04f30463          	beq	t1,a5,2af4 <number+0x23a>
        else if (base == 8)
    2ab0:	47a1                	li	a5,8
    2ab2:	02f30263          	beq	t1,a5,2ad6 <number+0x21c>
            size--;
    2ab6:	16fd                	addi	a3,a3,-1
            sign = '-';
    2ab8:	02d00993          	li	s3,45
    if (type & HEX_PREP)
    2abc:	02000f93          	li	t6,32
    2ac0:	bf41                	j	2a50 <number+0x196>
            size -= 2;
    2ac2:	16f9                	addi	a3,a3,-2
    2ac4:	02000f93          	li	t6,32
    2ac8:	bd8d                	j	293a <number+0x80>
            *str++ = '0';
    2aca:	03000693          	li	a3,48
    2ace:	00d88023          	sb	a3,0(a7)
    2ad2:	0885                	addi	a7,a7,1
    2ad4:	bf81                	j	2a24 <number+0x16a>
            size--;
    2ad6:	16f9                	addi	a3,a3,-2
            sign = '-';
    2ad8:	02d00993          	li	s3,45
            size--;
    2adc:	02000f93          	li	t6,32
    2ae0:	bf85                	j	2a50 <number+0x196>
        while (size-- > 0)
    2ae2:	005034b3          	snez	s1,t0
            *str++ = '0';
    2ae6:	03000693          	li	a3,48
    2aea:	00d88023          	sb	a3,0(a7)
        while (size-- > 0)
    2aee:	14f9                	addi	s1,s1,-2
            *str++ = '0';
    2af0:	0885                	addi	a7,a7,1
    2af2:	bd55                	j	29a6 <number+0xec>
            size -= 2;
    2af4:	16f5                	addi	a3,a3,-3
            sign = '-';
    2af6:	02d00993          	li	s3,45
    if (type & HEX_PREP)
    2afa:	02000f93          	li	t6,32
    2afe:	bf89                	j	2a50 <number+0x196>
        while (size-- > 0)
    2b00:	14fd                	addi	s1,s1,-1
    2b02:	b555                	j	29a6 <number+0xec>

00002b04 <printf>:
  neorv32_uart0_putc(c);
}

int
ee_printf(const char *fmt, ...)
{
    2b04:	de010113          	addi	sp,sp,-544
    2b08:	1f312623          	sw	s3,492(sp)
    2b0c:	1f612023          	sw	s6,480(sp)
    2b10:	1e112e23          	sw	ra,508(sp)
    2b14:	1e812c23          	sw	s0,504(sp)
    2b18:	1e912a23          	sw	s1,500(sp)
    2b1c:	1f212823          	sw	s2,496(sp)
    2b20:	20b12223          	sw	a1,516(sp)
    2b24:	20c12423          	sw	a2,520(sp)
    2b28:	20d12623          	sw	a3,524(sp)
    2b2c:	20e12823          	sw	a4,528(sp)
    2b30:	20f12a23          	sw	a5,532(sp)
    2b34:	21012c23          	sw	a6,536(sp)
    2b38:	21112e23          	sw	a7,540(sp)
    for (str = buf; *fmt; fmt++)
    2b3c:	00054783          	lbu	a5,0(a0)
    char    buf[256], *p;
    va_list args;
    int     n = 0;

    va_start(args, fmt);
    2b40:	20410b13          	addi	s6,sp,516
    2b44:	ca5a                	sw	s6,20(sp)
    for (str = buf; *fmt; fmt++)
    2b46:	0c010993          	addi	s3,sp,192
    2b4a:	cba1                	beqz	a5,2b9a <printf+0x96>
    2b4c:	1d712e23          	sw	s7,476(sp)
        switch (*fmt)
    2b50:	6bad                	lui	s7,0xb
    2b52:	1f512223          	sw	s5,484(sp)
    2b56:	1d812c23          	sw	s8,472(sp)
    2b5a:	1f412423          	sw	s4,488(sp)
    2b5e:	1d912a23          	sw	s9,468(sp)
    2b62:	832a                	mv	t1,a0
    2b64:	a68b8b93          	addi	s7,s7,-1432 # aa68 <intpat+0x228>
        if (*fmt != '%')
    2b68:	02500c13          	li	s8,37
        switch (*fmt)
    2b6c:	4ac1                	li	s5,16
        if (is_digit(*fmt))
    2b6e:	4925                	li	s2,9
        if (*fmt == '.')
    2b70:	02e00493          	li	s1,46
        if (*fmt != '%')
    2b74:	09878c63          	beq	a5,s8,2c0c <printf+0x108>
            *str++ = *fmt;
    2b78:	00f98023          	sb	a5,0(s3)
    for (str = buf; *fmt; fmt++)
    2b7c:	00134783          	lbu	a5,1(t1)
            *str++ = *fmt;
    2b80:	0985                	addi	s3,s3,1
            continue;
    2b82:	0305                	addi	t1,t1,1
    for (str = buf; *fmt; fmt++)
    2b84:	fbe5                	bnez	a5,2b74 <printf+0x70>
    2b86:	1e812a03          	lw	s4,488(sp)
    2b8a:	1e412a83          	lw	s5,484(sp)
    2b8e:	1dc12b83          	lw	s7,476(sp)
    2b92:	1d812c03          	lw	s8,472(sp)
    2b96:	1d412c83          	lw	s9,468(sp)
    *str = '\0';
    2b9a:	00098023          	sb	zero,0(s3)
    ee_vsprintf(buf, fmt, args);
    va_end(args);
    p = buf;
    while (*p)
    2b9e:	0c014403          	lbu	s0,192(sp)
    int     n = 0;
    2ba2:	4501                	li	a0,0
    while (*p)
    2ba4:	c429                	beqz	s0,2bee <printf+0xea>
  if (c == '\n') {
    2ba6:	4929                	li	s2,10
    p = buf;
    2ba8:	0184                	addi	s1,sp,192
  if (c == '\n') {
    2baa:	01240f63          	beq	s0,s2,2bc8 <printf+0xc4>
  neorv32_uart0_putc(c);
    2bae:	85a2                	mv	a1,s0
    2bb0:	fff50537          	lui	a0,0xfff50
    2bb4:	6ac010ef          	jal	4260 <neorv32_uart_putc>
    while (*p)
    2bb8:	0014c403          	lbu	s0,1(s1)
    {
        uart_send_char(*p);
        n++;
        p++;
    2bbc:	00148793          	addi	a5,s1,1
    while (*p)
    2bc0:	c01d                	beqz	s0,2be6 <printf+0xe2>
    2bc2:	84be                	mv	s1,a5
  if (c == '\n') {
    2bc4:	ff2415e3          	bne	s0,s2,2bae <printf+0xaa>
    neorv32_uart0_putc('\r');
    2bc8:	45b5                	li	a1,13
    2bca:	fff50537          	lui	a0,0xfff50
    2bce:	692010ef          	jal	4260 <neorv32_uart_putc>
  neorv32_uart0_putc(c);
    2bd2:	85a2                	mv	a1,s0
    2bd4:	fff50537          	lui	a0,0xfff50
    2bd8:	688010ef          	jal	4260 <neorv32_uart_putc>
    while (*p)
    2bdc:	0014c403          	lbu	s0,1(s1)
        p++;
    2be0:	00148793          	addi	a5,s1,1
    while (*p)
    2be4:	fc79                	bnez	s0,2bc2 <printf+0xbe>
        n++;
    2be6:	019c                	addi	a5,sp,192
    2be8:	40f48533          	sub	a0,s1,a5
    2bec:	0505                	addi	a0,a0,1 # fff50001 <__crt0_stack_top+0x7ff40001>
    }

    return n;
}
    2bee:	1fc12083          	lw	ra,508(sp)
    2bf2:	1f812403          	lw	s0,504(sp)
    2bf6:	1f412483          	lw	s1,500(sp)
    2bfa:	1f012903          	lw	s2,496(sp)
    2bfe:	1ec12983          	lw	s3,492(sp)
    2c02:	1e012b03          	lw	s6,480(sp)
    2c06:	22010113          	addi	sp,sp,544
    2c0a:	8082                	ret
        flags = 0;
    2c0c:	4781                	li	a5,0
        switch (*fmt)
    2c0e:	00134603          	lbu	a2,1(t1)
        fmt++; // This also skips first '%'
    2c12:	00130413          	addi	s0,t1,1
        switch (*fmt)
    2c16:	fe060713          	addi	a4,a2,-32
    2c1a:	0ff77713          	zext.b	a4,a4
    2c1e:	00eae663          	bltu	s5,a4,2c2a <printf+0x126>
    2c22:	070a                	slli	a4,a4,0x2
    2c24:	975e                	add	a4,a4,s7
    2c26:	4318                	lw	a4,0(a4)
    2c28:	8702                	jr	a4
        if (is_digit(*fmt))
    2c2a:	fd060713          	addi	a4,a2,-48
    2c2e:	0ff77713          	zext.b	a4,a4
    2c32:	0ce97f63          	bgeu	s2,a4,2d10 <printf+0x20c>
        else if (*fmt == '*')
    2c36:	02a00713          	li	a4,42
        field_width = -1;
    2c3a:	5a7d                	li	s4,-1
        else if (*fmt == '*')
    2c3c:	0ee60d63          	beq	a2,a4,2d36 <printf+0x232>
        precision = -1;
    2c40:	587d                	li	a6,-1
        if (*fmt == '.')
    2c42:	0a960563          	beq	a2,s1,2cec <printf+0x1e8>
        if (*fmt == 'l' || *fmt == 'L')
    2c46:	0df67713          	andi	a4,a2,223
    2c4a:	04c00693          	li	a3,76
    2c4e:	08d71063          	bne	a4,a3,2cce <printf+0x1ca>
            qualifier = *fmt;
    2c52:	85b2                	mv	a1,a2
        switch (*fmt)
    2c54:	00144603          	lbu	a2,1(s0)
    2c58:	03700693          	li	a3,55
            fmt++;
    2c5c:	00140c93          	addi	s9,s0,1
        switch (*fmt)
    2c60:	fbf60713          	addi	a4,a2,-65
    2c64:	0ff77713          	zext.b	a4,a4
    2c68:	02e6ed63          	bltu	a3,a4,2ca2 <printf+0x19e>
    2c6c:	66ad                	lui	a3,0xb
    2c6e:	070a                	slli	a4,a4,0x2
    2c70:	aac68693          	addi	a3,a3,-1364 # aaac <intpat+0x26c>
    2c74:	9736                	add	a4,a4,a3
    2c76:	4318                	lw	a4,0(a4)
    2c78:	8702                	jr	a4
                flags |= ZEROPAD;
    2c7a:	0017e793          	ori	a5,a5,1
    for (str = buf; *fmt; fmt++)
    2c7e:	8322                	mv	t1,s0
    2c80:	b779                	j	2c0e <printf+0x10a>
                flags |= LEFT;
    2c82:	0107e793          	ori	a5,a5,16
    for (str = buf; *fmt; fmt++)
    2c86:	8322                	mv	t1,s0
    2c88:	b759                	j	2c0e <printf+0x10a>
                flags |= PLUS;
    2c8a:	0047e793          	ori	a5,a5,4
    for (str = buf; *fmt; fmt++)
    2c8e:	8322                	mv	t1,s0
    2c90:	bfbd                	j	2c0e <printf+0x10a>
                flags |= HEX_PREP;
    2c92:	0207e793          	ori	a5,a5,32
    for (str = buf; *fmt; fmt++)
    2c96:	8322                	mv	t1,s0
    2c98:	bf9d                	j	2c0e <printf+0x10a>
                flags |= SPACE;
    2c9a:	0087e793          	ori	a5,a5,8
    for (str = buf; *fmt; fmt++)
    2c9e:	8322                	mv	t1,s0
    2ca0:	b7bd                	j	2c0e <printf+0x10a>
        switch (*fmt)
    2ca2:	8466                	mv	s0,s9
                if (*fmt != '%')
    2ca4:	02500793          	li	a5,37
    2ca8:	00f60963          	beq	a2,a5,2cba <printf+0x1b6>
                    *str++ = '%';
    2cac:	00f98023          	sb	a5,0(s3)
                if (*fmt)
    2cb0:	00044603          	lbu	a2,0(s0)
    2cb4:	0985                	addi	s3,s3,1
    2cb6:	ec0608e3          	beqz	a2,2b86 <printf+0x82>
                    *str++ = *fmt;
    2cba:	00c98023          	sb	a2,0(s3)
    for (str = buf; *fmt; fmt++)
    2cbe:	00144783          	lbu	a5,1(s0)
                    *str++ = *fmt;
    2cc2:	0985                	addi	s3,s3,1
    for (str = buf; *fmt; fmt++)
    2cc4:	00140313          	addi	t1,s0,1
    2cc8:	ea0796e3          	bnez	a5,2b74 <printf+0x70>
    2ccc:	bd6d                	j	2b86 <printf+0x82>
        switch (*fmt)
    2cce:	fbf60713          	addi	a4,a2,-65
    2cd2:	0ff77713          	zext.b	a4,a4
    2cd6:	03700693          	li	a3,55
    2cda:	fce6e5e3          	bltu	a3,a4,2ca4 <printf+0x1a0>
    2cde:	66ad                	lui	a3,0xb
    2ce0:	070a                	slli	a4,a4,0x2
    2ce2:	b8c68693          	addi	a3,a3,-1140 # ab8c <intpat+0x34c>
    2ce6:	9736                	add	a4,a4,a3
    2ce8:	4318                	lw	a4,0(a4)
    2cea:	8702                	jr	a4
            if (is_digit(*fmt))
    2cec:	00144603          	lbu	a2,1(s0)
    2cf0:	45a5                	li	a1,9
            ++fmt;
    2cf2:	00140693          	addi	a3,s0,1
            if (is_digit(*fmt))
    2cf6:	fd060713          	addi	a4,a2,-48
    2cfa:	0ff77713          	zext.b	a4,a4
    2cfe:	06e5fd63          	bgeu	a1,a4,2d78 <printf+0x274>
            else if (*fmt == '*')
    2d02:	02a00713          	li	a4,42
    2d06:	0ae60163          	beq	a2,a4,2da8 <printf+0x2a4>
            ++fmt;
    2d0a:	8436                	mv	s0,a3
                precision = 0;
    2d0c:	4801                	li	a6,0
    2d0e:	bf25                	j	2c46 <printf+0x142>
    int i = 0;
    2d10:	4a01                	li	s4,0
    while (is_digit(**s))
    2d12:	45a5                	li	a1,9
        i = i * 10 + *((*s)++) - '0';
    2d14:	002a1693          	slli	a3,s4,0x2
    2d18:	96d2                	add	a3,a3,s4
    2d1a:	0405                	addi	s0,s0,1
    2d1c:	0686                	slli	a3,a3,0x1
    2d1e:	96b2                	add	a3,a3,a2
    while (is_digit(**s))
    2d20:	00044603          	lbu	a2,0(s0)
        i = i * 10 + *((*s)++) - '0';
    2d24:	fd068a13          	addi	s4,a3,-48
    while (is_digit(**s))
    2d28:	fd060713          	addi	a4,a2,-48
    2d2c:	0ff77713          	zext.b	a4,a4
    2d30:	fee5f2e3          	bgeu	a1,a4,2d14 <printf+0x210>
    2d34:	b731                	j	2c40 <printf+0x13c>
            field_width = va_arg(args, int);
    2d36:	000b2a03          	lw	s4,0(s6)
        if (*fmt == '.')
    2d3a:	00234603          	lbu	a2,2(t1)
            fmt++;
    2d3e:	00230413          	addi	s0,t1,2
            if (field_width < 0)
    2d42:	000a4463          	bltz	s4,2d4a <printf+0x246>
            field_width = va_arg(args, int);
    2d46:	0b11                	addi	s6,s6,4
    2d48:	bde5                	j	2c40 <printf+0x13c>
                field_width = -field_width;
    2d4a:	41400a33          	neg	s4,s4
                flags |= LEFT;
    2d4e:	0107e793          	ori	a5,a5,16
            field_width = va_arg(args, int);
    2d52:	0b11                	addi	s6,s6,4
    2d54:	b5f5                	j	2c40 <printf+0x13c>
        switch (*fmt)
    2d56:	8ca2                	mv	s9,s0
        base = 10;
    2d58:	4629                	li	a2,10
            num = va_arg(args, unsigned int);
    2d5a:	000b2583          	lw	a1,0(s6)
    2d5e:	0b11                	addi	s6,s6,4
        str = number(str, num, base, field_width, precision, flags);
    2d60:	854e                	mv	a0,s3
    2d62:	8742                	mv	a4,a6
    2d64:	86d2                	mv	a3,s4
    2d66:	3e91                	jal	28ba <number>
    for (str = buf; *fmt; fmt++)
    2d68:	001cc783          	lbu	a5,1(s9)
        str = number(str, num, base, field_width, precision, flags);
    2d6c:	89aa                	mv	s3,a0
    for (str = buf; *fmt; fmt++)
    2d6e:	001c8313          	addi	t1,s9,1
    2d72:	e00791e3          	bnez	a5,2b74 <printf+0x70>
    2d76:	bd01                	j	2b86 <printf+0x82>
    int i = 0;
    2d78:	4801                	li	a6,0
        i = i * 10 + *((*s)++) - '0';
    2d7a:	00281713          	slli	a4,a6,0x2
    2d7e:	9742                	add	a4,a4,a6
    2d80:	0685                	addi	a3,a3,1
    2d82:	0706                	slli	a4,a4,0x1
    2d84:	9732                	add	a4,a4,a2
    while (is_digit(**s))
    2d86:	0006c603          	lbu	a2,0(a3)
        i = i * 10 + *((*s)++) - '0';
    2d8a:	fd070813          	addi	a6,a4,-48
    while (is_digit(**s))
    2d8e:	fd060713          	addi	a4,a2,-48
    2d92:	0ff77713          	zext.b	a4,a4
    2d96:	fee5f2e3          	bgeu	a1,a4,2d7a <printf+0x276>
            if (precision < 0)
    2d9a:	fff84713          	not	a4,a6
    2d9e:	877d                	srai	a4,a4,0x1f
    2da0:	8436                	mv	s0,a3
    2da2:	00e87833          	and	a6,a6,a4
    2da6:	b545                	j	2c46 <printf+0x142>
    2da8:	000b2803          	lw	a6,0(s6)
        if (*fmt == 'l' || *fmt == 'L')
    2dac:	00244603          	lbu	a2,2(s0)
                precision = va_arg(args, int);
    2db0:	0b11                	addi	s6,s6,4
            if (precision < 0)
    2db2:	fff84713          	not	a4,a6
    2db6:	877d                	srai	a4,a4,0x1f
    2db8:	00e87833          	and	a6,a6,a4
                ++fmt;
    2dbc:	0409                	addi	s0,s0,2
            if (precision < 0)
    2dbe:	b561                	j	2c46 <printf+0x142>
        if (qualifier == 'l')
    2dc0:	06c00713          	li	a4,108
                flags |= SIGN;
    2dc4:	0027e793          	ori	a5,a5,2
        base = 10;
    2dc8:	4629                	li	a2,10
        if (qualifier == 'l')
    2dca:	f8e588e3          	beq	a1,a4,2d5a <printf+0x256>
    2dce:	a021                	j	2dd6 <printf+0x2d2>
                flags |= SIGN;
    2dd0:	0027e793          	ori	a5,a5,2
    2dd4:	8ca2                	mv	s9,s0
            num = va_arg(args, int);
    2dd6:	000b2583          	lw	a1,0(s6)
        base = 10;
    2dda:	4629                	li	a2,10
            num = va_arg(args, int);
    2ddc:	0b11                	addi	s6,s6,4
    2dde:	b749                	j	2d60 <printf+0x25c>
        switch (*fmt)
    2de0:	8466                	mv	s0,s9
                s = va_arg(args, char *);
    2de2:	000b2883          	lw	a7,0(s6)
    2de6:	0b11                	addi	s6,s6,4
                if (!s)
    2de8:	66088463          	beqz	a7,3450 <printf+0x94c>
    for (sc = s; *sc != '\0' && count--; ++sc)
    2dec:	0008c703          	lbu	a4,0(a7)
                if (!(flags & LEFT))
    2df0:	8bc1                	andi	a5,a5,16
    for (sc = s; *sc != '\0' && count--; ++sc)
    2df2:	12070ee3          	beqz	a4,372e <printf+0xc2a>
    2df6:	9846                	add	a6,a6,a7
    2df8:	8746                	mv	a4,a7
    2dfa:	00e80763          	beq	a6,a4,2e08 <printf+0x304>
    2dfe:	00174683          	lbu	a3,1(a4)
    2e02:	0705                	addi	a4,a4,1
    2e04:	fafd                	bnez	a3,2dfa <printf+0x2f6>
    2e06:	883a                	mv	a6,a4
    return sc - s;
    2e08:	41180cb3          	sub	s9,a6,a7
                if (!(flags & LEFT))
    2e0c:	68078163          	beqz	a5,348e <printf+0x98a>
                for (i = 0; i < len; ++i)
    2e10:	07905c63          	blez	s9,2e88 <printf+0x384>
    2e14:	fffc8793          	addi	a5,s9,-1
    2e18:	4719                	li	a4,6
    2e1a:	0af77be3          	bgeu	a4,a5,36d0 <printf+0xbcc>
    2e1e:	41198733          	sub	a4,s3,a7
    2e22:	177d                	addi	a4,a4,-1
    2e24:	0138e6b3          	or	a3,a7,s3
    2e28:	00373713          	sltiu	a4,a4,3
    2e2c:	8a8d                	andi	a3,a3,3
    2e2e:	00173713          	seqz	a4,a4
    2e32:	0016b693          	seqz	a3,a3
    2e36:	8ef9                	and	a3,a3,a4
    2e38:	87c6                	mv	a5,a7
    2e3a:	874e                	mv	a4,s3
    2e3c:	08068ae3          	beqz	a3,36d0 <printf+0xbcc>
    2e40:	ffccf593          	andi	a1,s9,-4
    2e44:	01158633          	add	a2,a1,a7
                    *str++ = *s++;
    2e48:	4394                	lw	a3,0(a5)
    2e4a:	0791                	addi	a5,a5,4
    2e4c:	0711                	addi	a4,a4,4
    2e4e:	fed72e23          	sw	a3,-4(a4)
                for (i = 0; i < len; ++i)
    2e52:	fef61be3          	bne	a2,a5,2e48 <printf+0x344>
    2e56:	019987b3          	add	a5,s3,s9
    2e5a:	03958663          	beq	a1,s9,2e86 <printf+0x382>
                    *str++ = *s++;
    2e5e:	00064683          	lbu	a3,0(a2)
    2e62:	99ae                	add	s3,s3,a1
                for (i = 0; i < len; ++i)
    2e64:	00158713          	addi	a4,a1,1
                    *str++ = *s++;
    2e68:	00d98023          	sb	a3,0(s3)
                for (i = 0; i < len; ++i)
    2e6c:	01975d63          	bge	a4,s9,2e86 <printf+0x382>
                    *str++ = *s++;
    2e70:	00164703          	lbu	a4,1(a2)
                for (i = 0; i < len; ++i)
    2e74:	0589                	addi	a1,a1,2
                    *str++ = *s++;
    2e76:	00e980a3          	sb	a4,1(s3)
                for (i = 0; i < len; ++i)
    2e7a:	0195d663          	bge	a1,s9,2e86 <printf+0x382>
                    *str++ = *s++;
    2e7e:	00264703          	lbu	a4,2(a2)
    2e82:	00e98123          	sb	a4,2(s3)
                for (i = 0; i < len; ++i)
    2e86:	89be                	mv	s3,a5
    for (str = buf; *fmt; fmt++)
    2e88:	00140313          	addi	t1,s0,1
                while (len < field_width--)
    2e8c:	0b4cd8e3          	bge	s9,s4,373c <printf+0xc38>
                    *str++ = ' ';
    2e90:	419a0cb3          	sub	s9,s4,s9
    2e94:	854e                	mv	a0,s3
    2e96:	8666                	mv	a2,s9
    2e98:	02000593          	li	a1,32
    2e9c:	c01a                	sw	t1,0(sp)
    2e9e:	392020ef          	jal	5230 <memset>
    for (str = buf; *fmt; fmt++)
    2ea2:	00144783          	lbu	a5,1(s0)
    2ea6:	4302                	lw	t1,0(sp)
    2ea8:	99e6                	add	s3,s3,s9
    2eaa:	cc0795e3          	bnez	a5,2b74 <printf+0x70>
    2eae:	b9e1                	j	2b86 <printf+0x82>
        switch (*fmt)
    2eb0:	8466                	mv	s0,s9
                if (!(flags & LEFT))
    2eb2:	8bc1                	andi	a5,a5,16
                    str = eaddr(str,
    2eb4:	004b0c93          	addi	s9,s6,4
    for (str = buf; *fmt; fmt++)
    2eb8:	00140313          	addi	t1,s0,1
                if (!(flags & LEFT))
    2ebc:	58078f63          	beqz	a5,345a <printf+0x956>
                *str++ = (unsigned char)va_arg(args, int);
    2ec0:	000b2683          	lw	a3,0(s6)
                while (--field_width > 0)
    2ec4:	4705                	li	a4,1
                *str++ = (unsigned char)va_arg(args, int);
    2ec6:	00d98023          	sb	a3,0(s3)
                while (--field_width > 0)
    2eca:	15475ce3          	bge	a4,s4,3822 <printf+0xd1e>
                    *str++ = ' ';
    2ece:	1a7d                	addi	s4,s4,-1
    2ed0:	00e98533          	add	a0,s3,a4
    2ed4:	8652                	mv	a2,s4
    2ed6:	02000593          	li	a1,32
    2eda:	c01a                	sw	t1,0(sp)
    2edc:	354020ef          	jal	5230 <memset>
    for (str = buf; *fmt; fmt++)
    2ee0:	00144783          	lbu	a5,1(s0)
    2ee4:	4302                	lw	t1,0(sp)
    2ee6:	014509b3          	add	s3,a0,s4
                *str++ = (unsigned char)va_arg(args, int);
    2eea:	8b66                	mv	s6,s9
    for (str = buf; *fmt; fmt++)
    2eec:	c80794e3          	bnez	a5,2b74 <printf+0x70>
    2ef0:	b959                	j	2b86 <printf+0x82>
        switch (*fmt)
    2ef2:	8ca2                	mv	s9,s0
                base = 8;
    2ef4:	4621                	li	a2,8
    2ef6:	b595                	j	2d5a <printf+0x256>
        switch (*fmt)
    2ef8:	8466                	mv	s0,s9
                if (field_width == -1)
    2efa:	577d                	li	a4,-1
    2efc:	00ea1563          	bne	s4,a4,2f06 <printf+0x402>
                    flags |= ZEROPAD;
    2f00:	0017e793          	ori	a5,a5,1
                    field_width = 2 * sizeof(void *);
    2f04:	4a21                	li	s4,8
                str = number(str,
    2f06:	000b2583          	lw	a1,0(s6)
    2f0a:	854e                	mv	a0,s3
    2f0c:	8742                	mv	a4,a6
    2f0e:	86d2                	mv	a3,s4
    2f10:	4641                	li	a2,16
    2f12:	3265                	jal	28ba <number>
    for (str = buf; *fmt; fmt++)
    2f14:	00144783          	lbu	a5,1(s0)
                             (unsigned long)va_arg(args, void *),
    2f18:	0b11                	addi	s6,s6,4
                str = number(str,
    2f1a:	89aa                	mv	s3,a0
    for (str = buf; *fmt; fmt++)
    2f1c:	00140313          	addi	t1,s0,1
    2f20:	c4079ae3          	bnez	a5,2b74 <printf+0x70>
    2f24:	b18d                	j	2b86 <printf+0x82>
        switch (*fmt)
    2f26:	8ca2                	mv	s9,s0
                base = 16;
    2f28:	4641                	li	a2,16
    2f2a:	bd05                	j	2d5a <printf+0x256>
                if (qualifier == 'l')
    2f2c:	06c00713          	li	a4,108
                flags |= UPPERCASE;
    2f30:	0407e793          	ori	a5,a5,64
                if (qualifier == 'l')
    2f34:	28e58263          	beq	a1,a4,31b8 <printf+0x6b4>
    2f38:	1da12823          	sw	s10,464(sp)
                    str = iaddr(str,
    2f3c:	000b2303          	lw	t1,0(s6)
    2f40:	0b11                	addi	s6,s6,4
        n = addr[i];
    2f42:	00034f03          	lbu	t5,0(t1)
        if (n == 0)
    2f46:	3c0f0263          	beqz	t5,330a <printf+0x806>
            if (n >= 100)
    2f4a:	06300713          	li	a4,99
    2f4e:	49e75163          	bge	a4,t5,33d0 <printf+0x8cc>
                tmp[len++] = digits[n / 100];
    2f52:	51eb86b7          	lui	a3,0x51eb8
    2f56:	51f68693          	addi	a3,a3,1311 # 51eb851f <__neorv32_ram_size+0x51ea851f>
    2f5a:	02df36b3          	mulhu	a3,t5,a3
                n          = n % 100;
    2f5e:	06400293          	li	t0,100
                tmp[len++] = digits[n / 100];
    2f62:	6729                	lui	a4,0xa
    2f64:	48470713          	addi	a4,a4,1156 # a484 <__fini_array_end+0x754>
                tmp[len++] = digits[n / 10];
    2f68:	ccccdeb7          	lui	t4,0xccccd
    2f6c:	ccde8e93          	addi	t4,t4,-819 # cccccccd <__crt0_stack_top+0x4ccbcccd>
                n          = n % 10;
    2f70:	4425                	li	s0,9
    2f72:	4621                	li	a2,8
    2f74:	451d                	li	a0,7
    2f76:	4899                	li	a7,6
                tmp[len++] = digits[n / 100];
    2f78:	8295                	srli	a3,a3,0x5
                n          = n % 100;
    2f7a:	025682b3          	mul	t0,a3,t0
                tmp[len++] = digits[n / 100];
    2f7e:	96ba                	add	a3,a3,a4
    2f80:	0006c683          	lbu	a3,0(a3)
                n          = n % 10;
    2f84:	4e15                	li	t3,5
    2f86:	4591                	li	a1,4
                tmp[len++] = digits[n / 100];
    2f88:	06d10823          	sb	a3,112(sp)
                n          = n % 10;
    2f8c:	480d                	li	a6,3
                tmp[len++] = digits[n / 10];
    2f8e:	4f89                	li	t6,2
                n          = n % 100;
    2f90:	405f02b3          	sub	t0,t5,t0
                tmp[len++] = digits[n / 10];
    2f94:	03d2b6b3          	mulhu	a3,t0,t4
    2f98:	828d                	srli	a3,a3,0x3
                n          = n % 10;
    2f9a:	00269f13          	slli	t5,a3,0x2
    2f9e:	9f36                	add	t5,t5,a3
                tmp[len++] = digits[n / 10];
    2fa0:	96ba                	add	a3,a3,a4
    2fa2:	0006c683          	lbu	a3,0(a3)
                n          = n % 10;
    2fa6:	0f06                	slli	t5,t5,0x1
    2fa8:	41e28f33          	sub	t5,t0,t5
                tmp[len++] = digits[n / 10];
    2fac:	06d108a3          	sb	a3,113(sp)
            tmp[len++] = digits[n];
    2fb0:	9f3a                	add	t5,t5,a4
    2fb2:	000f4703          	lbu	a4,0(t5)
    2fb6:	9f8a                	add	t6,t6,sp
    2fb8:	06ef8823          	sb	a4,112(t6)
            tmp[len++] = '.';
    2fbc:	002806b3          	add	a3,a6,sp
    2fc0:	02e00713          	li	a4,46
    2fc4:	06e68823          	sb	a4,112(a3)
        n = addr[i];
    2fc8:	00134683          	lbu	a3,1(t1)
        if (n == 0)
    2fcc:	32068963          	beqz	a3,32fe <printf+0x7fa>
            if (n >= 100)
    2fd0:	06300713          	li	a4,99
    2fd4:	3ad75a63          	bge	a4,a3,3388 <printf+0x884>
                tmp[len++] = digits[n / 100];
    2fd8:	51eb8eb7          	lui	t4,0x51eb8
    2fdc:	51fe8e93          	addi	t4,t4,1311 # 51eb851f <__neorv32_ram_size+0x51ea851f>
    2fe0:	03d6beb3          	mulhu	t4,a3,t4
    2fe4:	00258fb3          	add	t6,a1,sp
                n          = n % 100;
    2fe8:	06400293          	li	t0,100
                tmp[len++] = digits[n / 10];
    2fec:	85c6                	mv	a1,a7
                tmp[len++] = digits[n / 10];
    2fee:	88b2                	mv	a7,a2
                tmp[len++] = digits[n / 100];
    2ff0:	6729                	lui	a4,0xa
    2ff2:	48470713          	addi	a4,a4,1156 # a484 <__fini_array_end+0x754>
                tmp[len++] = digits[n / 10];
    2ff6:	002e0f33          	add	t5,t3,sp
                tmp[len++] = digits[n / 10];
    2ffa:	8e2a                	mv	t3,a0
    2ffc:	8522                	mv	a0,s0
                tmp[len++] = digits[n / 100];
    2ffe:	005ed613          	srli	a2,t4,0x5
                n          = n % 100;
    3002:	025602b3          	mul	t0,a2,t0
                tmp[len++] = digits[n / 100];
    3006:	963a                	add	a2,a2,a4
    3008:	00064603          	lbu	a2,0(a2)
                tmp[len++] = digits[n / 10];
    300c:	ccccdeb7          	lui	t4,0xccccd
    3010:	ccde8e93          	addi	t4,t4,-819 # cccccccd <__crt0_stack_top+0x4ccbcccd>
                tmp[len++] = digits[n / 100];
    3014:	06cf8823          	sb	a2,112(t6)
                tmp[len++] = digits[n / 10];
    3018:	00880413          	addi	s0,a6,8
    301c:	00780613          	addi	a2,a6,7
                n          = n % 100;
    3020:	40568833          	sub	a6,a3,t0
                tmp[len++] = digits[n / 10];
    3024:	03d836b3          	mulhu	a3,a6,t4
    3028:	828d                	srli	a3,a3,0x3
    302a:	00d70eb3          	add	t4,a4,a3
    302e:	000ecf83          	lbu	t6,0(t4)
                n          = n % 10;
    3032:	00269e93          	slli	t4,a3,0x2
    3036:	96f6                	add	a3,a3,t4
    3038:	0686                	slli	a3,a3,0x1
                tmp[len++] = digits[n / 10];
    303a:	07ff0823          	sb	t6,112(t5)
                n          = n % 10;
    303e:	40d806b3          	sub	a3,a6,a3
            tmp[len++] = digits[n];
    3042:	96ba                	add	a3,a3,a4
    3044:	0006c703          	lbu	a4,0(a3)
    3048:	958a                	add	a1,a1,sp
    304a:	06e58823          	sb	a4,112(a1)
            tmp[len++] = '.';
    304e:	002e06b3          	add	a3,t3,sp
    3052:	02e00713          	li	a4,46
    3056:	06e68823          	sb	a4,112(a3)
        n = addr[i];
    305a:	00234683          	lbu	a3,2(t1)
        if (n == 0)
    305e:	28068963          	beqz	a3,32f0 <printf+0x7ec>
            if (n >= 100)
    3062:	06300713          	li	a4,99
    3066:	2ed75163          	bge	a4,a3,3348 <printf+0x844>
                tmp[len++] = digits[n / 100];
    306a:	51eb85b7          	lui	a1,0x51eb8
    306e:	51f58593          	addi	a1,a1,1311 # 51eb851f <__neorv32_ram_size+0x51ea851f>
    3072:	02b6b5b3          	mulhu	a1,a3,a1
    3076:	00288fb3          	add	t6,a7,sp
                n          = n % 100;
    307a:	06400813          	li	a6,100
                tmp[len++] = digits[n / 10];
    307e:	88b2                	mv	a7,a2
    3080:	ccccdf37          	lui	t5,0xccccd
    3084:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__crt0_stack_top+0x4ccbcccd>
                tmp[len++] = digits[n / 100];
    3088:	6729                	lui	a4,0xa
    308a:	48470713          	addi	a4,a4,1156 # a484 <__fini_array_end+0x754>
                tmp[len++] = digits[n / 10];
    308e:	00250eb3          	add	t4,a0,sp
                tmp[len++] = digits[n / 10];
    3092:	8522                	mv	a0,s0
                tmp[len++] = digits[n / 100];
    3094:	0055d613          	srli	a2,a1,0x5
                n          = n % 100;
    3098:	030605b3          	mul	a1,a2,a6
                tmp[len++] = digits[n / 100];
    309c:	963a                	add	a2,a2,a4
    309e:	00064603          	lbu	a2,0(a2)
                tmp[len++] = digits[n / 10];
    30a2:	006e0413          	addi	s0,t3,6
                tmp[len++] = digits[n / 100];
    30a6:	06cf8823          	sb	a2,112(t6)
                tmp[len++] = digits[n / 10];
    30aa:	005e0613          	addi	a2,t3,5
                n          = n % 100;
    30ae:	40b685b3          	sub	a1,a3,a1
                tmp[len++] = digits[n / 10];
    30b2:	03e5b6b3          	mulhu	a3,a1,t5
    30b6:	828d                	srli	a3,a3,0x3
    30b8:	00d70833          	add	a6,a4,a3
    30bc:	00084e03          	lbu	t3,0(a6)
                n          = n % 10;
    30c0:	00269813          	slli	a6,a3,0x2
    30c4:	96c2                	add	a3,a3,a6
    30c6:	0686                	slli	a3,a3,0x1
                tmp[len++] = digits[n / 10];
    30c8:	07ce8823          	sb	t3,112(t4)
                n          = n % 10;
    30cc:	40d586b3          	sub	a3,a1,a3
            tmp[len++] = digits[n];
    30d0:	96ba                	add	a3,a3,a4
    30d2:	0006c683          	lbu	a3,0(a3)
    30d6:	00288733          	add	a4,a7,sp
    30da:	06d70823          	sb	a3,112(a4)
            tmp[len++] = '.';
    30de:	02e00693          	li	a3,46
    30e2:	00250733          	add	a4,a0,sp
    30e6:	06d70823          	sb	a3,112(a4)
        n = addr[i];
    30ea:	00334683          	lbu	a3,3(t1)
        if (n == 0)
    30ee:	1e068b63          	beqz	a3,32e4 <printf+0x7e0>
            if (n >= 100)
    30f2:	06300713          	li	a4,99
    30f6:	30d75f63          	bge	a4,a3,3414 <printf+0x910>
                tmp[len++] = digits[n / 100];
    30fa:	51eb85b7          	lui	a1,0x51eb8
    30fe:	51f58593          	addi	a1,a1,1311 # 51eb851f <__neorv32_ram_size+0x51ea851f>
    3102:	02b6b5b3          	mulhu	a1,a3,a1
                n          = n % 100;
    3106:	06400893          	li	a7,100
                tmp[len++] = digits[n / 100];
    310a:	6729                	lui	a4,0xa
    310c:	48470713          	addi	a4,a4,1156 # a484 <__fini_array_end+0x754>
    3110:	960a                	add	a2,a2,sp
                tmp[len++] = digits[n / 10];
    3112:	ccccd837          	lui	a6,0xccccd
    3116:	ccd80813          	addi	a6,a6,-819 # cccccccd <__crt0_stack_top+0x4ccbcccd>
    311a:	00240333          	add	t1,s0,sp
            tmp[len++] = digits[n];
    311e:	00450413          	addi	s0,a0,4
                tmp[len++] = digits[n / 100];
    3122:	8195                	srli	a1,a1,0x5
                n          = n % 100;
    3124:	031588b3          	mul	a7,a1,a7
                tmp[len++] = digits[n / 100];
    3128:	95ba                	add	a1,a1,a4
    312a:	0005c583          	lbu	a1,0(a1)
    312e:	06b60823          	sb	a1,112(a2)
                tmp[len++] = digits[n / 10];
    3132:	00350613          	addi	a2,a0,3
                n          = n % 100;
    3136:	411685b3          	sub	a1,a3,a7
                tmp[len++] = digits[n / 10];
    313a:	0305b6b3          	mulhu	a3,a1,a6
    313e:	828d                	srli	a3,a3,0x3
    3140:	00d70533          	add	a0,a4,a3
    3144:	00054803          	lbu	a6,0(a0)
                n          = n % 10;
    3148:	00269513          	slli	a0,a3,0x2
    314c:	96aa                	add	a3,a3,a0
    314e:	0686                	slli	a3,a3,0x1
                tmp[len++] = digits[n / 10];
    3150:	07030823          	sb	a6,112(t1)
                n          = n % 10;
    3154:	40d586b3          	sub	a3,a1,a3
            tmp[len++] = digits[n];
    3158:	96ba                	add	a3,a3,a4
    315a:	0006c703          	lbu	a4,0(a3)
    315e:	960a                	add	a2,a2,sp
    3160:	06e60823          	sb	a4,112(a2)
    if (!(type & LEFT))
    3164:	8bc1                	andi	a5,a5,16
    3166:	ef91                	bnez	a5,3182 <printf+0x67e>
        while (len < size--)
    3168:	5f445a63          	bge	s0,s4,375c <printf+0xc58>
            *str++ = ' ';
    316c:	408a0a33          	sub	s4,s4,s0
    3170:	8652                	mv	a2,s4
    3172:	854e                	mv	a0,s3
    3174:	02000593          	li	a1,32
    3178:	99d2                	add	s3,s3,s4
    317a:	0b6020ef          	jal	5230 <memset>
    317e:	fff40a13          	addi	s4,s0,-1
        *str++ = tmp[i];
    3182:	854e                	mv	a0,s3
    3184:	8622                	mv	a2,s0
    3186:	188c                	addi	a1,sp,112
    3188:	8d4e                	mv	s10,s3
    318a:	182020ef          	jal	530c <memcpy>
    318e:	99a2                	add	s3,s3,s0
    while (len < size--)
    3190:	01445b63          	bge	s0,s4,31a6 <printf+0x6a2>
        *str++ = ' ';
    3194:	854e                	mv	a0,s3
    3196:	408a0633          	sub	a2,s4,s0
    319a:	02000593          	li	a1,32
    319e:	092020ef          	jal	5230 <memset>
    31a2:	014d09b3          	add	s3,s10,s4
    for (str = buf; *fmt; fmt++)
    31a6:	001cc783          	lbu	a5,1(s9)
    31aa:	1d012d03          	lw	s10,464(sp)
    31ae:	001c8313          	addi	t1,s9,1
    31b2:	9c0791e3          	bnez	a5,2b74 <printf+0x70>
    31b6:	bac1                	j	2b86 <printf+0x82>
        dig = upper_digits;
    31b8:	6729                	lui	a4,0xa
                    str = eaddr(str,
    31ba:	000b2603          	lw	a2,0(s6)
        dig = upper_digits;
    31be:	4ac70713          	addi	a4,a4,1196 # a4ac <__fini_array_end+0x77c>
                    str = eaddr(str,
    31c2:	0b11                	addi	s6,s6,4
        tmp[len++] = dig[addr[i] >> 4];
    31c4:	00064683          	lbu	a3,0(a2)
            tmp[len++] = ':';
    31c8:	03a00593          	li	a1,58
    31cc:	06b10923          	sb	a1,114(sp)
        tmp[len++] = dig[addr[i] >> 4];
    31d0:	0046d513          	srli	a0,a3,0x4
        tmp[len++] = dig[addr[i] & 0x0F];
    31d4:	8abd                	andi	a3,a3,15
        tmp[len++] = dig[addr[i] >> 4];
    31d6:	953a                	add	a0,a0,a4
        tmp[len++] = dig[addr[i] & 0x0F];
    31d8:	96ba                	add	a3,a3,a4
        tmp[len++] = dig[addr[i] >> 4];
    31da:	00054503          	lbu	a0,0(a0)
        tmp[len++] = dig[addr[i] & 0x0F];
    31de:	0006c683          	lbu	a3,0(a3)
    if (!(type & LEFT))
    31e2:	8bc1                	andi	a5,a5,16
        tmp[len++] = dig[addr[i] >> 4];
    31e4:	06a10823          	sb	a0,112(sp)
        tmp[len++] = dig[addr[i] & 0x0F];
    31e8:	06d108a3          	sb	a3,113(sp)
        tmp[len++] = dig[addr[i] >> 4];
    31ec:	00164683          	lbu	a3,1(a2)
            tmp[len++] = ':';
    31f0:	06b10aa3          	sb	a1,117(sp)
        tmp[len++] = dig[addr[i] >> 4];
    31f4:	0046d513          	srli	a0,a3,0x4
        tmp[len++] = dig[addr[i] & 0x0F];
    31f8:	8abd                	andi	a3,a3,15
        tmp[len++] = dig[addr[i] >> 4];
    31fa:	953a                	add	a0,a0,a4
        tmp[len++] = dig[addr[i] & 0x0F];
    31fc:	96ba                	add	a3,a3,a4
        tmp[len++] = dig[addr[i] >> 4];
    31fe:	00054503          	lbu	a0,0(a0)
        tmp[len++] = dig[addr[i] & 0x0F];
    3202:	0006c683          	lbu	a3,0(a3)
        tmp[len++] = dig[addr[i] >> 4];
    3206:	06a109a3          	sb	a0,115(sp)
        tmp[len++] = dig[addr[i] & 0x0F];
    320a:	06d10a23          	sb	a3,116(sp)
        tmp[len++] = dig[addr[i] >> 4];
    320e:	00264683          	lbu	a3,2(a2)
            tmp[len++] = ':';
    3212:	06b10c23          	sb	a1,120(sp)
        tmp[len++] = dig[addr[i] >> 4];
    3216:	0046d513          	srli	a0,a3,0x4
        tmp[len++] = dig[addr[i] & 0x0F];
    321a:	8abd                	andi	a3,a3,15
        tmp[len++] = dig[addr[i] >> 4];
    321c:	953a                	add	a0,a0,a4
        tmp[len++] = dig[addr[i] & 0x0F];
    321e:	96ba                	add	a3,a3,a4
        tmp[len++] = dig[addr[i] >> 4];
    3220:	00054503          	lbu	a0,0(a0)
        tmp[len++] = dig[addr[i] & 0x0F];
    3224:	0006c683          	lbu	a3,0(a3)
        tmp[len++] = dig[addr[i] >> 4];
    3228:	06a10b23          	sb	a0,118(sp)
        tmp[len++] = dig[addr[i] & 0x0F];
    322c:	06d10ba3          	sb	a3,119(sp)
        tmp[len++] = dig[addr[i] >> 4];
    3230:	00364683          	lbu	a3,3(a2)
            tmp[len++] = ':';
    3234:	06b10da3          	sb	a1,123(sp)
        tmp[len++] = dig[addr[i] >> 4];
    3238:	0046d513          	srli	a0,a3,0x4
        tmp[len++] = dig[addr[i] & 0x0F];
    323c:	8abd                	andi	a3,a3,15
        tmp[len++] = dig[addr[i] >> 4];
    323e:	953a                	add	a0,a0,a4
        tmp[len++] = dig[addr[i] & 0x0F];
    3240:	96ba                	add	a3,a3,a4
    3242:	0006c683          	lbu	a3,0(a3)
        tmp[len++] = dig[addr[i] >> 4];
    3246:	00054503          	lbu	a0,0(a0)
        tmp[len++] = dig[addr[i] & 0x0F];
    324a:	06d10d23          	sb	a3,122(sp)
        tmp[len++] = dig[addr[i] >> 4];
    324e:	06a10ca3          	sb	a0,121(sp)
    3252:	00464683          	lbu	a3,4(a2)
            tmp[len++] = ':';
    3256:	06b10f23          	sb	a1,126(sp)
        tmp[len++] = dig[addr[i] >> 4];
    325a:	0046d593          	srli	a1,a3,0x4
        tmp[len++] = dig[addr[i] & 0x0F];
    325e:	8abd                	andi	a3,a3,15
        tmp[len++] = dig[addr[i] >> 4];
    3260:	95ba                	add	a1,a1,a4
        tmp[len++] = dig[addr[i] & 0x0F];
    3262:	96ba                	add	a3,a3,a4
    3264:	0006c683          	lbu	a3,0(a3)
        tmp[len++] = dig[addr[i] >> 4];
    3268:	0005c583          	lbu	a1,0(a1)
        tmp[len++] = dig[addr[i] & 0x0F];
    326c:	06d10ea3          	sb	a3,125(sp)
        tmp[len++] = dig[addr[i] >> 4];
    3270:	06b10e23          	sb	a1,124(sp)
    3274:	00564683          	lbu	a3,5(a2)
    3278:	0046d613          	srli	a2,a3,0x4
    327c:	963a                	add	a2,a2,a4
    327e:	00064603          	lbu	a2,0(a2)
        tmp[len++] = dig[addr[i] & 0x0F];
    3282:	8abd                	andi	a3,a3,15
    3284:	9736                	add	a4,a4,a3
        tmp[len++] = dig[addr[i] >> 4];
    3286:	06c10fa3          	sb	a2,127(sp)
        tmp[len++] = dig[addr[i] & 0x0F];
    328a:	00074703          	lbu	a4,0(a4)
    328e:	08e10023          	sb	a4,128(sp)
    if (!(type & LEFT))
    3292:	ebc9                	bnez	a5,3324 <printf+0x820>
        while (len < size--)
    3294:	4cc5                	li	s9,17
    3296:	094cd663          	bge	s9,s4,3322 <printf+0x81e>
            *str++ = ' ';
    329a:	fefa0613          	addi	a2,s4,-17
    329e:	02000593          	li	a1,32
    32a2:	854e                	mv	a0,s3
    32a4:	19bd                	addi	s3,s3,-17
    32a6:	78b010ef          	jal	5230 <memset>
    32aa:	99d2                	add	s3,s3,s4
        *str++ = tmp[i];
    32ac:	854e                	mv	a0,s3
    32ae:	8666                	mv	a2,s9
    32b0:	188c                	addi	a1,sp,112
    32b2:	05a020ef          	jal	530c <memcpy>
    32b6:	09c5                	addi	s3,s3,17
    for (str = buf; *fmt; fmt++)
    32b8:	00244783          	lbu	a5,2(s0)
    32bc:	00240313          	addi	t1,s0,2
    32c0:	8a079ae3          	bnez	a5,2b74 <printf+0x70>
    32c4:	b0c9                	j	2b86 <printf+0x82>
                flags |= UPPERCASE;
    32c6:	0407e793          	ori	a5,a5,64
                base = 16;
    32ca:	4641                	li	a2,16
    32cc:	b479                	j	2d5a <printf+0x256>
                if (qualifier == 'l')
    32ce:	06c00713          	li	a4,108
    32d2:	c6e593e3          	bne	a1,a4,2f38 <printf+0x434>
    char *dig = digits;
    32d6:	6729                	lui	a4,0xa
                    str = eaddr(str,
    32d8:	000b2603          	lw	a2,0(s6)
    char *dig = digits;
    32dc:	48470713          	addi	a4,a4,1156 # a484 <__fini_array_end+0x754>
                    str = eaddr(str,
    32e0:	0b11                	addi	s6,s6,4
    32e2:	b5cd                	j	31c4 <printf+0x6c0>
            tmp[len++] = digits[0];
    32e4:	960a                	add	a2,a2,sp
    32e6:	03000713          	li	a4,48
    32ea:	06e60823          	sb	a4,112(a2)
    32ee:	bd9d                	j	3164 <printf+0x660>
    32f0:	00288733          	add	a4,a7,sp
    32f4:	03000693          	li	a3,48
    32f8:	06d70823          	sb	a3,112(a4)
    32fc:	b3cd                	j	30de <printf+0x5da>
    32fe:	958a                	add	a1,a1,sp
    3300:	03000713          	li	a4,48
    3304:	06e58823          	sb	a4,112(a1)
    3308:	b399                	j	304e <printf+0x54a>
    330a:	03000713          	li	a4,48
    330e:	06e10823          	sb	a4,112(sp)
    3312:	441d                	li	s0,7
    3314:	4619                	li	a2,6
    3316:	4515                	li	a0,5
    3318:	4891                	li	a7,4
    331a:	4e0d                	li	t3,3
    331c:	4589                	li	a1,2
    331e:	4805                	li	a6,1
    3320:	b971                	j	2fbc <printf+0x4b8>
                    while (--field_width > 0)
    3322:	1a7d                	addi	s4,s4,-1
        *str++ = tmp[i];
    3324:	4cc5                	li	s9,17
    3326:	854e                	mv	a0,s3
    3328:	8666                	mv	a2,s9
    332a:	188c                	addi	a1,sp,112
    332c:	7e1010ef          	jal	530c <memcpy>
    3330:	99e6                	add	s3,s3,s9
    while (len < size--)
    3332:	f94cd3e3          	bge	s9,s4,32b8 <printf+0x7b4>
        *str++ = ' ';
    3336:	1a3d                	addi	s4,s4,-17
    3338:	854e                	mv	a0,s3
    333a:	8652                	mv	a2,s4
    333c:	02000593          	li	a1,32
    3340:	6f1010ef          	jal	5230 <memset>
    3344:	99d2                	add	s3,s3,s4
    3346:	bf8d                	j	32b8 <printf+0x7b4>
            else if (n >= 10)
    3348:	6729                	lui	a4,0xa
    334a:	45a5                	li	a1,9
    334c:	48470713          	addi	a4,a4,1156 # a484 <__fini_array_end+0x754>
    3350:	d8d5d0e3          	bge	a1,a3,30d0 <printf+0x5cc>
                tmp[len++] = digits[n / 10];
    3354:	ccccd5b7          	lui	a1,0xccccd
    3358:	ccd58593          	addi	a1,a1,-819 # cccccccd <__crt0_stack_top+0x4ccbcccd>
    335c:	02b6b5b3          	mulhu	a1,a3,a1
    3360:	00288eb3          	add	t4,a7,sp
    3364:	88aa                	mv	a7,a0
            tmp[len++] = '.';
    3366:	8532                	mv	a0,a2
    3368:	8622                	mv	a2,s0
    336a:	005e0413          	addi	s0,t3,5
                tmp[len++] = digits[n / 10];
    336e:	818d                	srli	a1,a1,0x3
    3370:	00b70833          	add	a6,a4,a1
    3374:	00084e03          	lbu	t3,0(a6)
                n          = n % 10;
    3378:	00259813          	slli	a6,a1,0x2
    337c:	95c2                	add	a1,a1,a6
    337e:	0586                	slli	a1,a1,0x1
                tmp[len++] = digits[n / 10];
    3380:	07ce8823          	sb	t3,112(t4)
                n          = n % 10;
    3384:	8e8d                	sub	a3,a3,a1
    3386:	b3a9                	j	30d0 <printf+0x5cc>
            else if (n >= 10)
    3388:	6729                	lui	a4,0xa
    338a:	4ea5                	li	t4,9
    338c:	48470713          	addi	a4,a4,1156 # a484 <__fini_array_end+0x754>
    3390:	caded9e3          	bge	t4,a3,3042 <printf+0x53e>
                tmp[len++] = digits[n / 10];
    3394:	ccccdeb7          	lui	t4,0xccccd
    3398:	ccde8e93          	addi	t4,t4,-819 # cccccccd <__crt0_stack_top+0x4ccbcccd>
    339c:	03d6beb3          	mulhu	t4,a3,t4
    33a0:	00258f33          	add	t5,a1,sp
    33a4:	85f2                	mv	a1,t3
                tmp[len++] = digits[n / 10];
    33a6:	8e46                	mv	t3,a7
    33a8:	88aa                	mv	a7,a0
    33aa:	8532                	mv	a0,a2
    33ac:	8622                	mv	a2,s0
    33ae:	00780413          	addi	s0,a6,7
                tmp[len++] = digits[n / 10];
    33b2:	003ed813          	srli	a6,t4,0x3
    33b6:	01070eb3          	add	t4,a4,a6
    33ba:	000ecf83          	lbu	t6,0(t4)
                n          = n % 10;
    33be:	00281e93          	slli	t4,a6,0x2
    33c2:	9876                	add	a6,a6,t4
    33c4:	0806                	slli	a6,a6,0x1
                tmp[len++] = digits[n / 10];
    33c6:	07ff0823          	sb	t6,112(t5)
                n          = n % 10;
    33ca:	410686b3          	sub	a3,a3,a6
    33ce:	b995                	j	3042 <printf+0x53e>
            else if (n >= 10)
    33d0:	4725                	li	a4,9
    33d2:	0de75e63          	bge	a4,t5,34ae <printf+0x9aa>
                tmp[len++] = digits[n / 10];
    33d6:	ccccd6b7          	lui	a3,0xccccd
    33da:	ccd68693          	addi	a3,a3,-819 # cccccccd <__crt0_stack_top+0x4ccbcccd>
    33de:	02df36b3          	mulhu	a3,t5,a3
    33e2:	6729                	lui	a4,0xa
    33e4:	48470713          	addi	a4,a4,1156 # a484 <__fini_array_end+0x754>
                n          = n % 10;
    33e8:	4421                	li	s0,8
    33ea:	461d                	li	a2,7
    33ec:	4519                	li	a0,6
    33ee:	4895                	li	a7,5
    33f0:	4e11                	li	t3,4
    33f2:	458d                	li	a1,3
    33f4:	4809                	li	a6,2
                tmp[len++] = digits[n / 10];
    33f6:	828d                	srli	a3,a3,0x3
                n          = n % 10;
    33f8:	00269e93          	slli	t4,a3,0x2
    33fc:	9eb6                	add	t4,t4,a3
                tmp[len++] = digits[n / 10];
    33fe:	96ba                	add	a3,a3,a4
    3400:	0006cf83          	lbu	t6,0(a3)
                n          = n % 10;
    3404:	001e9693          	slli	a3,t4,0x1
    3408:	40df0f33          	sub	t5,t5,a3
                tmp[len++] = digits[n / 10];
    340c:	07f10823          	sb	t6,112(sp)
    3410:	4f85                	li	t6,1
    3412:	be79                	j	2fb0 <printf+0x4ac>
            else if (n >= 10)
    3414:	6729                	lui	a4,0xa
    3416:	45a5                	li	a1,9
    3418:	48470713          	addi	a4,a4,1156 # a484 <__fini_array_end+0x754>
    341c:	d2d5dee3          	bge	a1,a3,3158 <printf+0x654>
                tmp[len++] = digits[n / 10];
    3420:	ccccd5b7          	lui	a1,0xccccd
    3424:	ccd58593          	addi	a1,a1,-819 # cccccccd <__crt0_stack_top+0x4ccbcccd>
    3428:	02b6b5b3          	mulhu	a1,a3,a1
    342c:	00260833          	add	a6,a2,sp
    3430:	8622                	mv	a2,s0
                tmp[len++] = digits[n / 10];
    3432:	00350413          	addi	s0,a0,3
                tmp[len++] = digits[n / 10];
    3436:	818d                	srli	a1,a1,0x3
    3438:	00b70533          	add	a0,a4,a1
    343c:	00054883          	lbu	a7,0(a0)
                n          = n % 10;
    3440:	00259513          	slli	a0,a1,0x2
    3444:	95aa                	add	a1,a1,a0
    3446:	0586                	slli	a1,a1,0x1
                tmp[len++] = digits[n / 10];
    3448:	07180823          	sb	a7,112(a6)
                n          = n % 10;
    344c:	8e8d                	sub	a3,a3,a1
    344e:	b329                	j	3158 <printf+0x654>
                    s = "<NULL>";
    3450:	68a9                	lui	a7,0xa
                if (!(flags & LEFT))
    3452:	8bc1                	andi	a5,a5,16
                    s = "<NULL>";
    3454:	4d488893          	addi	a7,a7,1236 # a4d4 <__fini_array_end+0x7a4>
    3458:	ba79                	j	2df6 <printf+0x2f2>
                    while (--field_width > 0)
    345a:	4785                	li	a5,1
    345c:	1f47da63          	bge	a5,s4,3650 <printf+0xb4c>
                        *str++ = ' ';
    3460:	854e                	mv	a0,s3
    3462:	fffa0613          	addi	a2,s4,-1
    3466:	02000593          	li	a1,32
    346a:	c01a                	sw	t1,0(sp)
    346c:	5c5010ef          	jal	5230 <memset>
                *str++ = (unsigned char)va_arg(args, int);
    3470:	000b2783          	lw	a5,0(s6)
    3474:	19fd                	addi	s3,s3,-1
    3476:	4302                	lw	t1,0(sp)
    3478:	99d2                	add	s3,s3,s4
    347a:	00f98023          	sb	a5,0(s3)
    347e:	0985                	addi	s3,s3,1
    for (str = buf; *fmt; fmt++)
    3480:	00144783          	lbu	a5,1(s0)
                *str++ = (unsigned char)va_arg(args, int);
    3484:	8b66                	mv	s6,s9
    for (str = buf; *fmt; fmt++)
    3486:	ee079763          	bnez	a5,2b74 <printf+0x70>
    348a:	efcff06f          	j	2b86 <printf+0x82>
                    while (len < field_width--)
    348e:	394cd763          	bge	s9,s4,381c <printf+0xd18>
                        *str++ = ' ';
    3492:	419a0a33          	sub	s4,s4,s9
    3496:	8652                	mv	a2,s4
    3498:	854e                	mv	a0,s3
    349a:	02000593          	li	a1,32
    349e:	c046                	sw	a7,0(sp)
    34a0:	591010ef          	jal	5230 <memset>
    34a4:	99d2                	add	s3,s3,s4
    34a6:	4882                	lw	a7,0(sp)
    34a8:	fffc8a13          	addi	s4,s9,-1
    34ac:	b295                	j	2e10 <printf+0x30c>
    34ae:	6729                	lui	a4,0xa
    34b0:	48470713          	addi	a4,a4,1156 # a484 <__fini_array_end+0x754>
            else if (n >= 10)
    34b4:	441d                	li	s0,7
    34b6:	4619                	li	a2,6
    34b8:	4515                	li	a0,5
    34ba:	4891                	li	a7,4
    34bc:	4e0d                	li	t3,3
    34be:	4589                	li	a1,2
    34c0:	4805                	li	a6,1
    34c2:	4f81                	li	t6,0
    34c4:	b4f5                	j	2fb0 <printf+0x4ac>
    34c6:	1da12823          	sw	s10,464(sp)
    34ca:	1db12623          	sw	s11,460(sp)
        switch (*fmt)
    34ce:	8466                	mv	s0,s9
                str = flt(str,
    34d0:	007b0713          	addi	a4,s6,7
    c    = (flags & ZEROPAD) ? '0' : ' ';
    34d4:	0017f693          	andi	a3,a5,1
                str = flt(str,
    34d8:	9b61                	andi	a4,a4,-8
    c    = (flags & ZEROPAD) ? '0' : ' ';
    34da:	16fd                	addi	a3,a3,-1
                str = flt(str,
    34dc:	00072303          	lw	t1,0(a4)
    34e0:	00472883          	lw	a7,4(a4)
    c    = (flags & ZEROPAD) ? '0' : ' ';
    34e4:	ff06f613          	andi	a2,a3,-16
                str = flt(str,
    34e8:	00870b13          	addi	s6,a4,8
    if (flags & LEFT)
    34ec:	0107f713          	andi	a4,a5,16
    c    = (flags & ZEROPAD) ? '0' : ' ';
    34f0:	03060d13          	addi	s10,a2,48
                str = flt(str,
    34f4:	0027ec93          	ori	s9,a5,2
    if (flags & LEFT)
    34f8:	c719                	beqz	a4,3506 <printf+0xa02>
        flags &= ~ZEROPAD;
    34fa:	ffe7fc93          	andi	s9,a5,-2
    34fe:	002cec93          	ori	s9,s9,2
    c    = (flags & ZEROPAD) ? '0' : ' ';
    3502:	02000d13          	li	s10,32
        if (num < 0.0)
    3506:	851a                	mv	a0,t1
    3508:	85c6                	mv	a1,a7
    350a:	4601                	li	a2,0
    350c:	4681                	li	a3,0
    350e:	c442                	sw	a6,8(sp)
    3510:	c21a                	sw	t1,4(sp)
    3512:	c046                	sw	a7,0(sp)
    3514:	48c050ef          	jal	89a0 <__ledf2>
    3518:	4882                	lw	a7,0(sp)
    351a:	4312                	lw	t1,4(sp)
    351c:	4822                	lw	a6,8(sp)
    351e:	18054263          	bltz	a0,36a2 <printf+0xb9e>
        else if (flags & PLUS)
    3522:	004cf793          	andi	a5,s9,4
    3526:	18078663          	beqz	a5,36b2 <printf+0xbae>
            size--;
    352a:	1a7d                	addi	s4,s4,-1
            sign = '+';
    352c:	02b00d93          	li	s11,43
    if (precision < 0)
    3530:	57fd                	li	a5,-1
    3532:	00f81363          	bne	a6,a5,3538 <printf+0xa34>
        precision = 6; // Default precision: 6
    3536:	4819                	li	a6,6
        digits = fcvtbuf(value, precision, &decpt, &sign, cvtbuf);
    3538:	189c                	addi	a5,sp,112
    353a:	0878                	addi	a4,sp,28
    353c:	0834                	addi	a3,sp,24
    353e:	8642                	mv	a2,a6
    3540:	851a                	mv	a0,t1
    3542:	85c6                	mv	a1,a7
    3544:	c042                	sw	a6,0(sp)
    3546:	b70ff0ef          	jal	28b6 <fcvtbuf>
        if (sign)
    354a:	4772                	lw	a4,28(sp)
    354c:	4802                	lw	a6,0(sp)
        digits = fcvtbuf(value, precision, &decpt, &sign, cvtbuf);
    354e:	86aa                	mv	a3,a0
        if (sign)
    3550:	101c                	addi	a5,sp,32
    3552:	c719                	beqz	a4,3560 <printf+0xa5c>
            *buffer++ = '-';
    3554:	02d00793          	li	a5,45
    3558:	02f10023          	sb	a5,32(sp)
    355c:	02110793          	addi	a5,sp,33
        if (*digits)
    3560:	0006c703          	lbu	a4,0(a3)
    3564:	1e070e63          	beqz	a4,3760 <printf+0xc5c>
            if (decpt <= 0)
    3568:	48e2                	lw	a7,24(sp)
    356a:	00168593          	addi	a1,a3,1
                        *buffer++ = '.';
    356e:	02e00513          	li	a0,46
            if (decpt <= 0)
    3572:	27105563          	blez	a7,37dc <printf+0xcd8>
                    if (pos++ == decpt)
    3576:	40d58633          	sub	a2,a1,a3
    357a:	167d                	addi	a2,a2,-1
                while (*digits)
    357c:	0585                	addi	a1,a1,1
                    if (pos++ == decpt)
    357e:	1cc88563          	beq	a7,a2,3748 <printf+0xc44>
                    *buffer++ = *digits++;
    3582:	00e78023          	sb	a4,0(a5)
                while (*digits)
    3586:	fff5c703          	lbu	a4,-1(a1)
                    *buffer++ = *digits++;
    358a:	0785                	addi	a5,a5,1
                while (*digits)
    358c:	f76d                	bnez	a4,3576 <printf+0xa72>
    *buffer = '\0';
    358e:	00078023          	sb	zero,0(a5)
    if ((flags & HEX_PREP) && precision == 0)
    3592:	020cf793          	andi	a5,s9,32
    while (*buffer)
    3596:	02014703          	lbu	a4,32(sp)
    if ((flags & HEX_PREP) && precision == 0)
    359a:	c399                	beqz	a5,35a0 <printf+0xa9c>
    359c:	14080e63          	beqz	a6,36f8 <printf+0xbf4>
    for (sc = s; *sc != '\0' && count--; ++sc)
    35a0:	4781                	li	a5,0
    35a2:	cf09                	beqz	a4,35bc <printf+0xab8>
    35a4:	1010                	addi	a2,sp,32
    while (*buffer)
    35a6:	87b2                	mv	a5,a2
    for (sc = s; *sc != '\0' && count--; ++sc)
    35a8:	1214                	addi	a3,sp,288
    35aa:	0017c703          	lbu	a4,1(a5)
    35ae:	0785                	addi	a5,a5,1
    35b0:	c319                	beqz	a4,35b6 <printf+0xab2>
    35b2:	fed79ce3          	bne	a5,a3,35aa <printf+0xaa6>
    return sc - s;
    35b6:	8f91                	sub	a5,a5,a2
    size -= n;
    35b8:	40fa0a33          	sub	s4,s4,a5
    if (!(flags & (ZEROPAD | LEFT)))
    35bc:	011cf713          	andi	a4,s9,17
    35c0:	e745                	bnez	a4,3668 <printf+0xb64>
        while (size-- > 0)
    35c2:	21405663          	blez	s4,37ce <printf+0xcca>
            *str++ = ' ';
    35c6:	8652                	mv	a2,s4
    35c8:	02000593          	li	a1,32
    35cc:	854e                	mv	a0,s3
    35ce:	c03e                	sw	a5,0(sp)
    35d0:	461010ef          	jal	5230 <memset>
    if (sign)
    35d4:	4782                	lw	a5,0(sp)
    35d6:	9a4e                	add	s4,s4,s3
    35d8:	0e0d8663          	beqz	s11,36c4 <printf+0xbc0>
        *str++ = sign;
    35dc:	01ba0023          	sb	s11,0(s4)
    35e0:	001a0993          	addi	s3,s4,1
        while (size-- > 0)
    35e4:	5a7d                	li	s4,-1
        while (size-- > 0)
    35e6:	1a7d                	addi	s4,s4,-1
    for (i = 0; i < n; i++)
    35e8:	00f05a63          	blez	a5,35fc <printf+0xaf8>
        *str++ = tmp[i];
    35ec:	863e                	mv	a2,a5
    35ee:	854e                	mv	a0,s3
    35f0:	100c                	addi	a1,sp,32
    35f2:	c03e                	sw	a5,0(sp)
    35f4:	519010ef          	jal	530c <memcpy>
    35f8:	4782                	lw	a5,0(sp)
    35fa:	99be                	add	s3,s3,a5
    while (size-- > 0)
    35fc:	01405963          	blez	s4,360e <printf+0xb0a>
        *str++ = ' ';
    3600:	854e                	mv	a0,s3
    3602:	8652                	mv	a2,s4
    3604:	02000593          	li	a1,32
    3608:	429010ef          	jal	5230 <memset>
    360c:	99d2                	add	s3,s3,s4
    for (str = buf; *fmt; fmt++)
    360e:	00144783          	lbu	a5,1(s0)
                continue;
    3612:	1d012d03          	lw	s10,464(sp)
    3616:	1cc12d83          	lw	s11,460(sp)
    for (str = buf; *fmt; fmt++)
    361a:	00140313          	addi	t1,s0,1
    361e:	d4079b63          	bnez	a5,2b74 <printf+0x70>
    3622:	d64ff06f          	j	2b86 <printf+0x82>
    3626:	1da12823          	sw	s10,464(sp)
        switch (*fmt)
    362a:	8ca2                	mv	s9,s0
    362c:	ba01                	j	2f3c <printf+0x438>
    362e:	1da12823          	sw	s10,464(sp)
    3632:	1db12623          	sw	s11,460(sp)
    3636:	bd69                	j	34d0 <printf+0x9cc>
                flags |= UPPERCASE;
    3638:	0407e793          	ori	a5,a5,64
    363c:	8ca2                	mv	s9,s0
                base = 16;
    363e:	4641                	li	a2,16
    3640:	f1aff06f          	j	2d5a <printf+0x256>
    3644:	1da12823          	sw	s10,464(sp)
                flags |= UPPERCASE;
    3648:	0407e793          	ori	a5,a5,64
    364c:	8ca2                	mv	s9,s0
    364e:	b0fd                	j	2f3c <printf+0x438>
                *str++ = (unsigned char)va_arg(args, int);
    3650:	000b2783          	lw	a5,0(s6)
    3654:	0985                	addi	s3,s3,1
    3656:	8b66                	mv	s6,s9
    3658:	fef98fa3          	sb	a5,-1(s3)
    for (str = buf; *fmt; fmt++)
    365c:	00144783          	lbu	a5,1(s0)
    3660:	d0079a63          	bnez	a5,2b74 <printf+0x70>
    3664:	d22ff06f          	j	2b86 <printf+0x82>
    if (sign)
    3668:	000d8563          	beqz	s11,3672 <printf+0xb6e>
        *str++ = sign;
    366c:	01b98023          	sb	s11,0(s3)
    3670:	0985                	addi	s3,s3,1
    if (!(flags & LEFT))
    3672:	010cfc93          	andi	s9,s9,16
    3676:	f60c99e3          	bnez	s9,35e8 <printf+0xae4>
        while (size-- > 0)
    367a:	f74056e3          	blez	s4,35e6 <printf+0xae2>
            *str++ = c;
    367e:	854e                	mv	a0,s3
    3680:	85ea                	mv	a1,s10
    3682:	8652                	mv	a2,s4
    3684:	c03e                	sw	a5,0(sp)
    3686:	3ab010ef          	jal	5230 <memset>
    for (i = 0; i < n; i++)
    368a:	4782                	lw	a5,0(sp)
    368c:	99d2                	add	s3,s3,s4
    368e:	f8f050e3          	blez	a5,360e <printf+0xb0a>
        *str++ = tmp[i];
    3692:	863e                	mv	a2,a5
    3694:	854e                	mv	a0,s3
    3696:	100c                	addi	a1,sp,32
    3698:	475010ef          	jal	530c <memcpy>
    369c:	4782                	lw	a5,0(sp)
    369e:	99be                	add	s3,s3,a5
    while (size-- > 0)
    36a0:	b7bd                	j	360e <printf+0xb0a>
            num  = -num;
    36a2:	800007b7          	lui	a5,0x80000
            size--;
    36a6:	1a7d                	addi	s4,s4,-1
            num  = -num;
    36a8:	00f8c8b3          	xor	a7,a7,a5
            sign = '-';
    36ac:	02d00d93          	li	s11,45
    36b0:	b541                	j	3530 <printf+0xa2c>
        else if (flags & SPACE)
    36b2:	008cf793          	andi	a5,s9,8
    sign = 0;
    36b6:	4d81                	li	s11,0
        else if (flags & SPACE)
    36b8:	e6078ce3          	beqz	a5,3530 <printf+0xa2c>
            size--;
    36bc:	1a7d                	addi	s4,s4,-1
            sign = ' ';
    36be:	02000d93          	li	s11,32
    36c2:	b5bd                	j	3530 <printf+0xa2c>
    for (i = 0; i < n; i++)
    36c4:	89d2                	mv	s3,s4
    36c6:	f4f054e3          	blez	a5,360e <printf+0xb0a>
        *str++ = tmp[i];
    36ca:	863e                	mv	a2,a5
    36cc:	c03e                	sw	a5,0(sp)
    36ce:	b7d9                	j	3694 <printf+0xb90>
    36d0:	019987b3          	add	a5,s3,s9
                    *str++ = *s++;
    36d4:	0008c703          	lbu	a4,0(a7)
    36d8:	0985                	addi	s3,s3,1
    36da:	0885                	addi	a7,a7,1
    36dc:	fee98fa3          	sb	a4,-1(s3)
                for (i = 0; i < len; ++i)
    36e0:	fef99ae3          	bne	s3,a5,36d4 <printf+0xbd0>
    36e4:	fa2ff06f          	j	2e86 <printf+0x382>
    *buffer = '\0';
    36e8:	000780a3          	sb	zero,1(a5) # 80000001 <__malloc_av_+0x1>
    if ((flags & HEX_PREP) && precision == 0)
    36ec:	020cf793          	andi	a5,s9,32
    while (*buffer)
    36f0:	02014703          	lbu	a4,32(sp)
    if ((flags & HEX_PREP) && precision == 0)
    36f4:	ea0786e3          	beqz	a5,35a0 <printf+0xa9c>
    while (*buffer)
    36f8:	12070763          	beqz	a4,3826 <printf+0xd22>
    36fc:	1010                	addi	a2,sp,32
    36fe:	87b2                	mv	a5,a2
        if (*buffer == '.')
    3700:	02e00593          	li	a1,46
        if (*buffer == 'e' || *buffer == 'E')
    3704:	04500693          	li	a3,69
        if (*buffer == '.')
    3708:	e8b70fe3          	beq	a4,a1,35a6 <printf+0xaa2>
        if (*buffer == 'e' || *buffer == 'E')
    370c:	0df77713          	andi	a4,a4,223
    3710:	08d70063          	beq	a4,a3,3790 <printf+0xc8c>
    while (*buffer)
    3714:	0017c703          	lbu	a4,1(a5)
        buffer++;
    3718:	0785                	addi	a5,a5,1
    while (*buffer)
    371a:	f77d                	bnez	a4,3708 <printf+0xc04>
        *buffer++ = '.';
    371c:	02e00713          	li	a4,46
    3720:	00e78023          	sb	a4,0(a5)
    for (sc = s; *sc != '\0' && count--; ++sc)
    3724:	02014703          	lbu	a4,32(sp)
        *buffer   = '\0';
    3728:	000780a3          	sb	zero,1(a5)
    if (fmt == 'g' && !(flags & HEX_PREP))
    372c:	bd95                	j	35a0 <printf+0xa9c>
    return sc - s;
    372e:	4c81                	li	s9,0
                if (!(flags & LEFT))
    3730:	f4079c63          	bnez	a5,2e88 <printf+0x384>
    for (str = buf; *fmt; fmt++)
    3734:	00140313          	addi	t1,s0,1
                    while (len < field_width--)
    3738:	d5404de3          	bgtz	s4,3492 <printf+0x98e>
    for (str = buf; *fmt; fmt++)
    373c:	00144783          	lbu	a5,1(s0)
    3740:	c2079a63          	bnez	a5,2b74 <printf+0x70>
    3744:	c42ff06f          	j	2b86 <printf+0x82>
                    *buffer++ = *digits++;
    3748:	00e780a3          	sb	a4,1(a5)
                while (*digits)
    374c:	fff5c703          	lbu	a4,-1(a1)
                        *buffer++ = '.';
    3750:	00a78023          	sb	a0,0(a5)
                    *buffer++ = *digits++;
    3754:	0789                	addi	a5,a5,2
                while (*digits)
    3756:	e20710e3          	bnez	a4,3576 <printf+0xa72>
    375a:	bd15                	j	358e <printf+0xa8a>
                    while (--field_width > 0)
    375c:	1a7d                	addi	s4,s4,-1
    375e:	b415                	j	3182 <printf+0x67e>
            *buffer++ = '0';
    3760:	03000593          	li	a1,48
    3764:	00b78023          	sb	a1,0(a5)
            if (precision > 0)
    3768:	f80800e3          	beqz	a6,36e8 <printf+0xbe4>
                *buffer++ = '.';
    376c:	02e00693          	li	a3,46
                    *buffer++ = '0';
    3770:	8642                	mv	a2,a6
    3772:	00278513          	addi	a0,a5,2
                *buffer++ = '.';
    3776:	00d780a3          	sb	a3,1(a5)
                    *buffer++ = '0';
    377a:	c042                	sw	a6,0(sp)
    377c:	2b5010ef          	jal	5230 <memset>
    3780:	4802                	lw	a6,0(sp)
    3782:	01050733          	add	a4,a0,a6
    *buffer = '\0';
    3786:	00070023          	sb	zero,0(a4)
    while (*buffer)
    378a:	02014703          	lbu	a4,32(sp)
    378e:	bd09                	j	35a0 <printf+0xa9c>
    for (sc = s; *sc != '\0' && count--; ++sc)
    3790:	0007c683          	lbu	a3,0(a5)
    3794:	10078613          	addi	a2,a5,256
    3798:	873e                	mv	a4,a5
    379a:	c29d                	beqz	a3,37c0 <printf+0xcbc>
    379c:	00174683          	lbu	a3,1(a4)
    37a0:	0705                	addi	a4,a4,1
    37a2:	c299                	beqz	a3,37a8 <printf+0xca4>
    37a4:	fee61ce3          	bne	a2,a4,379c <printf+0xc98>
    return sc - s;
    37a8:	40f70633          	sub	a2,a4,a5
        while (n > 0)
    37ac:	00c05a63          	blez	a2,37c0 <printf+0xcbc>
            buffer[n + 1] = buffer[n];
    37b0:	00178593          	addi	a1,a5,1
    37b4:	00278513          	addi	a0,a5,2
    37b8:	c03e                	sw	a5,0(sp)
    37ba:	14f010ef          	jal	5108 <memmove>
    37be:	4782                	lw	a5,0(sp)
        *buffer = '.';
    37c0:	02e00713          	li	a4,46
    37c4:	00e78023          	sb	a4,0(a5)
    for (sc = s; *sc != '\0' && count--; ++sc)
    37c8:	02014703          	lbu	a4,32(sp)
    37cc:	bbd1                	j	35a0 <printf+0xa9c>
    if (sign)
    37ce:	ee0d8ce3          	beqz	s11,36c6 <printf+0xbc2>
        *str++ = sign;
    37d2:	01b98023          	sb	s11,0(s3)
        while (size-- > 0)
    37d6:	1a79                	addi	s4,s4,-2
        *str++ = sign;
    37d8:	0985                	addi	s3,s3,1
    37da:	b539                	j	35e8 <printf+0xae4>
                *buffer++ = '0';
    37dc:	03000593          	li	a1,48
    37e0:	00b78023          	sb	a1,0(a5)
                *buffer++ = '.';
    37e4:	00a780a3          	sb	a0,1(a5)
    37e8:	0789                	addi	a5,a5,2
                for (pos = 0; pos < -decpt; pos++)
    37ea:	02088163          	beqz	a7,380c <printf+0xd08>
                    *buffer++ = '0';
    37ee:	41100633          	neg	a2,a7
    37f2:	853e                	mv	a0,a5
    37f4:	c636                	sw	a3,12(sp)
    37f6:	c43a                	sw	a4,8(sp)
    37f8:	c242                	sw	a6,4(sp)
    37fa:	c046                	sw	a7,0(sp)
    37fc:	235010ef          	jal	5230 <memset>
    3800:	4882                	lw	a7,0(sp)
    3802:	46b2                	lw	a3,12(sp)
    3804:	4722                	lw	a4,8(sp)
    3806:	4812                	lw	a6,4(sp)
    3808:	411507b3          	sub	a5,a0,a7
                    *buffer++ = *digits++;
    380c:	0685                	addi	a3,a3,1
    380e:	00e78023          	sb	a4,0(a5)
                while (*digits)
    3812:	0006c703          	lbu	a4,0(a3)
                    *buffer++ = *digits++;
    3816:	0785                	addi	a5,a5,1
                while (*digits)
    3818:	fb75                	bnez	a4,380c <printf+0xd08>
    381a:	bb95                	j	358e <printf+0xa8a>
                    while (len < field_width--)
    381c:	1a7d                	addi	s4,s4,-1
    381e:	df2ff06f          	j	2e10 <printf+0x30c>
                while (--field_width > 0)
    3822:	99ba                	add	s3,s3,a4
    3824:	b9b1                	j	3480 <printf+0x97c>
    while (*buffer)
    3826:	101c                	addi	a5,sp,32
    3828:	bdd5                	j	371c <printf+0xc18>

0000382a <neorv32_aux_itoa>:
 * @param[in] num Number to convert.
 * @param[in] base Base of number representation (2..16).
 **************************************************************************/
void neorv32_aux_itoa(char *buffer, uint32_t num, uint32_t base) {

  const char digits[16] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
    382a:	67a9                	lui	a5,0xa
    382c:	4dc78793          	addi	a5,a5,1244 # a4dc <__fini_array_end+0x7ac>
    3830:	43d4                	lw	a3,4(a5)
    3832:	4798                	lw	a4,8(a5)
    3834:	0007a803          	lw	a6,0(a5)
    3838:	47dc                	lw	a5,12(a5)
void neorv32_aux_itoa(char *buffer, uint32_t num, uint32_t base) {
    383a:	7139                	addi	sp,sp,-64
  const char digits[16] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
    383c:	c836                	sw	a3,16(sp)
    383e:	ca3a                	sw	a4,20(sp)
    3840:	cc3e                	sw	a5,24(sp)
  char *tmp_ptr = 0;
  unsigned int i = 0;

  // prevent uninitialized stack bytes
  for (i=0; i<sizeof(tmp); i++) {
    tmp[i] = 0;
    3842:	ce02                	sw	zero,28(sp)
    3844:	d002                	sw	zero,32(sp)
    3846:	d202                	sw	zero,36(sp)
    3848:	d402                	sw	zero,40(sp)
    384a:	d602                	sw	zero,44(sp)
    384c:	d802                	sw	zero,48(sp)
    384e:	da02                	sw	zero,52(sp)
    3850:	dc02                	sw	zero,56(sp)
    3852:	de02                	sw	zero,60(sp)
  const char digits[16] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
    3854:	c642                	sw	a6,12(sp)
  }

  if ((base < 2) || (base > 16)) { // invalid base?
    3856:	ffe60693          	addi	a3,a2,-2
    385a:	47b9                	li	a5,14
    385c:	03f10713          	addi	a4,sp,63
    3860:	02d7ea63          	bltu	a5,a3,3894 <neorv32_aux_itoa+0x6a>
  }

  tmp_ptr = &tmp[sizeof(tmp)-1]; // go to end of array
  do { // generate digit by digit
    tmp_ptr--;
    *tmp_ptr = digits[num%base];
    3864:	02c5f7b3          	remu	a5,a1,a2
    tmp_ptr--;
    3868:	177d                	addi	a4,a4,-1
    *tmp_ptr = digits[num%base];
    386a:	86ae                	mv	a3,a1
    386c:	978a                	add	a5,a5,sp
    386e:	00c7c783          	lbu	a5,12(a5)
    num /= base;
    3872:	02c5d5b3          	divu	a1,a1,a2
    *tmp_ptr = digits[num%base];
    3876:	00f70023          	sb	a5,0(a4)
  } while (num != 0);
    387a:	fec6f5e3          	bgeu	a3,a2,3864 <neorv32_aux_itoa+0x3a>
    387e:	087c                	addi	a5,sp,28

  // delete leading zeros
  for (i=0; i<sizeof(tmp); i++) {
    if (tmp[i] != '\0') {
    3880:	0007c703          	lbu	a4,0(a5)
  for (i=0; i<sizeof(tmp); i++) {
    3884:	0785                	addi	a5,a5,1
    if (tmp[i] != '\0') {
    3886:	c701                	beqz	a4,388e <neorv32_aux_itoa+0x64>
      *buffer = tmp[i];
    3888:	00e50023          	sb	a4,0(a0)
      buffer++;
    388c:	0505                	addi	a0,a0,1
  for (i=0; i<sizeof(tmp); i++) {
    388e:	0098                	addi	a4,sp,64
    3890:	fef718e3          	bne	a4,a5,3880 <neorv32_aux_itoa+0x56>
    }
  }

  // terminate result string
  *buffer = '\0';
    3894:	00050023          	sb	zero,0(a0)
}
    3898:	6121                	addi	sp,sp,64
    389a:	8082                	ret

0000389c <neorv32_cpu_get_cycle>:
    389c:	c80027f3          	rdcycleh	a5
    38a0:	c0002573          	rdcycle	a0
    38a4:	c80025f3          	rdcycleh	a1
  uint32_t tmp1 = 0, tmp2 = 0, tmp3 = 0;
  while(1) {
    tmp1 = neorv32_cpu_csr_read(CSR_CYCLEH);
    tmp2 = neorv32_cpu_csr_read(CSR_CYCLE);
    tmp3 = neorv32_cpu_csr_read(CSR_CYCLEH);
    if (tmp1 == tmp3) {
    38a8:	fef59ae3          	bne	a1,a5,389c <neorv32_cpu_get_cycle>
  subwords64_t data;
  data.uint32[0] = tmp2;
  data.uint32[1] = tmp3;

  return data.uint64;
}
    38ac:	8082                	ret

000038ae <neorv32_cpu_hpm_get_num_counters>:
    38ae:	fc002573          	csrr	a0,0xfc0
 * @return Returns number of available HPM counters.
 **************************************************************************/
uint32_t neorv32_cpu_hpm_get_num_counters(void) {

  // HPMs implemented at all?
  if ((neorv32_cpu_csr_read(CSR_MXISA) & (1<<CSR_MXISA_ZIHPM)) == 0) {
    38b2:	20057513          	andi	a0,a0,512
    38b6:	12050663          	beqz	a0,39e2 <neorv32_cpu_hpm_get_num_counters+0x134>
 * @param[in] mask Bit mask (high-active) to set bits (uint32_t).
 **************************************************************************/
inline void __attribute__ ((always_inline)) neorv32_cpu_csr_set(const int csr_id, uint32_t mask) {

  uint32_t csr_data = mask;
  asm volatile ("csrs %[id], %[src]" :  : [id] "i" (csr_id), [src] "r" (csr_data));
    38ba:	57e1                	li	a5,-8
    38bc:	3207a073          	csrs	mcountinhibit,a5
  asm volatile ("csrw %[id], %[src]" :  : [id] "i" (csr_id), [src] "r" (csr_data));
    38c0:	4785                	li	a5,1
    38c2:	b0379073          	csrw	mhpmcounter3,a5
    38c6:	b0479073          	csrw	mhpmcounter4,a5
    38ca:	b0579073          	csrw	mhpmcounter5,a5
    38ce:	b0679073          	csrw	mhpmcounter6,a5
    38d2:	b0779073          	csrw	mhpmcounter7,a5
    38d6:	b0879073          	csrw	mhpmcounter8,a5
    38da:	b0979073          	csrw	mhpmcounter9,a5
    38de:	b0a79073          	csrw	mhpmcounter10,a5
    38e2:	b0b79073          	csrw	mhpmcounter11,a5
    38e6:	b0c79073          	csrw	mhpmcounter12,a5
    38ea:	b0d79073          	csrw	mhpmcounter13,a5
    38ee:	b0e79073          	csrw	mhpmcounter14,a5
    38f2:	b0f79073          	csrw	mhpmcounter15,a5
    38f6:	b1079073          	csrw	mhpmcounter16,a5
    38fa:	b1179073          	csrw	mhpmcounter17,a5
    38fe:	b1279073          	csrw	mhpmcounter18,a5
    3902:	b1379073          	csrw	mhpmcounter19,a5
    3906:	b1479073          	csrw	mhpmcounter20,a5
    390a:	b1579073          	csrw	mhpmcounter21,a5
    390e:	b1679073          	csrw	mhpmcounter22,a5
    3912:	b1779073          	csrw	mhpmcounter23,a5
    3916:	b1879073          	csrw	mhpmcounter24,a5
    391a:	b1979073          	csrw	mhpmcounter25,a5
    391e:	b1a79073          	csrw	mhpmcounter26,a5
    3922:	b1b79073          	csrw	mhpmcounter27,a5
    3926:	b1c79073          	csrw	mhpmcounter28,a5
    392a:	b1d79073          	csrw	mhpmcounter29,a5
    392e:	b1e79073          	csrw	mhpmcounter30,a5
    3932:	b1f79073          	csrw	mhpmcounter31,a5
  asm volatile ("csrr %[dst], %[id]" : [dst] "=r" (csr_data) : [id] "i" (csr_id));
    3936:	b03027f3          	csrr	a5,mhpmcounter3
    393a:	b0402573          	csrr	a0,mhpmcounter4
  neorv32_cpu_csr_write(CSR_MHPMCOUNTER31, 1);

  // sum-up all actually set HPMs
  uint32_t num_hpm = 0;
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER3);
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER4);
    393e:	953e                	add	a0,a0,a5
    3940:	b05027f3          	csrr	a5,mhpmcounter5
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER5);
    3944:	953e                	add	a0,a0,a5
    3946:	b06027f3          	csrr	a5,mhpmcounter6
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER6);
    394a:	953e                	add	a0,a0,a5
    394c:	b07027f3          	csrr	a5,mhpmcounter7
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER7);
    3950:	953e                	add	a0,a0,a5
    3952:	b08027f3          	csrr	a5,mhpmcounter8
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER8);
    3956:	953e                	add	a0,a0,a5
    3958:	b09027f3          	csrr	a5,mhpmcounter9
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER9);
    395c:	953e                	add	a0,a0,a5
    395e:	b0a027f3          	csrr	a5,mhpmcounter10
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER10);
    3962:	953e                	add	a0,a0,a5
    3964:	b0b027f3          	csrr	a5,mhpmcounter11
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER11);
    3968:	953e                	add	a0,a0,a5
    396a:	b0c027f3          	csrr	a5,mhpmcounter12
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER12);
    396e:	953e                	add	a0,a0,a5
    3970:	b0d027f3          	csrr	a5,mhpmcounter13
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER13);
    3974:	953e                	add	a0,a0,a5
    3976:	b0e027f3          	csrr	a5,mhpmcounter14
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER14);
    397a:	953e                	add	a0,a0,a5
    397c:	b0f027f3          	csrr	a5,mhpmcounter15
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER15);
    3980:	953e                	add	a0,a0,a5
    3982:	b10027f3          	csrr	a5,mhpmcounter16
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER16);
    3986:	953e                	add	a0,a0,a5
    3988:	b11027f3          	csrr	a5,mhpmcounter17
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER17);
    398c:	953e                	add	a0,a0,a5
    398e:	b12027f3          	csrr	a5,mhpmcounter18
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER18);
    3992:	953e                	add	a0,a0,a5
    3994:	b13027f3          	csrr	a5,mhpmcounter19
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER19);
    3998:	953e                	add	a0,a0,a5
    399a:	b14027f3          	csrr	a5,mhpmcounter20
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER20);
    399e:	953e                	add	a0,a0,a5
    39a0:	b15027f3          	csrr	a5,mhpmcounter21
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER21);
    39a4:	953e                	add	a0,a0,a5
    39a6:	b16027f3          	csrr	a5,mhpmcounter22
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER22);
    39aa:	953e                	add	a0,a0,a5
    39ac:	b17027f3          	csrr	a5,mhpmcounter23
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER23);
    39b0:	953e                	add	a0,a0,a5
    39b2:	b18027f3          	csrr	a5,mhpmcounter24
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER24);
    39b6:	953e                	add	a0,a0,a5
    39b8:	b19027f3          	csrr	a5,mhpmcounter25
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER25);
    39bc:	953e                	add	a0,a0,a5
    39be:	b1a027f3          	csrr	a5,mhpmcounter26
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER26);
    39c2:	953e                	add	a0,a0,a5
    39c4:	b1b027f3          	csrr	a5,mhpmcounter27
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER27);
    39c8:	953e                	add	a0,a0,a5
    39ca:	b1c027f3          	csrr	a5,mhpmcounter28
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER28);
    39ce:	953e                	add	a0,a0,a5
    39d0:	b1d027f3          	csrr	a5,mhpmcounter29
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER29);
    39d4:	953e                	add	a0,a0,a5
    39d6:	b1e027f3          	csrr	a5,mhpmcounter30
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER30);
    39da:	953e                	add	a0,a0,a5
    39dc:	b1f027f3          	csrr	a5,mhpmcounter31
  num_hpm += neorv32_cpu_csr_read(CSR_MHPMCOUNTER31);
    39e0:	953e                	add	a0,a0,a5

  return num_hpm;
}
    39e2:	8082                	ret

000039e4 <_close>:
  return neorv32_semihosting_close(file);
#else
  (void)file;
  return -1; // no files available
#endif
}
    39e4:	557d                	li	a0,-1
    39e6:	8082                	ret

000039e8 <_fstat>:
 /**********************************************************************//**
 * Status of an open file. All files are regarded as character special devices.
 **************************************************************************/
int _fstat(int file, struct stat *st) {
  (void)file;
  st->st_mode = S_IFCHR;
    39e8:	6789                	lui	a5,0x2
    39ea:	c1dc                	sw	a5,4(a1)
  return 0;
}
    39ec:	4501                	li	a0,0
    39ee:	8082                	ret

000039f0 <_isatty>:
  return neorv32_semihosting_istty(file);
#else
  (void)file;
  return 1; // all streams are terminals
#endif
}
    39f0:	4505                	li	a0,1
    39f2:	8082                	ret

000039f4 <_lseek>:
  (void)file;
  (void)ptr;
  (void)dir;
  return 0;
#endif
}
    39f4:	4501                	li	a0,0
    39f6:	8082                	ret

000039f8 <_read>:

 /**********************************************************************//**
 * Read from a file. STDIN will read from UART0, all other input streams
 * will read from UART1.
 **************************************************************************/
int _read(int file, char *ptr, int len) {
    39f8:	1141                	addi	sp,sp,-16
    39fa:	c226                	sw	s1,4(sp)
    39fc:	c04a                	sw	s2,0(sp)
    39fe:	c606                	sw	ra,12(sp)
    3a00:	c422                	sw	s0,8(sp)
    3a02:	892e                	mv	s2,a1
    3a04:	84b2                	mv	s1,a2
#else
  char c = 0;
  int read_cnt = 0;

  // read STDIN stream from NEORV32.UART0 (if available)
  if ((file == STDIN_FILENO) && (neorv32_uart_available(NEORV32_UART0))) {
    3a06:	e511                	bnez	a0,3a12 <_read+0x1a>
    3a08:	842a                	mv	s0,a0
    3a0a:	fff50537          	lui	a0,0xfff50
    3a0e:	2fd1                	jal	41e2 <neorv32_uart_available>
    3a10:	e52d                	bnez	a0,3a7a <_read+0x82>
      }
    }
    return read_cnt;
  }
  // read all other input streams from NEORV32.UART1 (if available)
  else if (neorv32_uart_available(NEORV32_UART1)) {
    3a12:	fff60537          	lui	a0,0xfff60
    3a16:	27f1                	jal	41e2 <neorv32_uart_available>
  int read_cnt = 0;
    3a18:	4401                	li	s0,0
  else if (neorv32_uart_available(NEORV32_UART1)) {
    3a1a:	e11d                	bnez	a0,3a40 <_read+0x48>
    3a1c:	a0ad                	j	3a86 <_read+0x8e>
    while (len--) {
      c = (char)neorv32_uart_getc(NEORV32_UART1);
    3a1e:	051000ef          	jal	426e <neorv32_uart_getc>
      *ptr++ = c;
      read_cnt++;
      if ((c == '\n') || (c == '\r')) { // also terminate on [press enter]
    3a22:	ff650793          	addi	a5,a0,-10 # fff5fff6 <__crt0_stack_top+0x7ff4fff6>
    3a26:	ff350713          	addi	a4,a0,-13
      *ptr++ = c;
    3a2a:	008906b3          	add	a3,s2,s0
      if ((c == '\n') || (c == '\r')) { // also terminate on [press enter]
    3a2e:	0017b793          	seqz	a5,a5
    3a32:	00173713          	seqz	a4,a4
      *ptr++ = c;
    3a36:	00a68023          	sb	a0,0(a3)
      if ((c == '\n') || (c == '\r')) { // also terminate on [press enter]
    3a3a:	8fd9                	or	a5,a5,a4
      read_cnt++;
    3a3c:	0405                	addi	s0,s0,1
      if ((c == '\n') || (c == '\r')) { // also terminate on [press enter]
    3a3e:	e791                	bnez	a5,3a4a <_read+0x52>
      c = (char)neorv32_uart_getc(NEORV32_UART1);
    3a40:	fff60537          	lui	a0,0xfff60
    while (len--) {
    3a44:	fc941de3          	bne	s0,s1,3a1e <_read+0x26>
    return read_cnt;
    3a48:	8426                	mv	s0,s1
  else {
    errno = ENOSYS;
    return -1;
  }
#endif
}
    3a4a:	40b2                	lw	ra,12(sp)
    3a4c:	8522                	mv	a0,s0
    3a4e:	4422                	lw	s0,8(sp)
    3a50:	4492                	lw	s1,4(sp)
    3a52:	4902                	lw	s2,0(sp)
    3a54:	0141                	addi	sp,sp,16
    3a56:	8082                	ret
      c = (char)neorv32_uart_getc(NEORV32_UART0);
    3a58:	017000ef          	jal	426e <neorv32_uart_getc>
      if ((c == '\n') || (c == '\r')) { // also terminate on [press enter]
    3a5c:	ff650793          	addi	a5,a0,-10 # fff5fff6 <__crt0_stack_top+0x7ff4fff6>
    3a60:	ff350713          	addi	a4,a0,-13
      *ptr++ = c;
    3a64:	008906b3          	add	a3,s2,s0
      if ((c == '\n') || (c == '\r')) { // also terminate on [press enter]
    3a68:	0017b793          	seqz	a5,a5
    3a6c:	00173713          	seqz	a4,a4
      *ptr++ = c;
    3a70:	00a68023          	sb	a0,0(a3)
      if ((c == '\n') || (c == '\r')) { // also terminate on [press enter]
    3a74:	8fd9                	or	a5,a5,a4
      read_cnt++;
    3a76:	0405                	addi	s0,s0,1
      if ((c == '\n') || (c == '\r')) { // also terminate on [press enter]
    3a78:	fbe9                	bnez	a5,3a4a <_read+0x52>
      c = (char)neorv32_uart_getc(NEORV32_UART0);
    3a7a:	fff50537          	lui	a0,0xfff50
    while (len--) {
    3a7e:	fc941de3          	bne	s0,s1,3a58 <_read+0x60>
    return read_cnt;
    3a82:	8426                	mv	s0,s1
    3a84:	b7d9                	j	3a4a <_read+0x52>
    errno = ENOSYS;
    3a86:	05800713          	li	a4,88
    3a8a:	dae1a223          	sw	a4,-604(gp) # 800005a4 <errno>
    return -1;
    3a8e:	547d                	li	s0,-1
    3a90:	bf6d                	j	3a4a <_read+0x52>

00003a92 <_write>:

 /**********************************************************************//**
 * Write to a file. STDOUT and STDERR will write to UART0, all other
 * output streams will write to UART1.
 **************************************************************************/
int _write(int file, char *ptr, int len) {
    3a92:	1141                	addi	sp,sp,-16
    3a94:	c226                	sw	s1,4(sp)
    3a96:	c04a                	sw	s2,0(sp)
    3a98:	c606                	sw	ra,12(sp)
  return neorv32_semihosting_write(file, ptr, len);
#else
  int write_cnt = 0;

  // write STDOUT and STDERR streams to NEORV32.UART0 (if available)
  if ((file == STDOUT_FILENO) || (file == STDERR_FILENO)) {
    3a9a:	157d                	addi	a0,a0,-1 # fff4ffff <__crt0_stack_top+0x7ff3ffff>
    3a9c:	4785                	li	a5,1
int _write(int file, char *ptr, int len) {
    3a9e:	892e                	mv	s2,a1
    3aa0:	84b2                	mv	s1,a2
  if ((file == STDOUT_FILENO) || (file == STDERR_FILENO)) {
    3aa2:	02a7fa63          	bgeu	a5,a0,3ad6 <_write+0x44>
      return -1;
    }
  }

  // write all other output streams to NEORV32.UART1 (if available)
  if (neorv32_uart_available(NEORV32_UART1)) {
    3aa6:	fff60537          	lui	a0,0xfff60
    3aaa:	2f25                	jal	41e2 <neorv32_uart_available>
    3aac:	cd31                	beqz	a0,3b08 <_write+0x76>
    while (len--) {
    3aae:	c4b9                	beqz	s1,3afc <_write+0x6a>
    3ab0:	c422                	sw	s0,8(sp)
    3ab2:	844a                	mv	s0,s2
      neorv32_uart_putc(NEORV32_UART1, *ptr++);
    3ab4:	00044583          	lbu	a1,0(s0)
    3ab8:	fff60537          	lui	a0,0xfff60
    3abc:	0405                	addi	s0,s0,1
    3abe:	274d                	jal	4260 <neorv32_uart_putc>
    while (len--) {
    3ac0:	409407b3          	sub	a5,s0,s1
    3ac4:	ff2798e3          	bne	a5,s2,3ab4 <_write+0x22>
      return write_cnt;
    3ac8:	4422                	lw	s0,8(sp)
    3aca:	8526                	mv	a0,s1
  else {
    errno = ENOSYS;
    return -1;
  }
#endif
}
    3acc:	40b2                	lw	ra,12(sp)
    3ace:	4492                	lw	s1,4(sp)
    3ad0:	4902                	lw	s2,0(sp)
    3ad2:	0141                	addi	sp,sp,16
    3ad4:	8082                	ret
    if (neorv32_uart_available(NEORV32_UART0)) {
    3ad6:	fff50537          	lui	a0,0xfff50
    3ada:	2721                	jal	41e2 <neorv32_uart_available>
    3adc:	c515                	beqz	a0,3b08 <_write+0x76>
    3ade:	c422                	sw	s0,8(sp)
      while (len--) {
    3ae0:	844a                	mv	s0,s2
    3ae2:	cc81                	beqz	s1,3afa <_write+0x68>
        neorv32_uart_putc(NEORV32_UART0, *ptr++);
    3ae4:	00044583          	lbu	a1,0(s0)
    3ae8:	fff50537          	lui	a0,0xfff50
    3aec:	0405                	addi	s0,s0,1
    3aee:	2f8d                	jal	4260 <neorv32_uart_putc>
      while (len--) {
    3af0:	409407b3          	sub	a5,s0,s1
    3af4:	ff2798e3          	bne	a5,s2,3ae4 <_write+0x52>
    3af8:	bfc1                	j	3ac8 <_write+0x36>
    3afa:	4422                	lw	s0,8(sp)
}
    3afc:	40b2                	lw	ra,12(sp)
    3afe:	4492                	lw	s1,4(sp)
    3b00:	4902                	lw	s2,0(sp)
      return write_cnt;
    3b02:	4501                	li	a0,0
}
    3b04:	0141                	addi	sp,sp,16
    3b06:	8082                	ret
      errno = ENOSYS;
    3b08:	05800713          	li	a4,88
    3b0c:	dae1a223          	sw	a4,-604(gp) # 800005a4 <errno>
      return -1;
    3b10:	557d                	li	a0,-1
    3b12:	bf6d                	j	3acc <_write+0x3a>

00003b14 <_sbrk>:

  static unsigned char *curr_heap = NULL; // current heap pointer
  unsigned char *prev_heap; // previous heap pointer

  // initialize
  if (curr_heap == NULL) {
    3b14:	d941a683          	lw	a3,-620(gp) # 80000594 <curr_heap.0>
    3b18:	00c18713          	addi	a4,gp,12 # 8000080c <__crt0_bss_end>
    3b1c:	c685                	beqz	a3,3b44 <_sbrk+0x30>
    curr_heap = (unsigned char *)NEORV32_HEAP_BEGIN;
  }

  // do we have a heap at all?
  if ((NEORV32_HEAP_BEGIN == NEORV32_HEAP_END) || (NEORV32_HEAP_SIZE == 0)) {
    3b1e:	800037b7          	lui	a5,0x80003
    3b22:	80c78793          	addi	a5,a5,-2036 # 8000280c <__heap_end>
    3b26:	00e78963          	beq	a5,a4,3b38 <_sbrk+0x24>
    errno = ENOMEM;
    return (void*)-1; // error - no more memory
  }

  // sufficient space left?
  if ((uint32_t)(curr_heap + incr) >= NEORV32_HEAP_END) {
    3b2a:	9536                	add	a0,a0,a3
    3b2c:	00f57663          	bgeu	a0,a5,3b38 <_sbrk+0x24>
    errno = ENOMEM;
    return (void*)-1; // error - no more memory
  }

  prev_heap = curr_heap;
  curr_heap += incr;
    3b30:	d8a1aa23          	sw	a0,-620(gp) # 80000594 <curr_heap.0>

  return (void*)prev_heap;
}
    3b34:	8536                	mv	a0,a3
    3b36:	8082                	ret
    errno = ENOMEM;
    3b38:	4731                	li	a4,12
    return (void*)-1; // error - no more memory
    3b3a:	56fd                	li	a3,-1
    errno = ENOMEM;
    3b3c:	dae1a223          	sw	a4,-604(gp) # 800005a4 <errno>
}
    3b40:	8536                	mv	a0,a3
    3b42:	8082                	ret
    curr_heap = (unsigned char *)NEORV32_HEAP_BEGIN;
    3b44:	d8e1aa23          	sw	a4,-620(gp) # 80000594 <curr_heap.0>
    3b48:	86ba                	mv	a3,a4
    3b4a:	bfd1                	j	3b1e <_sbrk+0xa>

00003b4c <__neorv32_rte_core>:
/**********************************************************************//**
 * Core of the NEORV32 RTE (first-level trap handler).
 **************************************************************************/
static void __attribute__((naked,aligned(4))) __neorv32_rte_core(void) {

  asm volatile (
    3b4c:	34011073          	csrw	mscratch,sp
    3b50:	7119                	addi	sp,sp,-128
    3b52:	c206                	sw	ra,4(sp)
    3b54:	340110f3          	csrrw	ra,mscratch,sp
    3b58:	c406                	sw	ra,8(sp)
    3b5a:	c60e                	sw	gp,12(sp)
    3b5c:	c812                	sw	tp,16(sp)
    3b5e:	ca16                	sw	t0,20(sp)
    3b60:	cc1a                	sw	t1,24(sp)
    3b62:	ce1e                	sw	t2,28(sp)
    3b64:	d022                	sw	s0,32(sp)
    3b66:	d226                	sw	s1,36(sp)
    3b68:	d42a                	sw	a0,40(sp)
    3b6a:	d62e                	sw	a1,44(sp)
    3b6c:	d832                	sw	a2,48(sp)
    3b6e:	da36                	sw	a3,52(sp)
    3b70:	dc3a                	sw	a4,56(sp)
    3b72:	de3e                	sw	a5,60(sp)
    3b74:	c0c2                	sw	a6,64(sp)
    3b76:	c2c6                	sw	a7,68(sp)
    3b78:	c4ca                	sw	s2,72(sp)
    3b7a:	c6ce                	sw	s3,76(sp)
    3b7c:	c8d2                	sw	s4,80(sp)
    3b7e:	cad6                	sw	s5,84(sp)
    3b80:	ccda                	sw	s6,88(sp)
    3b82:	cede                	sw	s7,92(sp)
    3b84:	d0e2                	sw	s8,96(sp)
    3b86:	d2e6                	sw	s9,100(sp)
    3b88:	d4ea                	sw	s10,104(sp)
    3b8a:	d6ee                	sw	s11,108(sp)
    3b8c:	d8f2                	sw	t3,112(sp)
    3b8e:	daf6                	sw	t4,116(sp)
    3b90:	dcfa                	sw	t5,120(sp)
    3b92:	defe                	sw	t6,124(sp)
    3b94:	34202573          	csrr	a0,mcause
    3b98:	01855593          	srli	a1,a0,0x18
    3b9c:	01f57613          	andi	a2,a0,31
    3ba0:	060a                	slli	a2,a2,0x2
    3ba2:	962e                	add	a2,a2,a1
    3ba4:	dac18513          	addi	a0,gp,-596 # 800005ac <__neorv32_rte_vector_lut>
    3ba8:	962a                	add	a2,a2,a0
    3baa:	4210                	lw	a2,0(a2)
    3bac:	000600e7          	jalr	a2
    3bb0:	34202573          	csrr	a0,mcause
    3bb4:	02054163          	bltz	a0,3bd6 <__neorv32_rte_core+0x8a>
    3bb8:	4585                	li	a1,1
    3bba:	00b50e63          	beq	a0,a1,3bd6 <__neorv32_rte_core+0x8a>
    3bbe:	341025f3          	csrr	a1,mepc
    3bc2:	00458513          	addi	a0,a1,4
    3bc6:	0005c583          	lbu	a1,0(a1)
    3bca:	898d                	andi	a1,a1,3
    3bcc:	15f5                	addi	a1,a1,-3
    3bce:	c191                	beqz	a1,3bd2 <__neorv32_rte_core+0x86>
    3bd0:	1579                	addi	a0,a0,-2 # fff4fffe <__crt0_stack_top+0x7ff3fffe>
    3bd2:	34151073          	csrw	mepc,a0
    3bd6:	4092                	lw	ra,4(sp)
    3bd8:	41b2                	lw	gp,12(sp)
    3bda:	4242                	lw	tp,16(sp)
    3bdc:	42d2                	lw	t0,20(sp)
    3bde:	4362                	lw	t1,24(sp)
    3be0:	43f2                	lw	t2,28(sp)
    3be2:	5402                	lw	s0,32(sp)
    3be4:	5492                	lw	s1,36(sp)
    3be6:	5522                	lw	a0,40(sp)
    3be8:	55b2                	lw	a1,44(sp)
    3bea:	5642                	lw	a2,48(sp)
    3bec:	56d2                	lw	a3,52(sp)
    3bee:	5762                	lw	a4,56(sp)
    3bf0:	57f2                	lw	a5,60(sp)
    3bf2:	4806                	lw	a6,64(sp)
    3bf4:	4896                	lw	a7,68(sp)
    3bf6:	4926                	lw	s2,72(sp)
    3bf8:	49b6                	lw	s3,76(sp)
    3bfa:	4a46                	lw	s4,80(sp)
    3bfc:	4ad6                	lw	s5,84(sp)
    3bfe:	4b66                	lw	s6,88(sp)
    3c00:	4bf6                	lw	s7,92(sp)
    3c02:	5c06                	lw	s8,96(sp)
    3c04:	5c96                	lw	s9,100(sp)
    3c06:	5d26                	lw	s10,104(sp)
    3c08:	5db6                	lw	s11,108(sp)
    3c0a:	5e46                	lw	t3,112(sp)
    3c0c:	5ed6                	lw	t4,116(sp)
    3c0e:	5f66                	lw	t5,120(sp)
    3c10:	5ff6                	lw	t6,124(sp)
    3c12:	4122                	lw	sp,8(sp)
    3c14:	30200073          	mret
    3c18:	0001                	nop

00003c1a <__neorv32_rte_panic>:
static void __neorv32_rte_panic(void) {
    3c1a:	7139                	addi	sp,sp,-64
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3c1c:	fff50537          	lui	a0,0xfff50
static void __neorv32_rte_panic(void) {
    3c20:	de06                	sw	ra,60(sp)
    3c22:	dc22                	sw	s0,56(sp)
    3c24:	da26                	sw	s1,52(sp)
    3c26:	d84a                	sw	s2,48(sp)
    3c28:	d64e                	sw	s3,44(sp)
    3c2a:	d452                	sw	s4,40(sp)
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3c2c:	2b5d                	jal	41e2 <neorv32_uart_available>
    3c2e:	e541                	bnez	a0,3cb6 <__neorv32_rte_panic+0x9c>
    3c30:	f14027f3          	csrr	a5,mhartid
  if (neorv32_cpu_csr_read(CSR_MHARTID) & 1) {
    3c34:	8b85                	andi	a5,a5,1
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3c36:	fff50537          	lui	a0,0xfff50
  if (neorv32_cpu_csr_read(CSR_MHARTID) & 1) {
    3c3a:	c7ad                	beqz	a5,3ca4 <__neorv32_rte_panic+0x8a>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3c3c:	235d                	jal	41e2 <neorv32_uart_available>
    3c3e:	e159                	bnez	a0,3cc4 <__neorv32_rte_panic+0xaa>
    3c40:	300027f3          	csrr	a5,mstatus
  if (neorv32_cpu_csr_read(CSR_MSTATUS) & (3 << CSR_MSTATUS_MPP_L)) {
    3c44:	00b7d713          	srli	a4,a5,0xb
    3c48:	8b0d                	andi	a4,a4,3
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3c4a:	fff50537          	lui	a0,0xfff50
  if (neorv32_cpu_csr_read(CSR_MSTATUS) & (3 << CSR_MSTATUS_MPP_L)) {
    3c4e:	c715                	beqz	a4,3c7a <__neorv32_rte_panic+0x60>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3c50:	2b49                	jal	41e2 <neorv32_uart_available>
    3c52:	e141                	bnez	a0,3cd2 <__neorv32_rte_panic+0xb8>
    3c54:	34202973          	csrr	s2,mcause
  switch (cause) {
    3c58:	47ad                	li	a5,11
    3c5a:	0327fd63          	bgeu	a5,s2,3c94 <__neorv32_rte_panic+0x7a>
    3c5e:	800007b7          	lui	a5,0x80000
    3c62:	17f5                	addi	a5,a5,-3 # 7ffffffd <__neorv32_ram_size+0x7ffefffd>
    3c64:	97ca                	add	a5,a5,s2
    3c66:	4771                	li	a4,28
    3c68:	06f76c63          	bltu	a4,a5,3ce0 <__neorv32_rte_panic+0xc6>
    3c6c:	672d                	lui	a4,0xb
    3c6e:	078a                	slli	a5,a5,0x2
    3c70:	c6c70713          	addi	a4,a4,-916 # ac6c <intpat+0x42c>
    3c74:	97ba                	add	a5,a5,a4
    3c76:	439c                	lw	a5,0(a5)
    3c78:	8782                	jr	a5
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3c7a:	23a5                	jal	41e2 <neorv32_uart_available>
    3c7c:	dd61                	beqz	a0,3c54 <__neorv32_rte_panic+0x3a>
    neorv32_uart_puts(NEORV32_UART0, s);
    3c7e:	65a9                	lui	a1,0xa
    3c80:	52058593          	addi	a1,a1,1312 # a520 <__fini_array_end+0x7f0>
    3c84:	fff50537          	lui	a0,0xfff50
    3c88:	2be5                	jal	4280 <neorv32_uart_puts>
    3c8a:	34202973          	csrr	s2,mcause
  switch (cause) {
    3c8e:	47ad                	li	a5,11
    3c90:	fd27e7e3          	bltu	a5,s2,3c5e <__neorv32_rte_panic+0x44>
    3c94:	672d                	lui	a4,0xb
    3c96:	ce070713          	addi	a4,a4,-800 # ace0 <intpat+0x4a0>
    3c9a:	00291793          	slli	a5,s2,0x2
    3c9e:	97ba                	add	a5,a5,a4
    3ca0:	439c                	lw	a5,0(a5)
    3ca2:	8782                	jr	a5
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3ca4:	2b3d                	jal	41e2 <neorv32_uart_available>
    3ca6:	dd49                	beqz	a0,3c40 <__neorv32_rte_panic+0x26>
    neorv32_uart_puts(NEORV32_UART0, s);
    3ca8:	65a9                	lui	a1,0xa
    3caa:	51458593          	addi	a1,a1,1300 # a514 <__fini_array_end+0x7e4>
    3cae:	fff50537          	lui	a0,0xfff50
    3cb2:	23f9                	jal	4280 <neorv32_uart_puts>
}
    3cb4:	b771                	j	3c40 <__neorv32_rte_panic+0x26>
    neorv32_uart_puts(NEORV32_UART0, s);
    3cb6:	65a9                	lui	a1,0xa
    3cb8:	4f058593          	addi	a1,a1,1264 # a4f0 <__fini_array_end+0x7c0>
    3cbc:	fff50537          	lui	a0,0xfff50
    3cc0:	23c1                	jal	4280 <neorv32_uart_puts>
}
    3cc2:	b7bd                	j	3c30 <__neorv32_rte_panic+0x16>
    neorv32_uart_puts(NEORV32_UART0, s);
    3cc4:	65a9                	lui	a1,0xa
    3cc6:	50c58593          	addi	a1,a1,1292 # a50c <__fini_array_end+0x7dc>
    3cca:	fff50537          	lui	a0,0xfff50
    3cce:	2b4d                	jal	4280 <neorv32_uart_puts>
}
    3cd0:	bf85                	j	3c40 <__neorv32_rte_panic+0x26>
    neorv32_uart_puts(NEORV32_UART0, s);
    3cd2:	65a9                	lui	a1,0xa
    3cd4:	51c58593          	addi	a1,a1,1308 # a51c <__fini_array_end+0x7ec>
    3cd8:	fff50537          	lui	a0,0xfff50
    3cdc:	2355                	jal	4280 <neorv32_uart_puts>
}
    3cde:	bf9d                	j	3c54 <__neorv32_rte_panic+0x3a>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3ce0:	fff50537          	lui	a0,0xfff50
    3ce4:	29fd                	jal	41e2 <neorv32_uart_available>
    3ce6:	48051163          	bnez	a0,4168 <__neorv32_rte_panic_halt+0x34e>
  const char hex[] = "0123456789ABCDEF";
    3cea:	6429                	lui	s0,0xa
    3cec:	7fc40413          	addi	s0,s0,2044 # a7fc <__fini_array_end+0xacc>
    3cf0:	400c                	lw	a1,0(s0)
    3cf2:	4050                	lw	a2,4(s0)
    3cf4:	4414                	lw	a3,8(s0)
    3cf6:	4458                	lw	a4,12(s0)
    3cf8:	01044783          	lbu	a5,16(s0)
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3cfc:	fff50537          	lui	a0,0xfff50
  const char hex[] = "0123456789ABCDEF";
    3d00:	c62e                	sw	a1,12(sp)
    3d02:	c832                	sw	a2,16(sp)
    3d04:	ca36                	sw	a3,20(sp)
    3d06:	cc3a                	sw	a4,24(sp)
    3d08:	00f10e23          	sb	a5,28(sp)
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3d0c:	29d9                	jal	41e2 <neorv32_uart_available>
    3d0e:	3a051c63          	bnez	a0,40c6 <__neorv32_rte_panic_halt+0x2ac>
    case TRAP_CODE_I_ACCESS:     __neorv32_rte_puts("Instruction access fault"); fatal = 1; break;
    3d12:	4985                	li	s3,1
    3d14:	a80d                	j	3d46 <__neorv32_rte_panic+0x12c>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3d16:	fff50537          	lui	a0,0xfff50
    3d1a:	6429                	lui	s0,0xa
    3d1c:	21d9                	jal	41e2 <neorv32_uart_available>
    3d1e:	7fc40413          	addi	s0,s0,2044 # a7fc <__fini_array_end+0xacc>
    3d22:	d965                	beqz	a0,3d12 <__neorv32_rte_panic+0xf8>
    neorv32_uart_puts(NEORV32_UART0, s);
    3d24:	65a9                	lui	a1,0xa
    3d26:	55458593          	addi	a1,a1,1364 # a554 <__fini_array_end+0x824>
    3d2a:	fff50537          	lui	a0,0xfff50
    3d2e:	2b89                	jal	4280 <neorv32_uart_puts>
    case TRAP_CODE_I_ACCESS:     __neorv32_rte_puts("Instruction access fault"); fatal = 1; break;
    3d30:	4985                	li	s3,1
    3d32:	a811                	j	3d46 <__neorv32_rte_panic+0x12c>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3d34:	fff50537          	lui	a0,0xfff50
    3d38:	216d                	jal	41e2 <neorv32_uart_available>
    3d3a:	42051e63          	bnez	a0,4176 <__neorv32_rte_panic_halt+0x35c>
    3d3e:	6429                	lui	s0,0xa
    3d40:	7fc40413          	addi	s0,s0,2044 # a7fc <__fini_array_end+0xacc>
  uint32_t fatal = 0;
    3d44:	4981                	li	s3,0
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3d46:	fff50537          	lui	a0,0xfff50
    3d4a:	2961                	jal	41e2 <neorv32_uart_available>
    3d4c:	3e051963          	bnez	a0,413e <__neorv32_rte_panic_halt+0x324>
    3d50:	34102a73          	csrr	s4,mepc
  const char hex[] = "0123456789ABCDEF";
    3d54:	400c                	lw	a1,0(s0)
    3d56:	4050                	lw	a2,4(s0)
    3d58:	4414                	lw	a3,8(s0)
    3d5a:	4458                	lw	a4,12(s0)
    3d5c:	01044783          	lbu	a5,16(s0)
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3d60:	fff50537          	lui	a0,0xfff50
  const char hex[] = "0123456789ABCDEF";
    3d64:	c62e                	sw	a1,12(sp)
    3d66:	c832                	sw	a2,16(sp)
    3d68:	ca36                	sw	a3,20(sp)
    3d6a:	cc3a                	sw	a4,24(sp)
    3d6c:	00f10e23          	sb	a5,28(sp)
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3d70:	298d                	jal	41e2 <neorv32_uart_available>
    3d72:	38051b63          	bnez	a0,4108 <__neorv32_rte_panic_halt+0x2ee>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3d76:	fff50537          	lui	a0,0xfff50
    3d7a:	21a5                	jal	41e2 <neorv32_uart_available>
    3d7c:	36051f63          	bnez	a0,40fa <__neorv32_rte_panic_halt+0x2e0>
    3d80:	343024f3          	csrr	s1,mtval
  const char hex[] = "0123456789ABCDEF";
    3d84:	400c                	lw	a1,0(s0)
    3d86:	4050                	lw	a2,4(s0)
    3d88:	4414                	lw	a3,8(s0)
    3d8a:	4458                	lw	a4,12(s0)
    3d8c:	01044783          	lbu	a5,16(s0)
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3d90:	fff50537          	lui	a0,0xfff50
  const char hex[] = "0123456789ABCDEF";
    3d94:	c62e                	sw	a1,12(sp)
    3d96:	c832                	sw	a2,16(sp)
    3d98:	ca36                	sw	a3,20(sp)
    3d9a:	cc3a                	sw	a4,24(sp)
    3d9c:	00f10e23          	sb	a5,28(sp)
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3da0:	2189                	jal	41e2 <neorv32_uart_available>
    3da2:	e10d                	bnez	a0,3dc4 <__neorv32_rte_panic+0x1aa>
  if (((int32_t)cause) < 0) { // is interrupt
    3da4:	04094a63          	bltz	s2,3df8 <__neorv32_rte_panic+0x1de>
  if (fatal) {
    3da8:	06099463          	bnez	s3,3e10 <__neorv32_rte_panic+0x1f6>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3dac:	fff50537          	lui	a0,0xfff50
    3db0:	290d                	jal	41e2 <neorv32_uart_available>
    3db2:	e93d                	bnez	a0,3e28 <__neorv32_rte_panic_halt+0xe>
}
    3db4:	50f2                	lw	ra,60(sp)
    3db6:	5462                	lw	s0,56(sp)
    3db8:	54d2                	lw	s1,52(sp)
    3dba:	5942                	lw	s2,48(sp)
    3dbc:	59b2                	lw	s3,44(sp)
    3dbe:	5a22                	lw	s4,40(sp)
    3dc0:	6121                	addi	sp,sp,64
    3dc2:	8082                	ret
    neorv32_uart_putc(NEORV32_UART0, '0');
    3dc4:	03000593          	li	a1,48
    3dc8:	fff50537          	lui	a0,0xfff50
    3dcc:	2951                	jal	4260 <neorv32_uart_putc>
    neorv32_uart_putc(NEORV32_UART0, 'x');
    3dce:	07800593          	li	a1,120
    3dd2:	fff50537          	lui	a0,0xfff50
    3dd6:	2169                	jal	4260 <neorv32_uart_putc>
    3dd8:	4471                	li	s0,28
    for (i=0; i<8; i++) {
    3dda:	5a71                	li	s4,-4
      neorv32_uart_putc(NEORV32_UART0, hex[(num >> (28 - 4*i)) & 0xFu]);
    3ddc:	0084d7b3          	srl	a5,s1,s0
    3de0:	8bbd                	andi	a5,a5,15
    3de2:	978a                	add	a5,a5,sp
    3de4:	00c7c583          	lbu	a1,12(a5)
    3de8:	fff50537          	lui	a0,0xfff50
    for (i=0; i<8; i++) {
    3dec:	1471                	addi	s0,s0,-4
      neorv32_uart_putc(NEORV32_UART0, hex[(num >> (28 - 4*i)) & 0xFu]);
    3dee:	298d                	jal	4260 <neorv32_uart_putc>
    for (i=0; i<8; i++) {
    3df0:	ff4416e3          	bne	s0,s4,3ddc <__neorv32_rte_panic+0x1c2>
  if (((int32_t)cause) < 0) { // is interrupt
    3df4:	fa095ae3          	bgez	s2,3da8 <__neorv32_rte_panic+0x18e>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3df8:	fff50537          	lui	a0,0xfff50
    3dfc:	26dd                	jal	41e2 <neorv32_uart_available>
    3dfe:	34051e63          	bnez	a0,415a <__neorv32_rte_panic_halt+0x340>
    neorv32_cpu_csr_clr(CSR_MIE, 1 << (cause & 0x1f));
    3e02:	4785                	li	a5,1
    3e04:	012797b3          	sll	a5,a5,s2
 * @param[in] mask Bit mask (high-active) to clear bits (uint32_t).
 **************************************************************************/
inline void __attribute__ ((always_inline)) neorv32_cpu_csr_clr(const int csr_id, uint32_t mask) {

  uint32_t csr_data = mask;
  asm volatile ("csrc %[id], %[src]" :  : [id] "i" (csr_id), [src] "r" (csr_data));
    3e08:	3047b073          	csrc	mie,a5
  if (fatal) {
    3e0c:	fa0980e3          	beqz	s3,3dac <__neorv32_rte_panic+0x192>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3e10:	fff50537          	lui	a0,0xfff50
    3e14:	26f9                	jal	41e2 <neorv32_uart_available>
    3e16:	32051b63          	bnez	a0,414c <__neorv32_rte_panic_halt+0x332>

00003e1a <__neorv32_rte_panic_halt>:
    asm volatile (
    3e1a:	10500073          	wfi
    3e1e:	bff5                	j	3e1a <__neorv32_rte_panic_halt>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3e20:	fff50537          	lui	a0,0xfff50
    3e24:	2e7d                	jal	41e2 <neorv32_uart_available>
    3e26:	d559                	beqz	a0,3db4 <__neorv32_rte_panic+0x19a>
}
    3e28:	5462                	lw	s0,56(sp)
    3e2a:	50f2                	lw	ra,60(sp)
    3e2c:	54d2                	lw	s1,52(sp)
    3e2e:	5942                	lw	s2,48(sp)
    3e30:	59b2                	lw	s3,44(sp)
    3e32:	5a22                	lw	s4,40(sp)
    neorv32_uart_puts(NEORV32_UART0, s);
    3e34:	65a9                	lui	a1,0xa
    3e36:	7e058593          	addi	a1,a1,2016 # a7e0 <__fini_array_end+0xab0>
    3e3a:	fff50537          	lui	a0,0xfff50
}
    3e3e:	6121                	addi	sp,sp,64
    neorv32_uart_puts(NEORV32_UART0, s);
    3e40:	a181                	j	4280 <neorv32_uart_puts>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3e42:	fff50537          	lui	a0,0xfff50
    3e46:	2e71                	jal	41e2 <neorv32_uart_available>
    3e48:	32051e63          	bnez	a0,4184 <__neorv32_rte_panic_halt+0x36a>
    3e4c:	6429                	lui	s0,0xa
    3e4e:	7fc40413          	addi	s0,s0,2044 # a7fc <__fini_array_end+0xacc>
    case TRAP_CODE_I_ACCESS:     __neorv32_rte_puts("Instruction access fault"); fatal = 1; break;
    3e52:	4985                	li	s3,1
    3e54:	bdcd                	j	3d46 <__neorv32_rte_panic+0x12c>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3e56:	fff50537          	lui	a0,0xfff50
    3e5a:	2661                	jal	41e2 <neorv32_uart_available>
    3e5c:	ee0501e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3e60:	65a9                	lui	a1,0xa
    3e62:	5b858593          	addi	a1,a1,1464 # a5b8 <__fini_array_end+0x888>
    3e66:	fff50537          	lui	a0,0xfff50
    3e6a:	2919                	jal	4280 <neorv32_uart_puts>
}
    3e6c:	bdc9                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3e6e:	fff50537          	lui	a0,0xfff50
    3e72:	2e85                	jal	41e2 <neorv32_uart_available>
    3e74:	ec0505e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3e78:	65a9                	lui	a1,0xa
    3e7a:	5d458593          	addi	a1,a1,1492 # a5d4 <__fini_array_end+0x8a4>
    3e7e:	fff50537          	lui	a0,0xfff50
    3e82:	2efd                	jal	4280 <neorv32_uart_puts>
}
    3e84:	bd6d                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3e86:	fff50537          	lui	a0,0xfff50
    3e8a:	2ea1                	jal	41e2 <neorv32_uart_available>
    3e8c:	ea0509e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3e90:	65a9                	lui	a1,0xa
    3e92:	5e858593          	addi	a1,a1,1512 # a5e8 <__fini_array_end+0x8b8>
    3e96:	fff50537          	lui	a0,0xfff50
    3e9a:	26dd                	jal	4280 <neorv32_uart_puts>
}
    3e9c:	b54d                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3e9e:	fff50537          	lui	a0,0xfff50
    3ea2:	2681                	jal	41e2 <neorv32_uart_available>
    3ea4:	e8050de3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3ea8:	65a9                	lui	a1,0xa
    3eaa:	60858593          	addi	a1,a1,1544 # a608 <__fini_array_end+0x8d8>
    3eae:	fff50537          	lui	a0,0xfff50
    3eb2:	26f9                	jal	4280 <neorv32_uart_puts>
}
    3eb4:	b569                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3eb6:	fff50537          	lui	a0,0xfff50
    3eba:	2625                	jal	41e2 <neorv32_uart_available>
    3ebc:	e80501e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3ec0:	65a9                	lui	a1,0xa
    3ec2:	58c58593          	addi	a1,a1,1420 # a58c <__fini_array_end+0x85c>
    3ec6:	fff50537          	lui	a0,0xfff50
    3eca:	2e5d                	jal	4280 <neorv32_uart_puts>
}
    3ecc:	bd8d                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3ece:	fff50537          	lui	a0,0xfff50
    3ed2:	2e01                	jal	41e2 <neorv32_uart_available>
    3ed4:	e60505e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3ed8:	65a9                	lui	a1,0xa
    3eda:	5a458593          	addi	a1,a1,1444 # a5a4 <__fini_array_end+0x874>
    3ede:	fff50537          	lui	a0,0xfff50
    3ee2:	2e79                	jal	4280 <neorv32_uart_puts>
}
    3ee4:	bda9                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3ee6:	fff50537          	lui	a0,0xfff50
    3eea:	2ce5                	jal	41e2 <neorv32_uart_available>
    3eec:	e40509e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3ef0:	65a9                	lui	a1,0xa
    3ef2:	57458593          	addi	a1,a1,1396 # a574 <__fini_array_end+0x844>
    3ef6:	fff50537          	lui	a0,0xfff50
    3efa:	2659                	jal	4280 <neorv32_uart_puts>
}
    3efc:	b589                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3efe:	fff50537          	lui	a0,0xfff50
    3f02:	24c5                	jal	41e2 <neorv32_uart_available>
    3f04:	e2050de3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3f08:	65a9                	lui	a1,0xa
    3f0a:	65458593          	addi	a1,a1,1620 # a654 <__fini_array_end+0x924>
    3f0e:	fff50537          	lui	a0,0xfff50
    3f12:	26bd                	jal	4280 <neorv32_uart_puts>
}
    3f14:	b52d                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3f16:	fff50537          	lui	a0,0xfff50
    3f1a:	24e1                	jal	41e2 <neorv32_uart_available>
    3f1c:	e20501e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3f20:	65a9                	lui	a1,0xa
    3f22:	64058593          	addi	a1,a1,1600 # a640 <__fini_array_end+0x910>
    3f26:	fff50537          	lui	a0,0xfff50
    3f2a:	2e99                	jal	4280 <neorv32_uart_puts>
}
    3f2c:	bd09                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3f2e:	fff50537          	lui	a0,0xfff50
    3f32:	2c45                	jal	41e2 <neorv32_uart_available>
    3f34:	e00505e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3f38:	65a9                	lui	a1,0xa
    3f3a:	76458593          	addi	a1,a1,1892 # a764 <__fini_array_end+0xa34>
    3f3e:	fff50537          	lui	a0,0xfff50
    3f42:	2e3d                	jal	4280 <neorv32_uart_puts>
}
    3f44:	bbed                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3f46:	fff50537          	lui	a0,0xfff50
    3f4a:	2c61                	jal	41e2 <neorv32_uart_available>
    3f4c:	de0509e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3f50:	65a9                	lui	a1,0xa
    3f52:	68c58593          	addi	a1,a1,1676 # a68c <__fini_array_end+0x95c>
    3f56:	fff50537          	lui	a0,0xfff50
    3f5a:	261d                	jal	4280 <neorv32_uart_puts>
}
    3f5c:	b3cd                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3f5e:	fff50537          	lui	a0,0xfff50
    3f62:	2441                	jal	41e2 <neorv32_uart_available>
    3f64:	dc050de3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3f68:	65a9                	lui	a1,0xa
    3f6a:	75458593          	addi	a1,a1,1876 # a754 <__fini_array_end+0xa24>
    3f6e:	fff50537          	lui	a0,0xfff50
    3f72:	2639                	jal	4280 <neorv32_uart_puts>
}
    3f74:	b3e9                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3f76:	fff50537          	lui	a0,0xfff50
    3f7a:	24a5                	jal	41e2 <neorv32_uart_available>
    3f7c:	dc0501e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3f80:	65a9                	lui	a1,0xa
    3f82:	67c58593          	addi	a1,a1,1660 # a67c <__fini_array_end+0x94c>
    3f86:	fff50537          	lui	a0,0xfff50
    3f8a:	2cdd                	jal	4280 <neorv32_uart_puts>
}
    3f8c:	bb4d                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3f8e:	fff50537          	lui	a0,0xfff50
    3f92:	2c81                	jal	41e2 <neorv32_uart_available>
    3f94:	da0505e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3f98:	65a9                	lui	a1,0xa
    3f9a:	66c58593          	addi	a1,a1,1644 # a66c <__fini_array_end+0x93c>
    3f9e:	fff50537          	lui	a0,0xfff50
    3fa2:	2cf9                	jal	4280 <neorv32_uart_puts>
}
    3fa4:	bb69                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3fa6:	fff50537          	lui	a0,0xfff50
    3faa:	2c25                	jal	41e2 <neorv32_uart_available>
    3fac:	d80509e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3fb0:	65a9                	lui	a1,0xa
    3fb2:	74058593          	addi	a1,a1,1856 # a740 <__fini_array_end+0xa10>
    3fb6:	fff50537          	lui	a0,0xfff50
    3fba:	24d9                	jal	4280 <neorv32_uart_puts>
}
    3fbc:	b349                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3fbe:	fff50537          	lui	a0,0xfff50
    3fc2:	2405                	jal	41e2 <neorv32_uart_available>
    3fc4:	d6050de3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3fc8:	65a9                	lui	a1,0xa
    3fca:	73058593          	addi	a1,a1,1840 # a730 <__fini_array_end+0xa00>
    3fce:	fff50537          	lui	a0,0xfff50
    3fd2:	247d                	jal	4280 <neorv32_uart_puts>
}
    3fd4:	b3ad                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3fd6:	fff50537          	lui	a0,0xfff50
    3fda:	2421                	jal	41e2 <neorv32_uart_available>
    3fdc:	d60501e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3fe0:	65a9                	lui	a1,0xa
    3fe2:	72058593          	addi	a1,a1,1824 # a720 <__fini_array_end+0x9f0>
    3fe6:	fff50537          	lui	a0,0xfff50
    3fea:	2c59                	jal	4280 <neorv32_uart_puts>
}
    3fec:	bb89                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    3fee:	fff50537          	lui	a0,0xfff50
    3ff2:	2ac5                	jal	41e2 <neorv32_uart_available>
    3ff4:	d40505e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    3ff8:	65a9                	lui	a1,0xa
    3ffa:	71058593          	addi	a1,a1,1808 # a710 <__fini_array_end+0x9e0>
    3ffe:	fff50537          	lui	a0,0xfff50
    4002:	2cbd                	jal	4280 <neorv32_uart_puts>
}
    4004:	bb2d                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    4006:	fff50537          	lui	a0,0xfff50
    400a:	2ae1                	jal	41e2 <neorv32_uart_available>
    400c:	d20509e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    4010:	65a9                	lui	a1,0xa
    4012:	70058593          	addi	a1,a1,1792 # a700 <__fini_array_end+0x9d0>
    4016:	fff50537          	lui	a0,0xfff50
    401a:	249d                	jal	4280 <neorv32_uart_puts>
}
    401c:	b30d                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    401e:	fff50537          	lui	a0,0xfff50
    4022:	22c1                	jal	41e2 <neorv32_uart_available>
    4024:	d0050de3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    4028:	65a9                	lui	a1,0xa
    402a:	6f058593          	addi	a1,a1,1776 # a6f0 <__fini_array_end+0x9c0>
    402e:	fff50537          	lui	a0,0xfff50
    4032:	24b9                	jal	4280 <neorv32_uart_puts>
}
    4034:	b329                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    4036:	fff50537          	lui	a0,0xfff50
    403a:	2265                	jal	41e2 <neorv32_uart_available>
    403c:	d00501e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    4040:	65a9                	lui	a1,0xa
    4042:	6e058593          	addi	a1,a1,1760 # a6e0 <__fini_array_end+0x9b0>
    4046:	fff50537          	lui	a0,0xfff50
    404a:	2c1d                	jal	4280 <neorv32_uart_puts>
}
    404c:	b9cd                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    404e:	fff50537          	lui	a0,0xfff50
    4052:	2a41                	jal	41e2 <neorv32_uart_available>
    4054:	ce0505e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    4058:	65a9                	lui	a1,0xa
    405a:	6d058593          	addi	a1,a1,1744 # a6d0 <__fini_array_end+0x9a0>
    405e:	fff50537          	lui	a0,0xfff50
    4062:	2c39                	jal	4280 <neorv32_uart_puts>
}
    4064:	b9e9                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    4066:	fff50537          	lui	a0,0xfff50
    406a:	2aa5                	jal	41e2 <neorv32_uart_available>
    406c:	cc0509e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    4070:	65a9                	lui	a1,0xa
    4072:	6c058593          	addi	a1,a1,1728 # a6c0 <__fini_array_end+0x990>
    4076:	fff50537          	lui	a0,0xfff50
    407a:	2419                	jal	4280 <neorv32_uart_puts>
}
    407c:	b1c9                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    407e:	fff50537          	lui	a0,0xfff50
    4082:	2285                	jal	41e2 <neorv32_uart_available>
    4084:	ca050de3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    4088:	65a9                	lui	a1,0xa
    408a:	6ac58593          	addi	a1,a1,1708 # a6ac <__fini_array_end+0x97c>
    408e:	fff50537          	lui	a0,0xfff50
    4092:	22fd                	jal	4280 <neorv32_uart_puts>
}
    4094:	b16d                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    4096:	fff50537          	lui	a0,0xfff50
    409a:	22a1                	jal	41e2 <neorv32_uart_available>
    409c:	ca0501e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    40a0:	65a9                	lui	a1,0xa
    40a2:	69c58593          	addi	a1,a1,1692 # a69c <__fini_array_end+0x96c>
    40a6:	fff50537          	lui	a0,0xfff50
    40aa:	2ad9                	jal	4280 <neorv32_uart_puts>
}
    40ac:	b949                	j	3d3e <__neorv32_rte_panic+0x124>
  if (neorv32_uart0_available() != 0) { // cannot output anything if UART0 is not implemented
    40ae:	fff50537          	lui	a0,0xfff50
    40b2:	2a05                	jal	41e2 <neorv32_uart_available>
    40b4:	c80505e3          	beqz	a0,3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    40b8:	65a9                	lui	a1,0xa
    40ba:	62858593          	addi	a1,a1,1576 # a628 <__fini_array_end+0x8f8>
    40be:	fff50537          	lui	a0,0xfff50
    40c2:	2a7d                	jal	4280 <neorv32_uart_puts>
}
    40c4:	b9ad                	j	3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_putc(NEORV32_UART0, '0');
    40c6:	03000593          	li	a1,48
    40ca:	fff50537          	lui	a0,0xfff50
    40ce:	2a49                	jal	4260 <neorv32_uart_putc>
    neorv32_uart_putc(NEORV32_UART0, 'x');
    40d0:	07800593          	li	a1,120
    40d4:	fff50537          	lui	a0,0xfff50
    40d8:	2261                	jal	4260 <neorv32_uart_putc>
    40da:	44f1                	li	s1,28
    for (i=0; i<8; i++) {
    40dc:	59f1                	li	s3,-4
      neorv32_uart_putc(NEORV32_UART0, hex[(num >> (28 - 4*i)) & 0xFu]);
    40de:	009957b3          	srl	a5,s2,s1
    40e2:	8bbd                	andi	a5,a5,15
    40e4:	978a                	add	a5,a5,sp
    40e6:	00c7c583          	lbu	a1,12(a5)
    40ea:	fff50537          	lui	a0,0xfff50
    for (i=0; i<8; i++) {
    40ee:	14f1                	addi	s1,s1,-4
      neorv32_uart_putc(NEORV32_UART0, hex[(num >> (28 - 4*i)) & 0xFu]);
    40f0:	2a85                	jal	4260 <neorv32_uart_putc>
    for (i=0; i<8; i++) {
    40f2:	ff3496e3          	bne	s1,s3,40de <__neorv32_rte_panic_halt+0x2c4>
    case TRAP_CODE_I_ACCESS:     __neorv32_rte_puts("Instruction access fault"); fatal = 1; break;
    40f6:	4985                	li	s3,1
    40f8:	b1b9                	j	3d46 <__neorv32_rte_panic+0x12c>
    neorv32_uart_puts(NEORV32_UART0, s);
    40fa:	65a9                	lui	a1,0xa
    40fc:	79058593          	addi	a1,a1,1936 # a790 <__fini_array_end+0xa60>
    4100:	fff50537          	lui	a0,0xfff50
    4104:	2ab5                	jal	4280 <neorv32_uart_puts>
}
    4106:	b9ad                	j	3d80 <__neorv32_rte_panic+0x166>
    neorv32_uart_putc(NEORV32_UART0, '0');
    4108:	03000593          	li	a1,48
    410c:	fff50537          	lui	a0,0xfff50
    4110:	d256                	sw	s5,36(sp)
    4112:	22b9                	jal	4260 <neorv32_uart_putc>
    neorv32_uart_putc(NEORV32_UART0, 'x');
    4114:	07800593          	li	a1,120
    4118:	fff50537          	lui	a0,0xfff50
    411c:	2291                	jal	4260 <neorv32_uart_putc>
    411e:	44f1                	li	s1,28
    for (i=0; i<8; i++) {
    4120:	5af1                	li	s5,-4
      neorv32_uart_putc(NEORV32_UART0, hex[(num >> (28 - 4*i)) & 0xFu]);
    4122:	009a57b3          	srl	a5,s4,s1
    4126:	8bbd                	andi	a5,a5,15
    4128:	978a                	add	a5,a5,sp
    412a:	00c7c583          	lbu	a1,12(a5)
    412e:	fff50537          	lui	a0,0xfff50
    for (i=0; i<8; i++) {
    4132:	14f1                	addi	s1,s1,-4
      neorv32_uart_putc(NEORV32_UART0, hex[(num >> (28 - 4*i)) & 0xFu]);
    4134:	2235                	jal	4260 <neorv32_uart_putc>
    for (i=0; i<8; i++) {
    4136:	ff5496e3          	bne	s1,s5,4122 <__neorv32_rte_panic_halt+0x308>
    413a:	5a92                	lw	s5,36(sp)
    413c:	b92d                	j	3d76 <__neorv32_rte_panic+0x15c>
    neorv32_uart_puts(NEORV32_UART0, s);
    413e:	65a9                	lui	a1,0xa
    4140:	78858593          	addi	a1,a1,1928 # a788 <__fini_array_end+0xa58>
    4144:	fff50537          	lui	a0,0xfff50
    4148:	2a25                	jal	4280 <neorv32_uart_puts>
}
    414a:	b119                	j	3d50 <__neorv32_rte_panic+0x136>
    neorv32_uart_puts(NEORV32_UART0, s);
    414c:	65a9                	lui	a1,0xa
    414e:	7b058593          	addi	a1,a1,1968 # a7b0 <__fini_array_end+0xa80>
    4152:	fff50537          	lui	a0,0xfff50
    4156:	222d                	jal	4280 <neorv32_uart_puts>
}
    4158:	b1c9                	j	3e1a <__neorv32_rte_panic_halt>
    neorv32_uart_puts(NEORV32_UART0, s);
    415a:	65a9                	lui	a1,0xa
    415c:	79858593          	addi	a1,a1,1944 # a798 <__fini_array_end+0xa68>
    4160:	fff50537          	lui	a0,0xfff50
    4164:	2a31                	jal	4280 <neorv32_uart_puts>
}
    4166:	b971                	j	3e02 <__neorv32_rte_panic+0x1e8>
    neorv32_uart_puts(NEORV32_UART0, s);
    4168:	65a9                	lui	a1,0xa
    416a:	77458593          	addi	a1,a1,1908 # a774 <__fini_array_end+0xa44>
    416e:	fff50537          	lui	a0,0xfff50
    4172:	2239                	jal	4280 <neorv32_uart_puts>
}
    4174:	be9d                	j	3cea <__neorv32_rte_panic+0xd0>
    neorv32_uart_puts(NEORV32_UART0, s);
    4176:	65a9                	lui	a1,0xa
    4178:	54058593          	addi	a1,a1,1344 # a540 <__fini_array_end+0x810>
    417c:	fff50537          	lui	a0,0xfff50
    4180:	2201                	jal	4280 <neorv32_uart_puts>
}
    4182:	be75                	j	3d3e <__neorv32_rte_panic+0x124>
    neorv32_uart_puts(NEORV32_UART0, s);
    4184:	65a9                	lui	a1,0xa
    4186:	52458593          	addi	a1,a1,1316 # a524 <__fini_array_end+0x7f4>
    418a:	fff50537          	lui	a0,0xfff50
    418e:	28cd                	jal	4280 <neorv32_uart_puts>
    4190:	b975                	j	3e4c <__neorv32_rte_panic_halt+0x32>

00004192 <neorv32_rte_setup>:
  asm volatile ("csrw %[id], %[src]" :  : [id] "i" (csr_id), [src] "r" (csr_data));
    4192:	6789                	lui	a5,0x2
    4194:	80078793          	addi	a5,a5,-2048 # 1800 <portable_fini+0x88>
    4198:	30079073          	csrw	mstatus,a5
    419c:	4781                	li	a5,0
    419e:	30479073          	csrw	mie,a5
  asm volatile ("csrr %[dst], %[id]" : [dst] "=r" (csr_data) : [id] "i" (csr_id));
    41a2:	f14027f3          	csrr	a5,mhartid

  // disable all IRQ channels
  neorv32_cpu_csr_write(CSR_MIE, 0);

  // install debug handler for all trap sources (executed only on core 0)
  if (neorv32_cpu_csr_read(CSR_MHARTID) == 0) {
    41a6:	e78d                	bnez	a5,41d0 <neorv32_rte_setup+0x3e>
    for (i=0; i<32; i++) {
      __neorv32_rte_vector_lut[0][i] = (uint32_t)(&__neorv32_rte_panic);
    41a8:	6591                	lui	a1,0x4
    41aa:	c1a58593          	addi	a1,a1,-998 # 3c1a <__neorv32_rte_panic>
    41ae:	dac18613          	addi	a2,gp,-596 # 800005ac <__neorv32_rte_vector_lut>
    for (i=0; i<32; i++) {
    41b2:	4701                	li	a4,0
    41b4:	02000513          	li	a0,32
      __neorv32_rte_vector_lut[0][i] = (uint32_t)(&__neorv32_rte_panic);
    41b8:	00271693          	slli	a3,a4,0x2
      __neorv32_rte_vector_lut[1][i] = (uint32_t)(&__neorv32_rte_panic);
    41bc:	02070793          	addi	a5,a4,32
      __neorv32_rte_vector_lut[0][i] = (uint32_t)(&__neorv32_rte_panic);
    41c0:	96b2                	add	a3,a3,a2
      __neorv32_rte_vector_lut[1][i] = (uint32_t)(&__neorv32_rte_panic);
    41c2:	078a                	slli	a5,a5,0x2
      __neorv32_rte_vector_lut[0][i] = (uint32_t)(&__neorv32_rte_panic);
    41c4:	c28c                	sw	a1,0(a3)
      __neorv32_rte_vector_lut[1][i] = (uint32_t)(&__neorv32_rte_panic);
    41c6:	97b2                	add	a5,a5,a2
    41c8:	c38c                	sw	a1,0(a5)
    for (i=0; i<32; i++) {
    41ca:	0705                	addi	a4,a4,1
    41cc:	fea716e3          	bne	a4,a0,41b8 <neorv32_rte_setup+0x26>
    }
  }
  asm volatile ("fence"); // flush vector table to main memory
    41d0:	0ff0000f          	fence

  // configure trap handler base address (direct mode)
  neorv32_cpu_csr_write(CSR_MTVEC, (uint32_t)(&__neorv32_rte_core) & 0xfffffffcU);
    41d4:	6791                	lui	a5,0x4
    41d6:	b4c78793          	addi	a5,a5,-1204 # 3b4c <__neorv32_rte_core>
    41da:	9bf1                	andi	a5,a5,-4
  asm volatile ("csrw %[id], %[src]" :  : [id] "i" (csr_id), [src] "r" (csr_data));
    41dc:	30579073          	csrw	mtvec,a5
}
    41e0:	8082                	ret

000041e2 <neorv32_uart_available>:
 * @param[in,out] Hardware handle to UART register struct, #neorv32_uart_t.
 * @return 0 if UART0/1 was not synthesized, non-zero if UART0/1 is available.
 **************************************************************************/
int neorv32_uart_available(neorv32_uart_t *UARTx) {

  if (UARTx == NEORV32_UART0) {
    41e2:	fff50737          	lui	a4,0xfff50
int neorv32_uart_available(neorv32_uart_t *UARTx) {
    41e6:	87aa                	mv	a5,a0
  if (UARTx == NEORV32_UART0) {
    41e8:	00e50e63          	beq	a0,a4,4204 <neorv32_uart_available+0x22>
    return (int)(NEORV32_SYSINFO->SOC & (1 << SYSINFO_SOC_IO_UART0));
  }
  else if (UARTx == NEORV32_UART1) {
    41ec:	fff60737          	lui	a4,0xfff60
    return (int)(NEORV32_SYSINFO->SOC & (1 << SYSINFO_SOC_IO_UART1));
  }
  else {
    return 0;
    41f0:	4501                	li	a0,0
  else if (UARTx == NEORV32_UART1) {
    41f2:	00e78363          	beq	a5,a4,41f8 <neorv32_uart_available+0x16>
  }
}
    41f6:	8082                	ret
    return (int)(NEORV32_SYSINFO->SOC & (1 << SYSINFO_SOC_IO_UART1));
    41f8:	7781                	lui	a5,0xfffe0
    41fa:	4788                	lw	a0,8(a5)
    41fc:	020007b7          	lui	a5,0x2000
    4200:	8d7d                	and	a0,a0,a5
}
    4202:	8082                	ret
    return (int)(NEORV32_SYSINFO->SOC & (1 << SYSINFO_SOC_IO_UART0));
    4204:	7781                	lui	a5,0xfffe0
    4206:	4788                	lw	a0,8(a5)
    4208:	000207b7          	lui	a5,0x20
    420c:	8d7d                	and	a0,a0,a5
    420e:	8082                	ret

00004210 <neorv32_uart_setup>:

  uint32_t prsc_sel = 0;
  uint32_t baud_div = 0;

  // reset
  UARTx->CTRL = 0;
    4210:	00052023          	sw	zero,0(a0) # fff50000 <__crt0_stack_top+0x7ff40000>
    4214:	7781                	lui	a5,0xfffe0
    4216:	439c                	lw	a5,0(a5)

  // raw clock prescaler
  uint32_t clock = neorv32_sysinfo_get_clk(); // system clock in Hz
#ifndef MAKE_BOOTLOADER // use div instructions / library functions
  baud_div = clock / (2*baudrate);
    4218:	0586                	slli	a1,a1,0x1
    baud_div++;
  }
#endif

  // find baud prescaler (10-bit wide))
  while (baud_div >= 0x3ffU) {
    421a:	4681                	li	a3,0
  baud_div = clock / (2*baudrate);
    421c:	02b7d7b3          	divu	a5,a5,a1
  while (baud_div >= 0x3ffU) {
    4220:	3fe00593          	li	a1,1022
    4224:	00f5e763          	bltu	a1,a5,4232 <neorv32_uart_setup+0x22>
    4228:	a839                	j	4246 <neorv32_uart_setup+0x36>
    if ((prsc_sel == 2) || (prsc_sel == 4))
      baud_div >>= 3;
    422a:	838d                	srli	a5,a5,0x3
    else
      baud_div >>= 1;
    prsc_sel++;
    422c:	0685                	addi	a3,a3,1
  while (baud_div >= 0x3ffU) {
    422e:	00f5fa63          	bgeu	a1,a5,4242 <neorv32_uart_setup+0x32>
    if ((prsc_sel == 2) || (prsc_sel == 4))
    4232:	ffe68713          	addi	a4,a3,-2
    4236:	9b75                	andi	a4,a4,-3
    4238:	db6d                	beqz	a4,422a <neorv32_uart_setup+0x1a>
      baud_div >>= 1;
    423a:	8385                	srli	a5,a5,0x1
    prsc_sel++;
    423c:	0685                	addi	a3,a3,1
  while (baud_div >= 0x3ffU) {
    423e:	fef5eae3          	bltu	a1,a5,4232 <neorv32_uart_setup+0x22>
  }

  uint32_t tmp = 0;
  tmp |= (uint32_t)(1              & 1U)     << UART_CTRL_EN;
  tmp |= (uint32_t)(prsc_sel       & 3U)     << UART_CTRL_PRSC_LSB;
    4242:	068e                	slli	a3,a3,0x3
    4244:	8ae1                	andi	a3,a3,24
  tmp |= (uint32_t)((baud_div - 1) & 0x3ffU) << UART_CTRL_BAUD_LSB;
    4246:	17fd                	addi	a5,a5,-1 # fffdffff <__crt0_stack_top+0x7ffcffff>
    4248:	3ff7f793          	andi	a5,a5,1023
  tmp |= (uint32_t)(irq_mask       & (0xfu   << UART_CTRL_IRQ_RX_NEMPTY));
    424c:	00f00737          	lui	a4,0xf00
  tmp |= (uint32_t)((baud_div - 1) & 0x3ffU) << UART_CTRL_BAUD_LSB;
    4250:	079a                	slli	a5,a5,0x6
  tmp |= (uint32_t)(irq_mask       & (0xfu   << UART_CTRL_IRQ_RX_NEMPTY));
    4252:	8e79                	and	a2,a2,a4
    4254:	8fd1                	or	a5,a5,a2
    4256:	8fd5                	or	a5,a5,a3
    4258:	0017e793          	ori	a5,a5,1
  if (((uint32_t)UARTx) == NEORV32_UART1_BASE) {
    tmp |= 1U << UART_CTRL_SIM_MODE;
  }
#endif

  UARTx->CTRL = tmp;
    425c:	c11c                	sw	a5,0(a0)
}
    425e:	8082                	ret

00004260 <neorv32_uart_putc>:
 * @param[in,out] UARTx Hardware handle to UART register struct, #neorv32_uart_t.
 * @param[in] c Char to be send.
 **************************************************************************/
void neorv32_uart_putc(neorv32_uart_t *UARTx, char c) {

  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    4260:	411c                	lw	a5,0(a0)
    4262:	00c79713          	slli	a4,a5,0xc
    4266:	fe075de3          	bgez	a4,4260 <neorv32_uart_putc>
void neorv32_uart_tx_put(neorv32_uart_t *UARTx, char c) {

#ifdef UART_SEMIHOSTING
  neorv32_semihosting_putc(c);
#else
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    426a:	c14c                	sw	a1,4(a0)
}
    426c:	8082                	ret

0000426e <neorv32_uart_getc>:
int neorv32_uart_char_received(neorv32_uart_t *UARTx) {

#ifdef UART_SEMIHOSTING
  return 1;
#else
  return (int)(UARTx->CTRL & (1<<UART_CTRL_RX_NEMPTY));
    426e:	411c                	lw	a5,0(a0)
  while (neorv32_uart_char_received(UARTx) == 0); // wait until data available
    4270:	00f79713          	slli	a4,a5,0xf
    4274:	fe075de3          	bgez	a4,426e <neorv32_uart_getc>
char neorv32_uart_char_received_get(neorv32_uart_t *UARTx) {

#ifdef UART_SEMIHOSTING
  return neorv32_semihosting_getc();
#else
  return (char)(UARTx->DATA >> UART_DATA_RTX_LSB);
    4278:	4148                	lw	a0,4(a0)
}
    427a:	0ff57513          	zext.b	a0,a0
    427e:	8082                	ret

00004280 <neorv32_uart_puts>:

#ifdef UART_SEMIHOSTING
  neorv32_semihosting_puts(s);
#else
  char c = 0;
  while ((c = *s++)) {
    4280:	0005c683          	lbu	a3,0(a1)
    4284:	c28d                	beqz	a3,42a6 <neorv32_uart_puts+0x26>
    4286:	00158613          	addi	a2,a1,1
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    428a:	4835                	li	a6,13
    if (c == '\n') {
    428c:	45a9                	li	a1,10
    428e:	00b68d63          	beq	a3,a1,42a8 <neorv32_uart_puts+0x28>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    4292:	411c                	lw	a5,0(a0)
    4294:	00c79713          	slli	a4,a5,0xc
    4298:	fe075de3          	bgez	a4,4292 <neorv32_uart_puts+0x12>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    429c:	c154                	sw	a3,4(a0)
  while ((c = *s++)) {
    429e:	00064683          	lbu	a3,0(a2)
    42a2:	0605                	addi	a2,a2,1
    42a4:	f6ed                	bnez	a3,428e <neorv32_uart_puts+0xe>
      neorv32_uart_putc(UARTx, '\r');
    }
    neorv32_uart_putc(UARTx, c);
  }
#endif
}
    42a6:	8082                	ret
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    42a8:	411c                	lw	a5,0(a0)
    42aa:	00c79713          	slli	a4,a5,0xc
    42ae:	fe075de3          	bgez	a4,42a8 <neorv32_uart_puts+0x28>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    42b2:	01052223          	sw	a6,4(a0)
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    42b6:	bff1                	j	4292 <neorv32_uart_puts+0x12>

000042b8 <neorv32_uart_vprintf>:
 *
 * @param[in,out] UARTx Hardware handle to UART register struct, #neorv32_uart_t.
 * @param[in] format Pointer to format string.
 * @param[in] args A value identifying a variable arguments list.
 **************************************************************************/
void neorv32_uart_vprintf(neorv32_uart_t *UARTx, const char *format, va_list args) {
    42b8:	711d                	addi	sp,sp,-96
    42ba:	ce86                	sw	ra,92(sp)
  // prevent uninitialized stack bytes
  for (i=0; i<sizeof(string_buf); i++) {
    string_buf[i] = 0;
  }

  while ((c = *format++)) {
    42bc:	0005c703          	lbu	a4,0(a1)
    string_buf[i] = 0;
    42c0:	ce02                	sw	zero,28(sp)
    42c2:	d002                	sw	zero,32(sp)
    42c4:	d202                	sw	zero,36(sp)
    42c6:	d402                	sw	zero,40(sp)
    42c8:	d602                	sw	zero,44(sp)
    42ca:	d802                	sw	zero,48(sp)
    42cc:	da02                	sw	zero,52(sp)
    42ce:	dc02                	sw	zero,56(sp)
    42d0:	de02                	sw	zero,60(sp)
  while ((c = *format++)) {
    42d2:	c349                	beqz	a4,4354 <neorv32_uart_vprintf+0x9c>
    42d4:	c8ca                	sw	s2,80(sp)
    42d6:	c6ce                	sw	s3,76(sp)
    42d8:	692d                	lui	s2,0xb
    42da:	69ad                	lui	s3,0xb
    42dc:	cca2                	sw	s0,88(sp)
    42de:	caa6                	sw	s1,84(sp)
    42e0:	c4d2                	sw	s4,72(sp)
    42e2:	8832                	mv	a6,a2
    42e4:	c2d6                	sw	s5,68(sp)
    42e6:	842a                	mv	s0,a0
    42e8:	00158613          	addi	a2,a1,1
    42ec:	d6990913          	addi	s2,s2,-663 # ad69 <_ctype_+0x1>
    42f0:	d1098993          	addi	s3,s3,-752 # ad10 <intpat+0x4d0>
    42f4:	02500493          	li	s1,37
    42f8:	4a29                	li	s4,10
    if (c == '%') {
    42fa:	1e971b63          	bne	a4,s1,44f0 <neorv32_uart_vprintf+0x238>
      c = tolower(*format++);
    42fe:	0015c783          	lbu	a5,1(a1)
    4302:	4685                	li	a3,1
    4304:	00258a93          	addi	s5,a1,2
    4308:	01278733          	add	a4,a5,s2
    430c:	00074703          	lbu	a4,0(a4) # f00000 <__neorv32_ram_size+0xef0000>
    4310:	8b0d                	andi	a4,a4,3
    4312:	06d70363          	beq	a4,a3,4378 <neorv32_uart_vprintf+0xc0>
      switch (c) {
    4316:	00978b63          	beq	a5,s1,432c <neorv32_uart_vprintf+0x74>
    431a:	f9d78713          	addi	a4,a5,-99
    431e:	46d5                	li	a3,21
    4320:	02e6ed63          	bltu	a3,a4,435a <neorv32_uart_vprintf+0xa2>
    4324:	070a                	slli	a4,a4,0x2
    4326:	974e                	add	a4,a4,s3
    4328:	4318                	lw	a4,0(a4)
    432a:	8702                	jr	a4
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    432c:	401c                	lw	a5,0(s0)
    432e:	00c79713          	slli	a4,a5,0xc
    4332:	fe075de3          	bgez	a4,432c <neorv32_uart_vprintf+0x74>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    4336:	02500793          	li	a5,37
    433a:	c05c                	sw	a5,4(s0)
      c = tolower(*format++);
    433c:	85d6                	mv	a1,s5
  while ((c = *format++)) {
    433e:	0005c703          	lbu	a4,0(a1)
    4342:	00158613          	addi	a2,a1,1
    4346:	fb55                	bnez	a4,42fa <neorv32_uart_vprintf+0x42>
    4348:	4466                	lw	s0,88(sp)
    434a:	44d6                	lw	s1,84(sp)
    434c:	4946                	lw	s2,80(sp)
    434e:	49b6                	lw	s3,76(sp)
    4350:	4a26                	lw	s4,72(sp)
    4352:	4a96                	lw	s5,68(sp)
        neorv32_uart_putc(UARTx, '\r');
      }
      neorv32_uart_putc(UARTx, c);
    }
  }
}
    4354:	40f6                	lw	ra,92(sp)
    4356:	6125                	addi	sp,sp,96
    4358:	8082                	ret
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    435a:	4018                	lw	a4,0(s0)
    435c:	00c71693          	slli	a3,a4,0xc
    4360:	fe06dde3          	bgez	a3,435a <neorv32_uart_vprintf+0xa2>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    4364:	02500713          	li	a4,37
    4368:	c058                	sw	a4,4(s0)
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    436a:	4018                	lw	a4,0(s0)
    436c:	00c71693          	slli	a3,a4,0xc
    4370:	fe06dde3          	bgez	a3,436a <neorv32_uart_vprintf+0xb2>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    4374:	c05c                	sw	a5,4(s0)
          break;
    4376:	b7d9                	j	433c <neorv32_uart_vprintf+0x84>
      c = tolower(*format++);
    4378:	02078793          	addi	a5,a5,32
    437c:	0ff7f793          	zext.b	a5,a5
    4380:	bf59                	j	4316 <neorv32_uart_vprintf+0x5e>
          neorv32_aux_itoa(string_buf, va_arg(args, uint32_t), 16);
    4382:	00082583          	lw	a1,0(a6)
    4386:	4641                	li	a2,16
    4388:	0811                	addi	a6,a6,4
    438a:	0868                	addi	a0,sp,28
    438c:	c642                	sw	a6,12(sp)
    438e:	c9cff0ef          	jal	382a <neorv32_aux_itoa>
          i = 8 - strlen(string_buf);
    4392:	0868                	addi	a0,sp,28
    4394:	0a0010ef          	jal	5434 <strlen>
          while (i--) { // add leading zeros
    4398:	469d                	li	a3,7
    439a:	47a1                	li	a5,8
    439c:	4832                	lw	a6,12(sp)
    439e:	8e89                	sub	a3,a3,a0
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    43a0:	03000593          	li	a1,48
          while (i--) { // add leading zeros
    43a4:	567d                	li	a2,-1
    43a6:	00f50b63          	beq	a0,a5,43bc <neorv32_uart_vprintf+0x104>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    43aa:	401c                	lw	a5,0(s0)
    43ac:	00c79713          	slli	a4,a5,0xc
    43b0:	fe075de3          	bgez	a4,43aa <neorv32_uart_vprintf+0xf2>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    43b4:	c04c                	sw	a1,4(s0)
          while (i--) { // add leading zeros
    43b6:	16fd                	addi	a3,a3,-1
    43b8:	fec699e3          	bne	a3,a2,43aa <neorv32_uart_vprintf+0xf2>
  while ((c = *s++)) {
    43bc:	01c14683          	lbu	a3,28(sp)
    43c0:	01d10613          	addi	a2,sp,29
    if (c == '\n') {
    43c4:	45a9                	li	a1,10
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    43c6:	4535                	li	a0,13
  while ((c = *s++)) {
    43c8:	dab5                	beqz	a3,433c <neorv32_uart_vprintf+0x84>
    if (c == '\n') {
    43ca:	00b68e63          	beq	a3,a1,43e6 <neorv32_uart_vprintf+0x12e>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    43ce:	401c                	lw	a5,0(s0)
    43d0:	00c79713          	slli	a4,a5,0xc
    43d4:	fe075de3          	bgez	a4,43ce <neorv32_uart_vprintf+0x116>
  while ((c = *s++)) {
    43d8:	0605                	addi	a2,a2,1
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    43da:	c054                	sw	a3,4(s0)
  while ((c = *s++)) {
    43dc:	fff64683          	lbu	a3,-1(a2)
    43e0:	deb1                	beqz	a3,433c <neorv32_uart_vprintf+0x84>
    if (c == '\n') {
    43e2:	feb696e3          	bne	a3,a1,43ce <neorv32_uart_vprintf+0x116>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    43e6:	401c                	lw	a5,0(s0)
    43e8:	00c79713          	slli	a4,a5,0xc
    43ec:	fe075de3          	bgez	a4,43e6 <neorv32_uart_vprintf+0x12e>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    43f0:	c048                	sw	a0,4(s0)
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    43f2:	bff1                	j	43ce <neorv32_uart_vprintf+0x116>
          n = (int32_t)va_arg(args, int32_t);
    43f4:	00082583          	lw	a1,0(a6)
    43f8:	00480893          	addi	a7,a6,4
          if (n < 0) {
    43fc:	1005cc63          	bltz	a1,4514 <neorv32_uart_vprintf+0x25c>
          neorv32_aux_itoa(string_buf, (uint32_t)n, 10);
    4400:	4629                	li	a2,10
    4402:	0868                	addi	a0,sp,28
    4404:	c646                	sw	a7,12(sp)
    4406:	c24ff0ef          	jal	382a <neorv32_aux_itoa>
          n = (int32_t)va_arg(args, int32_t);
    440a:	48b2                	lw	a7,12(sp)
  while ((c = *s++)) {
    440c:	01c14683          	lbu	a3,28(sp)
      c = tolower(*format++);
    4410:	85d6                	mv	a1,s5
          n = (int32_t)va_arg(args, int32_t);
    4412:	8846                	mv	a6,a7
  while ((c = *s++)) {
    4414:	d68d                	beqz	a3,433e <neorv32_uart_vprintf+0x86>
    4416:	01d10613          	addi	a2,sp,29
    if (c == '\n') {
    441a:	45a9                	li	a1,10
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    441c:	4535                	li	a0,13
    if (c == '\n') {
    441e:	00b68e63          	beq	a3,a1,443a <neorv32_uart_vprintf+0x182>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    4422:	401c                	lw	a5,0(s0)
    4424:	00c79713          	slli	a4,a5,0xc
    4428:	fe075de3          	bgez	a4,4422 <neorv32_uart_vprintf+0x16a>
  while ((c = *s++)) {
    442c:	0605                	addi	a2,a2,1
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    442e:	c054                	sw	a3,4(s0)
  while ((c = *s++)) {
    4430:	fff64683          	lbu	a3,-1(a2)
    4434:	f6ed                	bnez	a3,441e <neorv32_uart_vprintf+0x166>
          n = (int32_t)va_arg(args, int32_t);
    4436:	8846                	mv	a6,a7
    4438:	b711                	j	433c <neorv32_uart_vprintf+0x84>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    443a:	401c                	lw	a5,0(s0)
    443c:	00c79713          	slli	a4,a5,0xc
    4440:	fe075de3          	bgez	a4,443a <neorv32_uart_vprintf+0x182>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    4444:	c048                	sw	a0,4(s0)
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    4446:	bff1                	j	4422 <neorv32_uart_vprintf+0x16a>
          neorv32_uart_putc(UARTx, (char)va_arg(args, int));
    4448:	00082683          	lw	a3,0(a6)
    444c:	0811                	addi	a6,a6,4
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    444e:	401c                	lw	a5,0(s0)
    4450:	00c79713          	slli	a4,a5,0xc
    4454:	fe075de3          	bgez	a4,444e <neorv32_uart_vprintf+0x196>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    4458:	0ff6f793          	zext.b	a5,a3
    445c:	c05c                	sw	a5,4(s0)
      c = tolower(*format++);
    445e:	85d6                	mv	a1,s5
}
    4460:	bdf9                	j	433e <neorv32_uart_vprintf+0x86>
          neorv32_aux_itoa(string_buf, va_arg(args, uint32_t), 10);
    4462:	00082583          	lw	a1,0(a6)
    4466:	4629                	li	a2,10
    4468:	0811                	addi	a6,a6,4
    446a:	0868                	addi	a0,sp,28
    446c:	c642                	sw	a6,12(sp)
    446e:	bbcff0ef          	jal	382a <neorv32_aux_itoa>
  while ((c = *s++)) {
    4472:	01c14683          	lbu	a3,28(sp)
    4476:	4832                	lw	a6,12(sp)
    4478:	ec0682e3          	beqz	a3,433c <neorv32_uart_vprintf+0x84>
    if (c == '\n') {
    447c:	45a9                	li	a1,10
  while ((c = *s++)) {
    447e:	01d10613          	addi	a2,sp,29
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    4482:	4535                	li	a0,13
    if (c == '\n') {
    4484:	00b68f63          	beq	a3,a1,44a2 <neorv32_uart_vprintf+0x1ea>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    4488:	401c                	lw	a5,0(s0)
    448a:	00c79713          	slli	a4,a5,0xc
    448e:	fe075de3          	bgez	a4,4488 <neorv32_uart_vprintf+0x1d0>
  while ((c = *s++)) {
    4492:	0605                	addi	a2,a2,1
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    4494:	c054                	sw	a3,4(s0)
  while ((c = *s++)) {
    4496:	fff64683          	lbu	a3,-1(a2)
    449a:	ea0681e3          	beqz	a3,433c <neorv32_uart_vprintf+0x84>
    if (c == '\n') {
    449e:	feb695e3          	bne	a3,a1,4488 <neorv32_uart_vprintf+0x1d0>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    44a2:	401c                	lw	a5,0(s0)
    44a4:	00c79713          	slli	a4,a5,0xc
    44a8:	fe075de3          	bgez	a4,44a2 <neorv32_uart_vprintf+0x1ea>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    44ac:	c048                	sw	a0,4(s0)
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    44ae:	bfe9                	j	4488 <neorv32_uart_vprintf+0x1d0>
          neorv32_uart_puts(UARTx, va_arg(args, char*));
    44b0:	00082583          	lw	a1,0(a6)
    44b4:	0811                	addi	a6,a6,4
  while ((c = *s++)) {
    44b6:	0005c683          	lbu	a3,0(a1)
    44ba:	e80681e3          	beqz	a3,433c <neorv32_uart_vprintf+0x84>
    if (c == '\n') {
    44be:	4629                	li	a2,10
  while ((c = *s++)) {
    44c0:	0585                	addi	a1,a1,1
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    44c2:	4535                	li	a0,13
    if (c == '\n') {
    44c4:	00c68f63          	beq	a3,a2,44e2 <neorv32_uart_vprintf+0x22a>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    44c8:	401c                	lw	a5,0(s0)
    44ca:	00c79713          	slli	a4,a5,0xc
    44ce:	fe075de3          	bgez	a4,44c8 <neorv32_uart_vprintf+0x210>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    44d2:	c054                	sw	a3,4(s0)
  while ((c = *s++)) {
    44d4:	0005c683          	lbu	a3,0(a1)
    44d8:	0585                	addi	a1,a1,1
    44da:	e60681e3          	beqz	a3,433c <neorv32_uart_vprintf+0x84>
    if (c == '\n') {
    44de:	fec695e3          	bne	a3,a2,44c8 <neorv32_uart_vprintf+0x210>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    44e2:	401c                	lw	a5,0(s0)
    44e4:	00c79713          	slli	a4,a5,0xc
    44e8:	fe075de3          	bgez	a4,44e2 <neorv32_uart_vprintf+0x22a>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    44ec:	c048                	sw	a0,4(s0)
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    44ee:	bfe9                	j	44c8 <neorv32_uart_vprintf+0x210>
      if (c == '\n') {
    44f0:	01470a63          	beq	a4,s4,4504 <neorv32_uart_vprintf+0x24c>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    44f4:	401c                	lw	a5,0(s0)
    44f6:	00c79693          	slli	a3,a5,0xc
    44fa:	fe06dde3          	bgez	a3,44f4 <neorv32_uart_vprintf+0x23c>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    44fe:	c058                	sw	a4,4(s0)
  while ((c = *format++)) {
    4500:	85b2                	mv	a1,a2
}
    4502:	bd35                	j	433e <neorv32_uart_vprintf+0x86>
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    4504:	401c                	lw	a5,0(s0)
    4506:	00c79693          	slli	a3,a5,0xc
    450a:	fe06dde3          	bgez	a3,4504 <neorv32_uart_vprintf+0x24c>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    450e:	47b5                	li	a5,13
    4510:	c05c                	sw	a5,4(s0)
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    4512:	b7cd                	j	44f4 <neorv32_uart_vprintf+0x23c>
            n = -n;
    4514:	40b005b3          	neg	a1,a1
  while ((UARTx->CTRL & (1<<UART_CTRL_TX_NFULL)) == 0); // wait for free space in TX FIFO
    4518:	401c                	lw	a5,0(s0)
    451a:	00c79713          	slli	a4,a5,0xc
    451e:	fe075de3          	bgez	a4,4518 <neorv32_uart_vprintf+0x260>
  UARTx->DATA = (uint32_t)c << UART_DATA_RTX_LSB;
    4522:	02d00793          	li	a5,45
    4526:	c05c                	sw	a5,4(s0)
}
    4528:	bde1                	j	4400 <neorv32_uart_vprintf+0x148>

0000452a <neorv32_uart_printf>:
 * @note This function is blocking.
 *
 * @param[in,out] UARTx Hardware handle to UART register struct, #neorv32_uart_t.
 * @param[in] format Pointer to format string. See neorv32_uart_vprintf.
 **************************************************************************/
void neorv32_uart_printf(neorv32_uart_t *UARTx, const char *format, ...) {
    452a:	7139                	addi	sp,sp,-64

  va_list args;
  va_start(args, format);
    452c:	02810313          	addi	t1,sp,40
void neorv32_uart_printf(neorv32_uart_t *UARTx, const char *format, ...) {
    4530:	d432                	sw	a2,40(sp)
  neorv32_uart_vprintf(UARTx, format, args);
    4532:	861a                	mv	a2,t1
void neorv32_uart_printf(neorv32_uart_t *UARTx, const char *format, ...) {
    4534:	ce06                	sw	ra,28(sp)
    4536:	d636                	sw	a3,44(sp)
    4538:	d83a                	sw	a4,48(sp)
    453a:	da3e                	sw	a5,52(sp)
    453c:	dc42                	sw	a6,56(sp)
    453e:	de46                	sw	a7,60(sp)
  va_start(args, format);
    4540:	c61a                	sw	t1,12(sp)
  neorv32_uart_vprintf(UARTx, format, args);
    4542:	3b9d                	jal	42b8 <neorv32_uart_vprintf>
  va_end(args);
}
    4544:	40f2                	lw	ra,28(sp)
    4546:	6121                	addi	sp,sp,64
    4548:	8082                	ret
    454a:	0000                	unimp

0000454c <modf>:
    454c:	4145d693          	srai	a3,a1,0x14
    4550:	fe010113          	addi	sp,sp,-32
    4554:	7ff6f693          	andi	a3,a3,2047
    4558:	00112e23          	sw	ra,28(sp)
    455c:	c0168813          	addi	a6,a3,-1023
    4560:	01300313          	li	t1,19
    4564:	00058793          	mv	a5,a1
    4568:	00060893          	mv	a7,a2
    456c:	00050713          	mv	a4,a0
    4570:	05034863          	blt	t1,a6,45c0 <modf+0x74>
    4574:	10084663          	bltz	a6,4680 <modf+0x134>
    4578:	001006b7          	lui	a3,0x100
    457c:	fff68693          	addi	a3,a3,-1 # fffff <__neorv32_ram_size+0xeffff>
    4580:	4106d6b3          	sra	a3,a3,a6
    4584:	00b6f633          	and	a2,a3,a1
    4588:	00a66633          	or	a2,a2,a0
    458c:	06061463          	bnez	a2,45f4 <modf+0xa8>
    4590:	00070613          	mv	a2,a4
    4594:	00078693          	mv	a3,a5
    4598:	80000737          	lui	a4,0x80000
    459c:	00f777b3          	and	a5,a4,a5
    45a0:	00c8a023          	sw	a2,0(a7)
    45a4:	00000713          	li	a4,0
    45a8:	00d8a223          	sw	a3,4(a7)
    45ac:	01c12083          	lw	ra,28(sp)
    45b0:	00070513          	mv	a0,a4
    45b4:	00078593          	mv	a1,a5
    45b8:	02010113          	addi	sp,sp,32
    45bc:	00008067          	ret
    45c0:	03300613          	li	a2,51
    45c4:	07064663          	blt	a2,a6,4630 <modf+0xe4>
    45c8:	fff00613          	li	a2,-1
    45cc:	bed68693          	addi	a3,a3,-1043
    45d0:	00d656b3          	srl	a3,a2,a3
    45d4:	00a6f633          	and	a2,a3,a0
    45d8:	fa060ce3          	beqz	a2,4590 <modf+0x44>
    45dc:	fff6c693          	not	a3,a3
    45e0:	00a6fe33          	and	t3,a3,a0
    45e4:	00a6f333          	and	t1,a3,a0
    45e8:	000e0613          	mv	a2,t3
    45ec:	00058693          	mv	a3,a1
    45f0:	0180006f          	j	4608 <modf+0xbc>
    45f4:	fff6c693          	not	a3,a3
    45f8:	00b6f7b3          	and	a5,a3,a1
    45fc:	00000613          	li	a2,0
    4600:	00078693          	mv	a3,a5
    4604:	00000313          	li	t1,0
    4608:	00f8a223          	sw	a5,4(a7)
    460c:	0068a023          	sw	t1,0(a7)
    4610:	305040ef          	jal	9114 <__subdf3>
    4614:	01c12083          	lw	ra,28(sp)
    4618:	00050713          	mv	a4,a0
    461c:	00058793          	mv	a5,a1
    4620:	00070513          	mv	a0,a4
    4624:	00078593          	mv	a1,a5
    4628:	02010113          	addi	sp,sp,32
    462c:	00008067          	ret
    4630:	00a8a023          	sw	a0,0(a7)
    4634:	00b8a223          	sw	a1,4(a7)
    4638:	00a12623          	sw	a0,12(sp)
    463c:	00b12223          	sw	a1,4(sp)
    4640:	01112423          	sw	a7,8(sp)
    4644:	070000ef          	jal	46b4 <__fpclassifyd>
    4648:	00412783          	lw	a5,4(sp)
    464c:	04051c63          	bnez	a0,46a4 <modf+0x158>
    4650:	00c12703          	lw	a4,12(sp)
    4654:	00078693          	mv	a3,a5
    4658:	00078593          	mv	a1,a5
    465c:	00070613          	mv	a2,a4
    4660:	00070513          	mv	a0,a4
    4664:	2d0030ef          	jal	7934 <__adddf3>
    4668:	00812883          	lw	a7,8(sp)
    466c:	00050713          	mv	a4,a0
    4670:	00058793          	mv	a5,a1
    4674:	00a8a023          	sw	a0,0(a7)
    4678:	00b8a223          	sw	a1,4(a7)
    467c:	f31ff06f          	j	45ac <modf+0x60>
    4680:	01c12083          	lw	ra,28(sp)
    4684:	800006b7          	lui	a3,0x80000
    4688:	00b6f6b3          	and	a3,a3,a1
    468c:	00062023          	sw	zero,0(a2)
    4690:	00d62223          	sw	a3,4(a2)
    4694:	00070513          	mv	a0,a4
    4698:	00078593          	mv	a1,a5
    469c:	02010113          	addi	sp,sp,32
    46a0:	00008067          	ret
    46a4:	80000737          	lui	a4,0x80000
    46a8:	00f777b3          	and	a5,a4,a5
    46ac:	00000713          	li	a4,0
    46b0:	efdff06f          	j	45ac <modf+0x60>

000046b4 <__fpclassifyd>:
    46b4:	00b567b3          	or	a5,a0,a1
    46b8:	04078e63          	beqz	a5,4714 <__fpclassifyd+0x60>
    46bc:	80000737          	lui	a4,0x80000
    46c0:	00b70733          	add	a4,a4,a1
    46c4:	00153793          	seqz	a5,a0
    46c8:	00071663          	bnez	a4,46d4 <__fpclassifyd+0x20>
    46cc:	00200513          	li	a0,2
    46d0:	04079463          	bnez	a5,4718 <__fpclassifyd+0x64>
    46d4:	00159713          	slli	a4,a1,0x1
    46d8:	00175713          	srli	a4,a4,0x1
    46dc:	fff006b7          	lui	a3,0xfff00
    46e0:	00d706b3          	add	a3,a4,a3
    46e4:	7fe00637          	lui	a2,0x7fe00
    46e8:	00400513          	li	a0,4
    46ec:	02c6e663          	bltu	a3,a2,4718 <__fpclassifyd+0x64>
    46f0:	0145d613          	srli	a2,a1,0x14
    46f4:	7ff67613          	andi	a2,a2,2047
    46f8:	7ff006b7          	lui	a3,0x7ff00
    46fc:	00300513          	li	a0,3
    4700:	00060c63          	beqz	a2,4718 <__fpclassifyd+0x64>
    4704:	40d70733          	sub	a4,a4,a3
    4708:	00173713          	seqz	a4,a4
    470c:	00e7f533          	and	a0,a5,a4
    4710:	00008067          	ret
    4714:	00200513          	li	a0,2
    4718:	00008067          	ret

0000471c <malloc>:
    471c:	00050593          	mv	a1,a0
    4720:	d681a503          	lw	a0,-664(gp) # 80000568 <_impure_ptr>
    4724:	0100006f          	j	4734 <_malloc_r>

00004728 <free>:
    4728:	00050593          	mv	a1,a0
    472c:	d681a503          	lw	a0,-664(gp) # 80000568 <_impure_ptr>
    4730:	6b50006f          	j	55e4 <_free_r>

00004734 <_malloc_r>:
    4734:	fc010113          	addi	sp,sp,-64
    4738:	02812c23          	sw	s0,56(sp)
    473c:	02112e23          	sw	ra,60(sp)
    4740:	00b58793          	addi	a5,a1,11
    4744:	01600713          	li	a4,22
    4748:	00050413          	mv	s0,a0
    474c:	08f76e63          	bltu	a4,a5,47e8 <_malloc_r+0xb4>
    4750:	01000693          	li	a3,16
    4754:	06b6ec63          	bltu	a3,a1,47cc <_malloc_r+0x98>
    4758:	059000ef          	jal	4fb0 <__malloc_lock>
    475c:	01000693          	li	a3,16
    4760:	01800713          	li	a4,24
    4764:	00200893          	li	a7,2
    4768:	80000837          	lui	a6,0x80000
    476c:	00080813          	mv	a6,a6
    4770:	00e80733          	add	a4,a6,a4
    4774:	00472783          	lw	a5,4(a4) # 80000004 <__malloc_av_+0x4>
    4778:	ff870613          	addi	a2,a4,-8
    477c:	44c78c63          	beq	a5,a2,4bd4 <_malloc_r+0x4a0>
    4780:	0047a703          	lw	a4,4(a5)
    4784:	00c7a603          	lw	a2,12(a5)
    4788:	0087a583          	lw	a1,8(a5)
    478c:	ffc77713          	andi	a4,a4,-4
    4790:	00e78733          	add	a4,a5,a4
    4794:	00472683          	lw	a3,4(a4)
    4798:	00c5a623          	sw	a2,12(a1)
    479c:	00f12623          	sw	a5,12(sp)
    47a0:	00b62423          	sw	a1,8(a2) # 7fe00008 <__neorv32_ram_size+0x7fdf0008>
    47a4:	0016e693          	ori	a3,a3,1
    47a8:	00040513          	mv	a0,s0
    47ac:	00d72223          	sw	a3,4(a4)
    47b0:	005000ef          	jal	4fb4 <__malloc_unlock>
    47b4:	00c12783          	lw	a5,12(sp)
    47b8:	03c12083          	lw	ra,60(sp)
    47bc:	03812403          	lw	s0,56(sp)
    47c0:	00878513          	addi	a0,a5,8
    47c4:	04010113          	addi	sp,sp,64
    47c8:	00008067          	ret
    47cc:	00c00793          	li	a5,12
    47d0:	00f42023          	sw	a5,0(s0)
    47d4:	00000513          	li	a0,0
    47d8:	03c12083          	lw	ra,60(sp)
    47dc:	03812403          	lw	s0,56(sp)
    47e0:	04010113          	addi	sp,sp,64
    47e4:	00008067          	ret
    47e8:	ff87f693          	andi	a3,a5,-8
    47ec:	fe07c0e3          	bltz	a5,47cc <_malloc_r+0x98>
    47f0:	fcb6eee3          	bltu	a3,a1,47cc <_malloc_r+0x98>
    47f4:	00d12623          	sw	a3,12(sp)
    47f8:	7b8000ef          	jal	4fb0 <__malloc_lock>
    47fc:	00c12683          	lw	a3,12(sp)
    4800:	1f700793          	li	a5,503
    4804:	4cd7f663          	bgeu	a5,a3,4cd0 <_malloc_r+0x59c>
    4808:	0096d793          	srli	a5,a3,0x9
    480c:	16078e63          	beqz	a5,4988 <_malloc_r+0x254>
    4810:	00400713          	li	a4,4
    4814:	42f76863          	bltu	a4,a5,4c44 <_malloc_r+0x510>
    4818:	0066d793          	srli	a5,a3,0x6
    481c:	03978893          	addi	a7,a5,57
    4820:	03878e13          	addi	t3,a5,56
    4824:	00389513          	slli	a0,a7,0x3
    4828:	80000837          	lui	a6,0x80000
    482c:	00080813          	mv	a6,a6
    4830:	00a80533          	add	a0,a6,a0
    4834:	00452783          	lw	a5,4(a0)
    4838:	ff850513          	addi	a0,a0,-8
    483c:	02f50863          	beq	a0,a5,486c <_malloc_r+0x138>
    4840:	00f00313          	li	t1,15
    4844:	0140006f          	j	4858 <_malloc_r+0x124>
    4848:	00c7a583          	lw	a1,12(a5)
    484c:	34065463          	bgez	a2,4b94 <_malloc_r+0x460>
    4850:	00b50e63          	beq	a0,a1,486c <_malloc_r+0x138>
    4854:	00058793          	mv	a5,a1
    4858:	0047a703          	lw	a4,4(a5)
    485c:	ffc77713          	andi	a4,a4,-4
    4860:	40d70633          	sub	a2,a4,a3
    4864:	fec352e3          	bge	t1,a2,4848 <_malloc_r+0x114>
    4868:	000e0893          	mv	a7,t3
    486c:	01082783          	lw	a5,16(a6) # 80000010 <__malloc_av_+0x10>
    4870:	80000e37          	lui	t3,0x80000
    4874:	008e0e13          	addi	t3,t3,8 # 80000008 <__malloc_av_+0x8>
    4878:	2dc78c63          	beq	a5,t3,4b50 <_malloc_r+0x41c>
    487c:	0047a703          	lw	a4,4(a5)
    4880:	00f00593          	li	a1,15
    4884:	ffc77713          	andi	a4,a4,-4
    4888:	40d70633          	sub	a2,a4,a3
    488c:	46c5cc63          	blt	a1,a2,4d04 <_malloc_r+0x5d0>
    4890:	01c82a23          	sw	t3,20(a6)
    4894:	01c82823          	sw	t3,16(a6)
    4898:	44065263          	bgez	a2,4cdc <_malloc_r+0x5a8>
    489c:	1ff00613          	li	a2,511
    48a0:	00482303          	lw	t1,4(a6)
    48a4:	34e66063          	bltu	a2,a4,4be4 <_malloc_r+0x4b0>
    48a8:	ff877613          	andi	a2,a4,-8
    48ac:	00860613          	addi	a2,a2,8
    48b0:	00c80633          	add	a2,a6,a2
    48b4:	00062583          	lw	a1,0(a2)
    48b8:	00575513          	srli	a0,a4,0x5
    48bc:	00100713          	li	a4,1
    48c0:	00a71733          	sll	a4,a4,a0
    48c4:	00e36333          	or	t1,t1,a4
    48c8:	ff860713          	addi	a4,a2,-8
    48cc:	00b7a423          	sw	a1,8(a5)
    48d0:	00e7a623          	sw	a4,12(a5)
    48d4:	00682223          	sw	t1,4(a6)
    48d8:	00f62023          	sw	a5,0(a2)
    48dc:	00f5a623          	sw	a5,12(a1)
    48e0:	4028d793          	srai	a5,a7,0x2
    48e4:	00100513          	li	a0,1
    48e8:	00f51533          	sll	a0,a0,a5
    48ec:	0aa36663          	bltu	t1,a0,4998 <_malloc_r+0x264>
    48f0:	006577b3          	and	a5,a0,t1
    48f4:	02079463          	bnez	a5,491c <_malloc_r+0x1e8>
    48f8:	00151513          	slli	a0,a0,0x1
    48fc:	ffc8f893          	andi	a7,a7,-4
    4900:	006577b3          	and	a5,a0,t1
    4904:	00488893          	addi	a7,a7,4
    4908:	00079a63          	bnez	a5,491c <_malloc_r+0x1e8>
    490c:	00151513          	slli	a0,a0,0x1
    4910:	006577b3          	and	a5,a0,t1
    4914:	00488893          	addi	a7,a7,4
    4918:	fe078ae3          	beqz	a5,490c <_malloc_r+0x1d8>
    491c:	00f00e93          	li	t4,15
    4920:	00389f13          	slli	t5,a7,0x3
    4924:	01e80f33          	add	t5,a6,t5
    4928:	000f0313          	mv	t1,t5
    492c:	00c32703          	lw	a4,12(t1)
    4930:	00088f93          	mv	t6,a7
    4934:	32e30a63          	beq	t1,a4,4c68 <_malloc_r+0x534>
    4938:	00472603          	lw	a2,4(a4)
    493c:	00070793          	mv	a5,a4
    4940:	00c72703          	lw	a4,12(a4)
    4944:	ffc67613          	andi	a2,a2,-4
    4948:	40d605b3          	sub	a1,a2,a3
    494c:	32beca63          	blt	t4,a1,4c80 <_malloc_r+0x54c>
    4950:	fe05c2e3          	bltz	a1,4934 <_malloc_r+0x200>
    4954:	00c78633          	add	a2,a5,a2
    4958:	00462683          	lw	a3,4(a2)
    495c:	0087a583          	lw	a1,8(a5)
    4960:	00040513          	mv	a0,s0
    4964:	0016e693          	ori	a3,a3,1
    4968:	00d62223          	sw	a3,4(a2)
    496c:	00e5a623          	sw	a4,12(a1)
    4970:	00b72423          	sw	a1,8(a4)
    4974:	00f12623          	sw	a5,12(sp)
    4978:	63c000ef          	jal	4fb4 <__malloc_unlock>
    497c:	00c12783          	lw	a5,12(sp)
    4980:	00878513          	addi	a0,a5,8
    4984:	e55ff06f          	j	47d8 <_malloc_r+0xa4>
    4988:	20000513          	li	a0,512
    498c:	04000893          	li	a7,64
    4990:	03f00e13          	li	t3,63
    4994:	e95ff06f          	j	4828 <_malloc_r+0xf4>
    4998:	00882783          	lw	a5,8(a6)
    499c:	0047a703          	lw	a4,4(a5)
    49a0:	ffc77313          	andi	t1,a4,-4
    49a4:	40d30633          	sub	a2,t1,a3
    49a8:	00d36663          	bltu	t1,a3,49b4 <_malloc_r+0x280>
    49ac:	01062713          	slti	a4,a2,16
    49b0:	1a070463          	beqz	a4,4b58 <_malloc_r+0x424>
    49b4:	da01a583          	lw	a1,-608(gp) # 800005a0 <__malloc_top_pad>
    49b8:	d601a603          	lw	a2,-672(gp) # 80000560 <__malloc_sbrk_base>
    49bc:	fff00713          	li	a4,-1
    49c0:	00b685b3          	add	a1,a3,a1
    49c4:	42e60463          	beq	a2,a4,4dec <_malloc_r+0x6b8>
    49c8:	00001737          	lui	a4,0x1
    49cc:	00f70713          	addi	a4,a4,15 # 100f <main+0x597>
    49d0:	00e585b3          	add	a1,a1,a4
    49d4:	fffff737          	lui	a4,0xfffff
    49d8:	00e5f5b3          	and	a1,a1,a4
    49dc:	00040513          	mv	a0,s0
    49e0:	01012e23          	sw	a6,28(sp)
    49e4:	00f12c23          	sw	a5,24(sp)
    49e8:	00d12a23          	sw	a3,20(sp)
    49ec:	00612823          	sw	t1,16(sp)
    49f0:	00b12623          	sw	a1,12(sp)
    49f4:	6b8000ef          	jal	50ac <_sbrk_r>
    49f8:	fff00713          	li	a4,-1
    49fc:	00c12583          	lw	a1,12(sp)
    4a00:	01012303          	lw	t1,16(sp)
    4a04:	01412683          	lw	a3,20(sp)
    4a08:	01812783          	lw	a5,24(sp)
    4a0c:	01c12803          	lw	a6,28(sp)
    4a10:	00050e13          	mv	t3,a0
    4a14:	34e50663          	beq	a0,a4,4d60 <_malloc_r+0x62c>
    4a18:	00678733          	add	a4,a5,t1
    4a1c:	34e56063          	bltu	a0,a4,4d5c <_malloc_r+0x628>
    4a20:	eac18e93          	addi	t4,gp,-340 # 800006ac <__malloc_current_mallinfo>
    4a24:	000ea603          	lw	a2,0(t4)
    4a28:	00c58633          	add	a2,a1,a2
    4a2c:	00cea023          	sw	a2,0(t4)
    4a30:	48a70a63          	beq	a4,a0,4ec4 <_malloc_r+0x790>
    4a34:	d601af03          	lw	t5,-672(gp) # 80000560 <__malloc_sbrk_base>
    4a38:	fff00513          	li	a0,-1
    4a3c:	4aaf0263          	beq	t5,a0,4ee0 <_malloc_r+0x7ac>
    4a40:	40ee0733          	sub	a4,t3,a4
    4a44:	00c70733          	add	a4,a4,a2
    4a48:	00eea023          	sw	a4,0(t4)
    4a4c:	007e7f13          	andi	t5,t3,7
    4a50:	3a0f0e63          	beqz	t5,4e0c <_malloc_r+0x6d8>
    4a54:	ff8e7e13          	andi	t3,t3,-8
    4a58:	000018b7          	lui	a7,0x1
    4a5c:	008e0e13          	addi	t3,t3,8
    4a60:	00888893          	addi	a7,a7,8 # 1008 <main+0x590>
    4a64:	00be0633          	add	a2,t3,a1
    4a68:	41e885b3          	sub	a1,a7,t5
    4a6c:	40c585b3          	sub	a1,a1,a2
    4a70:	01459593          	slli	a1,a1,0x14
    4a74:	0145d593          	srli	a1,a1,0x14
    4a78:	00040513          	mv	a0,s0
    4a7c:	03012623          	sw	a6,44(sp)
    4a80:	03d12423          	sw	t4,40(sp)
    4a84:	02f12223          	sw	a5,36(sp)
    4a88:	02d12023          	sw	a3,32(sp)
    4a8c:	00612e23          	sw	t1,28(sp)
    4a90:	01c12c23          	sw	t3,24(sp)
    4a94:	01e12a23          	sw	t5,20(sp)
    4a98:	00c12823          	sw	a2,16(sp)
    4a9c:	00b12623          	sw	a1,12(sp)
    4aa0:	60c000ef          	jal	50ac <_sbrk_r>
    4aa4:	00050713          	mv	a4,a0
    4aa8:	fff00513          	li	a0,-1
    4aac:	00c12583          	lw	a1,12(sp)
    4ab0:	01012603          	lw	a2,16(sp)
    4ab4:	01412f03          	lw	t5,20(sp)
    4ab8:	01812e03          	lw	t3,24(sp)
    4abc:	01c12303          	lw	t1,28(sp)
    4ac0:	02012683          	lw	a3,32(sp)
    4ac4:	02412783          	lw	a5,36(sp)
    4ac8:	02812e83          	lw	t4,40(sp)
    4acc:	02c12803          	lw	a6,44(sp)
    4ad0:	44a70e63          	beq	a4,a0,4f2c <_malloc_r+0x7f8>
    4ad4:	000ea603          	lw	a2,0(t4)
    4ad8:	41c70733          	sub	a4,a4,t3
    4adc:	00b70733          	add	a4,a4,a1
    4ae0:	00176713          	ori	a4,a4,1
    4ae4:	01c82423          	sw	t3,8(a6)
    4ae8:	00c58633          	add	a2,a1,a2
    4aec:	00ee2223          	sw	a4,4(t3)
    4af0:	00cea023          	sw	a2,0(t4)
    4af4:	03078e63          	beq	a5,a6,4b30 <_malloc_r+0x3fc>
    4af8:	00f00513          	li	a0,15
    4afc:	3e657663          	bgeu	a0,t1,4ee8 <_malloc_r+0x7b4>
    4b00:	0047a583          	lw	a1,4(a5)
    4b04:	ff430713          	addi	a4,t1,-12
    4b08:	ff877713          	andi	a4,a4,-8
    4b0c:	0015f593          	andi	a1,a1,1
    4b10:	00e5e5b3          	or	a1,a1,a4
    4b14:	00b7a223          	sw	a1,4(a5)
    4b18:	00500893          	li	a7,5
    4b1c:	00e785b3          	add	a1,a5,a4
    4b20:	0115a223          	sw	a7,4(a1)
    4b24:	0115a423          	sw	a7,8(a1)
    4b28:	40e56a63          	bltu	a0,a4,4f3c <_malloc_r+0x808>
    4b2c:	004e2703          	lw	a4,4(t3)
    4b30:	d9c1a583          	lw	a1,-612(gp) # 8000059c <__malloc_max_sbrked_mem>
    4b34:	00c5f463          	bgeu	a1,a2,4b3c <_malloc_r+0x408>
    4b38:	d8c1ae23          	sw	a2,-612(gp) # 8000059c <__malloc_max_sbrked_mem>
    4b3c:	d981a583          	lw	a1,-616(gp) # 80000598 <__malloc_max_total_mem>
    4b40:	00c5f463          	bgeu	a1,a2,4b48 <_malloc_r+0x414>
    4b44:	d8c1ac23          	sw	a2,-616(gp) # 80000598 <__malloc_max_total_mem>
    4b48:	000e0793          	mv	a5,t3
    4b4c:	21c0006f          	j	4d68 <_malloc_r+0x634>
    4b50:	00482303          	lw	t1,4(a6)
    4b54:	d8dff06f          	j	48e0 <_malloc_r+0x1ac>
    4b58:	0016e713          	ori	a4,a3,1
    4b5c:	00e7a223          	sw	a4,4(a5)
    4b60:	00d786b3          	add	a3,a5,a3
    4b64:	00166613          	ori	a2,a2,1
    4b68:	00d82423          	sw	a3,8(a6)
    4b6c:	00040513          	mv	a0,s0
    4b70:	00c6a223          	sw	a2,4(a3) # 7ff00004 <__neorv32_ram_size+0x7fef0004>
    4b74:	00f12623          	sw	a5,12(sp)
    4b78:	43c000ef          	jal	4fb4 <__malloc_unlock>
    4b7c:	00c12783          	lw	a5,12(sp)
    4b80:	03c12083          	lw	ra,60(sp)
    4b84:	03812403          	lw	s0,56(sp)
    4b88:	00878513          	addi	a0,a5,8
    4b8c:	04010113          	addi	sp,sp,64
    4b90:	00008067          	ret
    4b94:	0087a603          	lw	a2,8(a5)
    4b98:	00e78733          	add	a4,a5,a4
    4b9c:	00472683          	lw	a3,4(a4) # fffff004 <__crt0_stack_top+0x7ffef004>
    4ba0:	00b62623          	sw	a1,12(a2)
    4ba4:	00f12623          	sw	a5,12(sp)
    4ba8:	0016e693          	ori	a3,a3,1
    4bac:	00c5a423          	sw	a2,8(a1)
    4bb0:	00040513          	mv	a0,s0
    4bb4:	00d72223          	sw	a3,4(a4)
    4bb8:	3fc000ef          	jal	4fb4 <__malloc_unlock>
    4bbc:	00c12783          	lw	a5,12(sp)
    4bc0:	03c12083          	lw	ra,60(sp)
    4bc4:	03812403          	lw	s0,56(sp)
    4bc8:	00878513          	addi	a0,a5,8
    4bcc:	04010113          	addi	sp,sp,64
    4bd0:	00008067          	ret
    4bd4:	00c72783          	lw	a5,12(a4)
    4bd8:	00288893          	addi	a7,a7,2
    4bdc:	c8f708e3          	beq	a4,a5,486c <_malloc_r+0x138>
    4be0:	ba1ff06f          	j	4780 <_malloc_r+0x4c>
    4be4:	00975613          	srli	a2,a4,0x9
    4be8:	00400593          	li	a1,4
    4bec:	14c5fe63          	bgeu	a1,a2,4d48 <_malloc_r+0x614>
    4bf0:	01400593          	li	a1,20
    4bf4:	28c5e263          	bltu	a1,a2,4e78 <_malloc_r+0x744>
    4bf8:	05c60513          	addi	a0,a2,92
    4bfc:	00351513          	slli	a0,a0,0x3
    4c00:	05b60593          	addi	a1,a2,91
    4c04:	00a80533          	add	a0,a6,a0
    4c08:	00052603          	lw	a2,0(a0)
    4c0c:	ff850513          	addi	a0,a0,-8
    4c10:	00c51863          	bne	a0,a2,4c20 <_malloc_r+0x4ec>
    4c14:	1e00006f          	j	4df4 <_malloc_r+0x6c0>
    4c18:	00862603          	lw	a2,8(a2)
    4c1c:	00c50863          	beq	a0,a2,4c2c <_malloc_r+0x4f8>
    4c20:	00462583          	lw	a1,4(a2)
    4c24:	ffc5f593          	andi	a1,a1,-4
    4c28:	feb768e3          	bltu	a4,a1,4c18 <_malloc_r+0x4e4>
    4c2c:	00c62503          	lw	a0,12(a2)
    4c30:	00a7a623          	sw	a0,12(a5)
    4c34:	00c7a423          	sw	a2,8(a5)
    4c38:	00f52423          	sw	a5,8(a0)
    4c3c:	00f62623          	sw	a5,12(a2)
    4c40:	ca1ff06f          	j	48e0 <_malloc_r+0x1ac>
    4c44:	01400713          	li	a4,20
    4c48:	14f77063          	bgeu	a4,a5,4d88 <_malloc_r+0x654>
    4c4c:	05400713          	li	a4,84
    4c50:	24f76263          	bltu	a4,a5,4e94 <_malloc_r+0x760>
    4c54:	00c6d793          	srli	a5,a3,0xc
    4c58:	06f78893          	addi	a7,a5,111
    4c5c:	06e78e13          	addi	t3,a5,110
    4c60:	00389513          	slli	a0,a7,0x3
    4c64:	bc5ff06f          	j	4828 <_malloc_r+0xf4>
    4c68:	001f8f93          	addi	t6,t6,1
    4c6c:	003ff793          	andi	a5,t6,3
    4c70:	00830313          	addi	t1,t1,8
    4c74:	12078863          	beqz	a5,4da4 <_malloc_r+0x670>
    4c78:	00c32703          	lw	a4,12(t1)
    4c7c:	cb9ff06f          	j	4934 <_malloc_r+0x200>
    4c80:	0087a503          	lw	a0,8(a5)
    4c84:	0016e893          	ori	a7,a3,1
    4c88:	0117a223          	sw	a7,4(a5)
    4c8c:	00e52623          	sw	a4,12(a0)
    4c90:	00a72423          	sw	a0,8(a4)
    4c94:	00d786b3          	add	a3,a5,a3
    4c98:	00d82a23          	sw	a3,20(a6)
    4c9c:	00d82823          	sw	a3,16(a6)
    4ca0:	0015e713          	ori	a4,a1,1
    4ca4:	00c78633          	add	a2,a5,a2
    4ca8:	01c6a623          	sw	t3,12(a3)
    4cac:	01c6a423          	sw	t3,8(a3)
    4cb0:	00e6a223          	sw	a4,4(a3)
    4cb4:	00040513          	mv	a0,s0
    4cb8:	00b62023          	sw	a1,0(a2)
    4cbc:	00f12623          	sw	a5,12(sp)
    4cc0:	2f4000ef          	jal	4fb4 <__malloc_unlock>
    4cc4:	00c12783          	lw	a5,12(sp)
    4cc8:	00878513          	addi	a0,a5,8
    4ccc:	b0dff06f          	j	47d8 <_malloc_r+0xa4>
    4cd0:	0036d893          	srli	a7,a3,0x3
    4cd4:	00868713          	addi	a4,a3,8
    4cd8:	a91ff06f          	j	4768 <_malloc_r+0x34>
    4cdc:	00e78733          	add	a4,a5,a4
    4ce0:	00472683          	lw	a3,4(a4)
    4ce4:	00f12623          	sw	a5,12(sp)
    4ce8:	00040513          	mv	a0,s0
    4cec:	0016e693          	ori	a3,a3,1
    4cf0:	00d72223          	sw	a3,4(a4)
    4cf4:	2c0000ef          	jal	4fb4 <__malloc_unlock>
    4cf8:	00c12783          	lw	a5,12(sp)
    4cfc:	00878513          	addi	a0,a5,8
    4d00:	ad9ff06f          	j	47d8 <_malloc_r+0xa4>
    4d04:	0016e593          	ori	a1,a3,1
    4d08:	00b7a223          	sw	a1,4(a5)
    4d0c:	00d786b3          	add	a3,a5,a3
    4d10:	00d82a23          	sw	a3,20(a6)
    4d14:	00d82823          	sw	a3,16(a6)
    4d18:	00166593          	ori	a1,a2,1
    4d1c:	00e78733          	add	a4,a5,a4
    4d20:	01c6a623          	sw	t3,12(a3)
    4d24:	01c6a423          	sw	t3,8(a3)
    4d28:	00b6a223          	sw	a1,4(a3)
    4d2c:	00040513          	mv	a0,s0
    4d30:	00c72023          	sw	a2,0(a4)
    4d34:	00f12623          	sw	a5,12(sp)
    4d38:	27c000ef          	jal	4fb4 <__malloc_unlock>
    4d3c:	00c12783          	lw	a5,12(sp)
    4d40:	00878513          	addi	a0,a5,8
    4d44:	a95ff06f          	j	47d8 <_malloc_r+0xa4>
    4d48:	00675613          	srli	a2,a4,0x6
    4d4c:	03960513          	addi	a0,a2,57
    4d50:	00351513          	slli	a0,a0,0x3
    4d54:	03860593          	addi	a1,a2,56
    4d58:	eadff06f          	j	4c04 <_malloc_r+0x4d0>
    4d5c:	15078a63          	beq	a5,a6,4eb0 <_malloc_r+0x77c>
    4d60:	00882783          	lw	a5,8(a6)
    4d64:	0047a703          	lw	a4,4(a5)
    4d68:	ffc77713          	andi	a4,a4,-4
    4d6c:	40d70633          	sub	a2,a4,a3
    4d70:	00d76663          	bltu	a4,a3,4d7c <_malloc_r+0x648>
    4d74:	01062713          	slti	a4,a2,16
    4d78:	de0700e3          	beqz	a4,4b58 <_malloc_r+0x424>
    4d7c:	00040513          	mv	a0,s0
    4d80:	234000ef          	jal	4fb4 <__malloc_unlock>
    4d84:	a51ff06f          	j	47d4 <_malloc_r+0xa0>
    4d88:	05c78893          	addi	a7,a5,92
    4d8c:	05b78e13          	addi	t3,a5,91
    4d90:	00389513          	slli	a0,a7,0x3
    4d94:	a95ff06f          	j	4828 <_malloc_r+0xf4>
    4d98:	008f2783          	lw	a5,8(t5)
    4d9c:	fff88893          	addi	a7,a7,-1
    4da0:	21e79463          	bne	a5,t5,4fa8 <_malloc_r+0x874>
    4da4:	0038f793          	andi	a5,a7,3
    4da8:	ff8f0f13          	addi	t5,t5,-8
    4dac:	fe0796e3          	bnez	a5,4d98 <_malloc_r+0x664>
    4db0:	00482703          	lw	a4,4(a6)
    4db4:	fff54793          	not	a5,a0
    4db8:	00e7f7b3          	and	a5,a5,a4
    4dbc:	00f82223          	sw	a5,4(a6)
    4dc0:	00151513          	slli	a0,a0,0x1
    4dc4:	fff50713          	addi	a4,a0,-1
    4dc8:	bcf778e3          	bgeu	a4,a5,4998 <_malloc_r+0x264>
    4dcc:	00f57733          	and	a4,a0,a5
    4dd0:	00071a63          	bnez	a4,4de4 <_malloc_r+0x6b0>
    4dd4:	00151513          	slli	a0,a0,0x1
    4dd8:	00f57733          	and	a4,a0,a5
    4ddc:	004f8f93          	addi	t6,t6,4
    4de0:	fe070ae3          	beqz	a4,4dd4 <_malloc_r+0x6a0>
    4de4:	000f8893          	mv	a7,t6
    4de8:	b39ff06f          	j	4920 <_malloc_r+0x1ec>
    4dec:	01058593          	addi	a1,a1,16
    4df0:	bedff06f          	j	49dc <_malloc_r+0x2a8>
    4df4:	4025d593          	srai	a1,a1,0x2
    4df8:	00100713          	li	a4,1
    4dfc:	00b71733          	sll	a4,a4,a1
    4e00:	00e36333          	or	t1,t1,a4
    4e04:	00682223          	sw	t1,4(a6)
    4e08:	e29ff06f          	j	4c30 <_malloc_r+0x4fc>
    4e0c:	00be0633          	add	a2,t3,a1
    4e10:	40c005b3          	neg	a1,a2
    4e14:	01459593          	slli	a1,a1,0x14
    4e18:	0145d593          	srli	a1,a1,0x14
    4e1c:	00040513          	mv	a0,s0
    4e20:	03012423          	sw	a6,40(sp)
    4e24:	03d12223          	sw	t4,36(sp)
    4e28:	02f12023          	sw	a5,32(sp)
    4e2c:	00d12e23          	sw	a3,28(sp)
    4e30:	00612c23          	sw	t1,24(sp)
    4e34:	01c12a23          	sw	t3,20(sp)
    4e38:	00b12623          	sw	a1,12(sp)
    4e3c:	00c12823          	sw	a2,16(sp)
    4e40:	26c000ef          	jal	50ac <_sbrk_r>
    4e44:	00050713          	mv	a4,a0
    4e48:	fff00513          	li	a0,-1
    4e4c:	00c12583          	lw	a1,12(sp)
    4e50:	01412e03          	lw	t3,20(sp)
    4e54:	01812303          	lw	t1,24(sp)
    4e58:	01c12683          	lw	a3,28(sp)
    4e5c:	02012783          	lw	a5,32(sp)
    4e60:	02412e83          	lw	t4,36(sp)
    4e64:	02812803          	lw	a6,40(sp)
    4e68:	c6a716e3          	bne	a4,a0,4ad4 <_malloc_r+0x3a0>
    4e6c:	01012703          	lw	a4,16(sp)
    4e70:	00000593          	li	a1,0
    4e74:	c61ff06f          	j	4ad4 <_malloc_r+0x3a0>
    4e78:	05400593          	li	a1,84
    4e7c:	06c5ec63          	bltu	a1,a2,4ef4 <_malloc_r+0x7c0>
    4e80:	00c75613          	srli	a2,a4,0xc
    4e84:	06f60513          	addi	a0,a2,111
    4e88:	00351513          	slli	a0,a0,0x3
    4e8c:	06e60593          	addi	a1,a2,110
    4e90:	d75ff06f          	j	4c04 <_malloc_r+0x4d0>
    4e94:	15400713          	li	a4,340
    4e98:	06f76c63          	bltu	a4,a5,4f10 <_malloc_r+0x7dc>
    4e9c:	00f6d793          	srli	a5,a3,0xf
    4ea0:	07878893          	addi	a7,a5,120
    4ea4:	07778e13          	addi	t3,a5,119
    4ea8:	00389513          	slli	a0,a7,0x3
    4eac:	97dff06f          	j	4828 <_malloc_r+0xf4>
    4eb0:	eac18e93          	addi	t4,gp,-340 # 800006ac <__malloc_current_mallinfo>
    4eb4:	000ea603          	lw	a2,0(t4)
    4eb8:	00c58633          	add	a2,a1,a2
    4ebc:	00cea023          	sw	a2,0(t4)
    4ec0:	b75ff06f          	j	4a34 <_malloc_r+0x300>
    4ec4:	01451513          	slli	a0,a0,0x14
    4ec8:	b60516e3          	bnez	a0,4a34 <_malloc_r+0x300>
    4ecc:	00882e03          	lw	t3,8(a6)
    4ed0:	00b305b3          	add	a1,t1,a1
    4ed4:	0015e713          	ori	a4,a1,1
    4ed8:	00ee2223          	sw	a4,4(t3)
    4edc:	c55ff06f          	j	4b30 <_malloc_r+0x3fc>
    4ee0:	d7c1a023          	sw	t3,-672(gp) # 80000560 <__malloc_sbrk_base>
    4ee4:	b69ff06f          	j	4a4c <_malloc_r+0x318>
    4ee8:	00100793          	li	a5,1
    4eec:	00fe2223          	sw	a5,4(t3)
    4ef0:	e8dff06f          	j	4d7c <_malloc_r+0x648>
    4ef4:	15400593          	li	a1,340
    4ef8:	06c5ec63          	bltu	a1,a2,4f70 <_malloc_r+0x83c>
    4efc:	00f75613          	srli	a2,a4,0xf
    4f00:	07860513          	addi	a0,a2,120
    4f04:	00351513          	slli	a0,a0,0x3
    4f08:	07760593          	addi	a1,a2,119
    4f0c:	cf9ff06f          	j	4c04 <_malloc_r+0x4d0>
    4f10:	55400713          	li	a4,1364
    4f14:	06f76c63          	bltu	a4,a5,4f8c <_malloc_r+0x858>
    4f18:	0126d793          	srli	a5,a3,0x12
    4f1c:	07d78893          	addi	a7,a5,125
    4f20:	07c78e13          	addi	t3,a5,124
    4f24:	00389513          	slli	a0,a7,0x3
    4f28:	901ff06f          	j	4828 <_malloc_r+0xf4>
    4f2c:	ff8f0f13          	addi	t5,t5,-8
    4f30:	01e60733          	add	a4,a2,t5
    4f34:	00000593          	li	a1,0
    4f38:	b9dff06f          	j	4ad4 <_malloc_r+0x3a0>
    4f3c:	00878593          	addi	a1,a5,8
    4f40:	00040513          	mv	a0,s0
    4f44:	01012a23          	sw	a6,20(sp)
    4f48:	01d12823          	sw	t4,16(sp)
    4f4c:	00d12623          	sw	a3,12(sp)
    4f50:	694000ef          	jal	55e4 <_free_r>
    4f54:	01412803          	lw	a6,20(sp)
    4f58:	01012e83          	lw	t4,16(sp)
    4f5c:	00c12683          	lw	a3,12(sp)
    4f60:	00882e03          	lw	t3,8(a6)
    4f64:	000ea603          	lw	a2,0(t4)
    4f68:	004e2703          	lw	a4,4(t3)
    4f6c:	bc5ff06f          	j	4b30 <_malloc_r+0x3fc>
    4f70:	55400593          	li	a1,1364
    4f74:	02c5e463          	bltu	a1,a2,4f9c <_malloc_r+0x868>
    4f78:	01275613          	srli	a2,a4,0x12
    4f7c:	07d60513          	addi	a0,a2,125
    4f80:	00351513          	slli	a0,a0,0x3
    4f84:	07c60593          	addi	a1,a2,124
    4f88:	c7dff06f          	j	4c04 <_malloc_r+0x4d0>
    4f8c:	3f800513          	li	a0,1016
    4f90:	07f00893          	li	a7,127
    4f94:	07e00e13          	li	t3,126
    4f98:	891ff06f          	j	4828 <_malloc_r+0xf4>
    4f9c:	3f800513          	li	a0,1016
    4fa0:	07e00593          	li	a1,126
    4fa4:	c61ff06f          	j	4c04 <_malloc_r+0x4d0>
    4fa8:	00482783          	lw	a5,4(a6)
    4fac:	e15ff06f          	j	4dc0 <_malloc_r+0x68c>

00004fb0 <__malloc_lock>:
    4fb0:	00008067          	ret

00004fb4 <__malloc_unlock>:
    4fb4:	00008067          	ret

00004fb8 <putchar>:
    4fb8:	d681a783          	lw	a5,-664(gp) # 80000568 <_impure_ptr>
    4fbc:	00050593          	mv	a1,a0
    4fc0:	0087a603          	lw	a2,8(a5)
    4fc4:	00078513          	mv	a0,a5
    4fc8:	0740106f          	j	603c <_putc_r>

00004fcc <_puts_r>:
    4fcc:	fc010113          	addi	sp,sp,-64
    4fd0:	02812c23          	sw	s0,56(sp)
    4fd4:	00050413          	mv	s0,a0
    4fd8:	00058513          	mv	a0,a1
    4fdc:	00b12623          	sw	a1,12(sp)
    4fe0:	02112e23          	sw	ra,60(sp)
    4fe4:	450000ef          	jal	5434 <strlen>
    4fe8:	00c12583          	lw	a1,12(sp)
    4fec:	0000a7b7          	lui	a5,0xa
    4ff0:	03442703          	lw	a4,52(s0)
    4ff4:	00150893          	addi	a7,a0,1
    4ff8:	1e078793          	addi	a5,a5,480 # a1e0 <__fini_array_end+0x4b0>
    4ffc:	00100813          	li	a6,1
    5000:	02010613          	addi	a2,sp,32
    5004:	00200693          	li	a3,2
    5008:	02b12023          	sw	a1,32(sp)
    500c:	02a12223          	sw	a0,36(sp)
    5010:	01112e23          	sw	a7,28(sp)
    5014:	02f12423          	sw	a5,40(sp)
    5018:	03012623          	sw	a6,44(sp)
    501c:	00c12a23          	sw	a2,20(sp)
    5020:	00d12c23          	sw	a3,24(sp)
    5024:	00842583          	lw	a1,8(s0)
    5028:	04070e63          	beqz	a4,5084 <_puts_r+0xb8>
    502c:	00c59703          	lh	a4,12(a1)
    5030:	0645a783          	lw	a5,100(a1)
    5034:	00002637          	lui	a2,0x2
    5038:	01271693          	slli	a3,a4,0x12
    503c:	0006ce63          	bltz	a3,5058 <_puts_r+0x8c>
    5040:	ffffe6b7          	lui	a3,0xffffe
    5044:	fff68693          	addi	a3,a3,-1 # ffffdfff <__crt0_stack_top+0x7ffedfff>
    5048:	00c76733          	or	a4,a4,a2
    504c:	00d7f7b3          	and	a5,a5,a3
    5050:	00e59623          	sh	a4,12(a1)
    5054:	06f5a223          	sw	a5,100(a1)
    5058:	01279713          	slli	a4,a5,0x12
    505c:	02074e63          	bltz	a4,5098 <_puts_r+0xcc>
    5060:	00040513          	mv	a0,s0
    5064:	01410613          	addi	a2,sp,20
    5068:	25d000ef          	jal	5ac4 <__sfvwrite_r>
    506c:	02051663          	bnez	a0,5098 <_puts_r+0xcc>
    5070:	00a00513          	li	a0,10
    5074:	03c12083          	lw	ra,60(sp)
    5078:	03812403          	lw	s0,56(sp)
    507c:	04010113          	addi	sp,sp,64
    5080:	00008067          	ret
    5084:	00040513          	mv	a0,s0
    5088:	00b12623          	sw	a1,12(sp)
    508c:	20d000ef          	jal	5a98 <__sinit>
    5090:	00c12583          	lw	a1,12(sp)
    5094:	f99ff06f          	j	502c <_puts_r+0x60>
    5098:	fff00513          	li	a0,-1
    509c:	fd9ff06f          	j	5074 <_puts_r+0xa8>

000050a0 <puts>:
    50a0:	00050593          	mv	a1,a0
    50a4:	d681a503          	lw	a0,-664(gp) # 80000568 <_impure_ptr>
    50a8:	f25ff06f          	j	4fcc <_puts_r>

000050ac <_sbrk_r>:
    50ac:	ff010113          	addi	sp,sp,-16
    50b0:	00812423          	sw	s0,8(sp)
    50b4:	00912223          	sw	s1,4(sp)
    50b8:	00050493          	mv	s1,a0
    50bc:	00058513          	mv	a0,a1
    50c0:	00112623          	sw	ra,12(sp)
    50c4:	da01a223          	sw	zero,-604(gp) # 800005a4 <errno>
    50c8:	a4dfe0ef          	jal	3b14 <_sbrk>
    50cc:	fff00793          	li	a5,-1
    50d0:	00f50c63          	beq	a0,a5,50e8 <_sbrk_r+0x3c>
    50d4:	00c12083          	lw	ra,12(sp)
    50d8:	00812403          	lw	s0,8(sp)
    50dc:	00412483          	lw	s1,4(sp)
    50e0:	01010113          	addi	sp,sp,16
    50e4:	00008067          	ret
    50e8:	da41a783          	lw	a5,-604(gp) # 800005a4 <errno>
    50ec:	fe0784e3          	beqz	a5,50d4 <_sbrk_r+0x28>
    50f0:	00c12083          	lw	ra,12(sp)
    50f4:	00812403          	lw	s0,8(sp)
    50f8:	00f4a023          	sw	a5,0(s1)
    50fc:	00412483          	lw	s1,4(sp)
    5100:	01010113          	addi	sp,sp,16
    5104:	00008067          	ret

00005108 <memmove>:
    5108:	02a5f663          	bgeu	a1,a0,5134 <memmove+0x2c>
    510c:	00c587b3          	add	a5,a1,a2
    5110:	02f57263          	bgeu	a0,a5,5134 <memmove+0x2c>
    5114:	04060863          	beqz	a2,5164 <memmove+0x5c>
    5118:	00c50633          	add	a2,a0,a2
    511c:	fff7c703          	lbu	a4,-1(a5)
    5120:	fff60613          	addi	a2,a2,-1 # 1fff <crcu32+0x2f>
    5124:	fff78793          	addi	a5,a5,-1
    5128:	00e60023          	sb	a4,0(a2)
    512c:	fec518e3          	bne	a0,a2,511c <memmove+0x14>
    5130:	00008067          	ret
    5134:	00f00793          	li	a5,15
    5138:	02c7e863          	bltu	a5,a2,5168 <memmove+0x60>
    513c:	00050793          	mv	a5,a0
    5140:	fff60693          	addi	a3,a2,-1
    5144:	0e060063          	beqz	a2,5224 <memmove+0x11c>
    5148:	00168693          	addi	a3,a3,1
    514c:	00d786b3          	add	a3,a5,a3
    5150:	0005c703          	lbu	a4,0(a1)
    5154:	00178793          	addi	a5,a5,1
    5158:	00158593          	addi	a1,a1,1
    515c:	fee78fa3          	sb	a4,-1(a5)
    5160:	fed798e3          	bne	a5,a3,5150 <memmove+0x48>
    5164:	00008067          	ret
    5168:	00b567b3          	or	a5,a0,a1
    516c:	0037f793          	andi	a5,a5,3
    5170:	00058893          	mv	a7,a1
    5174:	0a079263          	bnez	a5,5218 <memmove+0x110>
    5178:	00465793          	srli	a5,a2,0x4
    517c:	00479813          	slli	a6,a5,0x4
    5180:	01050833          	add	a6,a0,a6
    5184:	fff78793          	addi	a5,a5,-1
    5188:	00050713          	mv	a4,a0
    518c:	0005a683          	lw	a3,0(a1)
    5190:	01058593          	addi	a1,a1,16
    5194:	01070713          	addi	a4,a4,16
    5198:	fed72823          	sw	a3,-16(a4)
    519c:	ff45a683          	lw	a3,-12(a1)
    51a0:	fed72a23          	sw	a3,-12(a4)
    51a4:	ff85a683          	lw	a3,-8(a1)
    51a8:	fed72c23          	sw	a3,-8(a4)
    51ac:	ffc5a683          	lw	a3,-4(a1)
    51b0:	fed72e23          	sw	a3,-4(a4)
    51b4:	fd071ce3          	bne	a4,a6,518c <memmove+0x84>
    51b8:	00479793          	slli	a5,a5,0x4
    51bc:	01178733          	add	a4,a5,a7
    51c0:	01070593          	addi	a1,a4,16
    51c4:	00f507b3          	add	a5,a0,a5
    51c8:	00c67813          	andi	a6,a2,12
    51cc:	01078793          	addi	a5,a5,16
    51d0:	00058e13          	mv	t3,a1
    51d4:	00f67693          	andi	a3,a2,15
    51d8:	04080863          	beqz	a6,5228 <memmove+0x120>
    51dc:	ffc68693          	addi	a3,a3,-4
    51e0:	ffc6f693          	andi	a3,a3,-4
    51e4:	00d70733          	add	a4,a4,a3
    51e8:	01470713          	addi	a4,a4,20
    51ec:	41150833          	sub	a6,a0,a7
    51f0:	0005a303          	lw	t1,0(a1)
    51f4:	010588b3          	add	a7,a1,a6
    51f8:	00458593          	addi	a1,a1,4
    51fc:	0068a023          	sw	t1,0(a7)
    5200:	fee598e3          	bne	a1,a4,51f0 <memmove+0xe8>
    5204:	00468713          	addi	a4,a3,4
    5208:	01c705b3          	add	a1,a4,t3
    520c:	00f707b3          	add	a5,a4,a5
    5210:	00367613          	andi	a2,a2,3
    5214:	f2dff06f          	j	5140 <memmove+0x38>
    5218:	fff60693          	addi	a3,a2,-1
    521c:	00050793          	mv	a5,a0
    5220:	f29ff06f          	j	5148 <memmove+0x40>
    5224:	00008067          	ret
    5228:	00068613          	mv	a2,a3
    522c:	f15ff06f          	j	5140 <memmove+0x38>

00005230 <memset>:
    5230:	00f00313          	li	t1,15
    5234:	00050713          	mv	a4,a0
    5238:	02c37e63          	bgeu	t1,a2,5274 <memset+0x44>
    523c:	00f77793          	andi	a5,a4,15
    5240:	0a079063          	bnez	a5,52e0 <memset+0xb0>
    5244:	08059263          	bnez	a1,52c8 <memset+0x98>
    5248:	ff067693          	andi	a3,a2,-16
    524c:	00f67613          	andi	a2,a2,15
    5250:	00e686b3          	add	a3,a3,a4
    5254:	00b72023          	sw	a1,0(a4)
    5258:	00b72223          	sw	a1,4(a4)
    525c:	00b72423          	sw	a1,8(a4)
    5260:	00b72623          	sw	a1,12(a4)
    5264:	01070713          	addi	a4,a4,16
    5268:	fed766e3          	bltu	a4,a3,5254 <memset+0x24>
    526c:	00061463          	bnez	a2,5274 <memset+0x44>
    5270:	00008067          	ret
    5274:	40c306b3          	sub	a3,t1,a2
    5278:	00269693          	slli	a3,a3,0x2
    527c:	00000297          	auipc	t0,0x0
    5280:	005686b3          	add	a3,a3,t0
    5284:	00c68067          	jr	12(a3)
    5288:	00b70723          	sb	a1,14(a4)
    528c:	00b706a3          	sb	a1,13(a4)
    5290:	00b70623          	sb	a1,12(a4)
    5294:	00b705a3          	sb	a1,11(a4)
    5298:	00b70523          	sb	a1,10(a4)
    529c:	00b704a3          	sb	a1,9(a4)
    52a0:	00b70423          	sb	a1,8(a4)
    52a4:	00b703a3          	sb	a1,7(a4)
    52a8:	00b70323          	sb	a1,6(a4)
    52ac:	00b702a3          	sb	a1,5(a4)
    52b0:	00b70223          	sb	a1,4(a4)
    52b4:	00b701a3          	sb	a1,3(a4)
    52b8:	00b70123          	sb	a1,2(a4)
    52bc:	00b700a3          	sb	a1,1(a4)
    52c0:	00b70023          	sb	a1,0(a4)
    52c4:	00008067          	ret
    52c8:	0ff5f593          	zext.b	a1,a1
    52cc:	00859693          	slli	a3,a1,0x8
    52d0:	00d5e5b3          	or	a1,a1,a3
    52d4:	01059693          	slli	a3,a1,0x10
    52d8:	00d5e5b3          	or	a1,a1,a3
    52dc:	f6dff06f          	j	5248 <memset+0x18>
    52e0:	00279693          	slli	a3,a5,0x2
    52e4:	00000297          	auipc	t0,0x0
    52e8:	005686b3          	add	a3,a3,t0
    52ec:	00008293          	mv	t0,ra
    52f0:	fa0680e7          	jalr	-96(a3)
    52f4:	00028093          	mv	ra,t0
    52f8:	ff078793          	addi	a5,a5,-16
    52fc:	40f70733          	sub	a4,a4,a5
    5300:	00f60633          	add	a2,a2,a5
    5304:	f6c378e3          	bgeu	t1,a2,5274 <memset+0x44>
    5308:	f3dff06f          	j	5244 <memset+0x14>

0000530c <memcpy>:
    530c:	00a5c7b3          	xor	a5,a1,a0
    5310:	0037f793          	andi	a5,a5,3
    5314:	00c508b3          	add	a7,a0,a2
    5318:	06079663          	bnez	a5,5384 <memcpy+0x78>
    531c:	00463613          	sltiu	a2,a2,4
    5320:	06061263          	bnez	a2,5384 <memcpy+0x78>
    5324:	00357793          	andi	a5,a0,3
    5328:	00050713          	mv	a4,a0
    532c:	0c079a63          	bnez	a5,5400 <memcpy+0xf4>
    5330:	ffc8f613          	andi	a2,a7,-4
    5334:	40e606b3          	sub	a3,a2,a4
    5338:	02000793          	li	a5,32
    533c:	06d7c463          	blt	a5,a3,53a4 <memcpy+0x98>
    5340:	00058693          	mv	a3,a1
    5344:	00070793          	mv	a5,a4
    5348:	02c77a63          	bgeu	a4,a2,537c <memcpy+0x70>
    534c:	0006a803          	lw	a6,0(a3)
    5350:	00478793          	addi	a5,a5,4
    5354:	00468693          	addi	a3,a3,4
    5358:	ff07ae23          	sw	a6,-4(a5)
    535c:	fec7e8e3          	bltu	a5,a2,534c <memcpy+0x40>
    5360:	fff60613          	addi	a2,a2,-1
    5364:	40e60633          	sub	a2,a2,a4
    5368:	ffc67613          	andi	a2,a2,-4
    536c:	00458593          	addi	a1,a1,4
    5370:	00470713          	addi	a4,a4,4
    5374:	00c585b3          	add	a1,a1,a2
    5378:	00c70733          	add	a4,a4,a2
    537c:	01176863          	bltu	a4,a7,538c <memcpy+0x80>
    5380:	00008067          	ret
    5384:	00050713          	mv	a4,a0
    5388:	ff157ce3          	bgeu	a0,a7,5380 <memcpy+0x74>
    538c:	0005c783          	lbu	a5,0(a1)
    5390:	00170713          	addi	a4,a4,1
    5394:	00158593          	addi	a1,a1,1
    5398:	fef70fa3          	sb	a5,-1(a4)
    539c:	fee898e3          	bne	a7,a4,538c <memcpy+0x80>
    53a0:	00008067          	ret
    53a4:	0005a683          	lw	a3,0(a1)
    53a8:	0045a283          	lw	t0,4(a1)
    53ac:	0085af83          	lw	t6,8(a1)
    53b0:	00c5af03          	lw	t5,12(a1)
    53b4:	0105ae83          	lw	t4,16(a1)
    53b8:	0145ae03          	lw	t3,20(a1)
    53bc:	0185a303          	lw	t1,24(a1)
    53c0:	01c5a803          	lw	a6,28(a1)
    53c4:	00d72023          	sw	a3,0(a4)
    53c8:	0205a683          	lw	a3,32(a1)
    53cc:	02470713          	addi	a4,a4,36
    53d0:	fe572023          	sw	t0,-32(a4)
    53d4:	fed72e23          	sw	a3,-4(a4)
    53d8:	fff72223          	sw	t6,-28(a4)
    53dc:	40e606b3          	sub	a3,a2,a4
    53e0:	ffe72423          	sw	t5,-24(a4)
    53e4:	ffd72623          	sw	t4,-20(a4)
    53e8:	ffc72823          	sw	t3,-16(a4)
    53ec:	fe672a23          	sw	t1,-12(a4)
    53f0:	ff072c23          	sw	a6,-8(a4)
    53f4:	02458593          	addi	a1,a1,36
    53f8:	fad7c6e3          	blt	a5,a3,53a4 <memcpy+0x98>
    53fc:	f45ff06f          	j	5340 <memcpy+0x34>
    5400:	0005c683          	lbu	a3,0(a1)
    5404:	00170713          	addi	a4,a4,1
    5408:	00377793          	andi	a5,a4,3
    540c:	fed70fa3          	sb	a3,-1(a4)
    5410:	00158593          	addi	a1,a1,1
    5414:	f0078ee3          	beqz	a5,5330 <memcpy+0x24>
    5418:	0005c683          	lbu	a3,0(a1)
    541c:	00170713          	addi	a4,a4,1
    5420:	00377793          	andi	a5,a4,3
    5424:	fed70fa3          	sb	a3,-1(a4)
    5428:	00158593          	addi	a1,a1,1
    542c:	fc079ae3          	bnez	a5,5400 <memcpy+0xf4>
    5430:	f01ff06f          	j	5330 <memcpy+0x24>

00005434 <strlen>:
    5434:	00357793          	andi	a5,a0,3
    5438:	00050713          	mv	a4,a0
    543c:	04079c63          	bnez	a5,5494 <strlen+0x60>
    5440:	7f7f86b7          	lui	a3,0x7f7f8
    5444:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__neorv32_ram_size+0x7f7e7f7f>
    5448:	fff00593          	li	a1,-1
    544c:	00072603          	lw	a2,0(a4)
    5450:	00470713          	addi	a4,a4,4
    5454:	00d677b3          	and	a5,a2,a3
    5458:	00d787b3          	add	a5,a5,a3
    545c:	00c7e7b3          	or	a5,a5,a2
    5460:	00d7e7b3          	or	a5,a5,a3
    5464:	feb784e3          	beq	a5,a1,544c <strlen+0x18>
    5468:	ffc74683          	lbu	a3,-4(a4)
    546c:	40a707b3          	sub	a5,a4,a0
    5470:	04068463          	beqz	a3,54b8 <strlen+0x84>
    5474:	ffd74683          	lbu	a3,-3(a4)
    5478:	02068c63          	beqz	a3,54b0 <strlen+0x7c>
    547c:	ffe74503          	lbu	a0,-2(a4)
    5480:	00a03533          	snez	a0,a0
    5484:	00f50533          	add	a0,a0,a5
    5488:	ffe50513          	addi	a0,a0,-2
    548c:	00008067          	ret
    5490:	fa0688e3          	beqz	a3,5440 <strlen+0xc>
    5494:	00074783          	lbu	a5,0(a4)
    5498:	00170713          	addi	a4,a4,1
    549c:	00377693          	andi	a3,a4,3
    54a0:	fe0798e3          	bnez	a5,5490 <strlen+0x5c>
    54a4:	40a70733          	sub	a4,a4,a0
    54a8:	fff70513          	addi	a0,a4,-1
    54ac:	00008067          	ret
    54b0:	ffd78513          	addi	a0,a5,-3
    54b4:	00008067          	ret
    54b8:	ffc78513          	addi	a0,a5,-4
    54bc:	00008067          	ret

000054c0 <_malloc_trim_r>:
    54c0:	fe010113          	addi	sp,sp,-32
    54c4:	01212823          	sw	s2,16(sp)
    54c8:	80000937          	lui	s2,0x80000
    54cc:	00812c23          	sw	s0,24(sp)
    54d0:	00912a23          	sw	s1,20(sp)
    54d4:	01312623          	sw	s3,12(sp)
    54d8:	00058413          	mv	s0,a1
    54dc:	00112e23          	sw	ra,28(sp)
    54e0:	00050993          	mv	s3,a0
    54e4:	00090913          	mv	s2,s2
    54e8:	ac9ff0ef          	jal	4fb0 <__malloc_lock>
    54ec:	00892783          	lw	a5,8(s2) # 80000008 <__malloc_av_+0x8>
    54f0:	00001737          	lui	a4,0x1
    54f4:	0047a483          	lw	s1,4(a5)
    54f8:	ffc4f493          	andi	s1,s1,-4
    54fc:	7ff48793          	addi	a5,s1,2047
    5500:	7f078793          	addi	a5,a5,2032
    5504:	40878433          	sub	s0,a5,s0
    5508:	00c45413          	srli	s0,s0,0xc
    550c:	fff40413          	addi	s0,s0,-1
    5510:	00c41413          	slli	s0,s0,0xc
    5514:	00e44e63          	blt	s0,a4,5530 <_malloc_trim_r+0x70>
    5518:	00000593          	li	a1,0
    551c:	00098513          	mv	a0,s3
    5520:	b8dff0ef          	jal	50ac <_sbrk_r>
    5524:	00892783          	lw	a5,8(s2)
    5528:	009787b3          	add	a5,a5,s1
    552c:	02f50663          	beq	a0,a5,5558 <_malloc_trim_r+0x98>
    5530:	00098513          	mv	a0,s3
    5534:	a81ff0ef          	jal	4fb4 <__malloc_unlock>
    5538:	01c12083          	lw	ra,28(sp)
    553c:	01812403          	lw	s0,24(sp)
    5540:	01412483          	lw	s1,20(sp)
    5544:	01012903          	lw	s2,16(sp)
    5548:	00c12983          	lw	s3,12(sp)
    554c:	00000513          	li	a0,0
    5550:	02010113          	addi	sp,sp,32
    5554:	00008067          	ret
    5558:	408005b3          	neg	a1,s0
    555c:	00098513          	mv	a0,s3
    5560:	b4dff0ef          	jal	50ac <_sbrk_r>
    5564:	fff00793          	li	a5,-1
    5568:	04f50463          	beq	a0,a5,55b0 <_malloc_trim_r+0xf0>
    556c:	00892683          	lw	a3,8(s2)
    5570:	eac1a783          	lw	a5,-340(gp) # 800006ac <__malloc_current_mallinfo>
    5574:	408484b3          	sub	s1,s1,s0
    5578:	0014e493          	ori	s1,s1,1
    557c:	00098513          	mv	a0,s3
    5580:	408787b3          	sub	a5,a5,s0
    5584:	0096a223          	sw	s1,4(a3)
    5588:	eaf1a623          	sw	a5,-340(gp) # 800006ac <__malloc_current_mallinfo>
    558c:	a29ff0ef          	jal	4fb4 <__malloc_unlock>
    5590:	01c12083          	lw	ra,28(sp)
    5594:	01812403          	lw	s0,24(sp)
    5598:	01412483          	lw	s1,20(sp)
    559c:	01012903          	lw	s2,16(sp)
    55a0:	00c12983          	lw	s3,12(sp)
    55a4:	00100513          	li	a0,1
    55a8:	02010113          	addi	sp,sp,32
    55ac:	00008067          	ret
    55b0:	00000593          	li	a1,0
    55b4:	00098513          	mv	a0,s3
    55b8:	af5ff0ef          	jal	50ac <_sbrk_r>
    55bc:	00892703          	lw	a4,8(s2)
    55c0:	00f00693          	li	a3,15
    55c4:	40e507b3          	sub	a5,a0,a4
    55c8:	f6f6d4e3          	bge	a3,a5,5530 <_malloc_trim_r+0x70>
    55cc:	d601a603          	lw	a2,-672(gp) # 80000560 <__malloc_sbrk_base>
    55d0:	0017e793          	ori	a5,a5,1
    55d4:	40c50533          	sub	a0,a0,a2
    55d8:	00f72223          	sw	a5,4(a4) # 1004 <main+0x58c>
    55dc:	eaa1a623          	sw	a0,-340(gp) # 800006ac <__malloc_current_mallinfo>
    55e0:	f51ff06f          	j	5530 <_malloc_trim_r+0x70>

000055e4 <_free_r>:
    55e4:	12058463          	beqz	a1,570c <_free_r+0x128>
    55e8:	fe010113          	addi	sp,sp,-32
    55ec:	00812c23          	sw	s0,24(sp)
    55f0:	00b12623          	sw	a1,12(sp)
    55f4:	00050413          	mv	s0,a0
    55f8:	00112e23          	sw	ra,28(sp)
    55fc:	9b5ff0ef          	jal	4fb0 <__malloc_lock>
    5600:	00c12583          	lw	a1,12(sp)
    5604:	80000837          	lui	a6,0x80000
    5608:	00080813          	mv	a6,a6
    560c:	ffc5a503          	lw	a0,-4(a1)
    5610:	ff858713          	addi	a4,a1,-8
    5614:	00882883          	lw	a7,8(a6) # 80000008 <__malloc_av_+0x8>
    5618:	ffe57793          	andi	a5,a0,-2
    561c:	00f70633          	add	a2,a4,a5
    5620:	00462683          	lw	a3,4(a2)
    5624:	00157313          	andi	t1,a0,1
    5628:	ffc6f693          	andi	a3,a3,-4
    562c:	18c88863          	beq	a7,a2,57bc <_free_r+0x1d8>
    5630:	00d62223          	sw	a3,4(a2)
    5634:	00d608b3          	add	a7,a2,a3
    5638:	0048a883          	lw	a7,4(a7)
    563c:	0018f893          	andi	a7,a7,1
    5640:	08031a63          	bnez	t1,56d4 <_free_r+0xf0>
    5644:	ff85a303          	lw	t1,-8(a1)
    5648:	800005b7          	lui	a1,0x80000
    564c:	00858593          	addi	a1,a1,8 # 80000008 <__malloc_av_+0x8>
    5650:	40670733          	sub	a4,a4,t1
    5654:	00872503          	lw	a0,8(a4)
    5658:	006787b3          	add	a5,a5,t1
    565c:	12b50a63          	beq	a0,a1,5790 <_free_r+0x1ac>
    5660:	00c72303          	lw	t1,12(a4)
    5664:	00652623          	sw	t1,12(a0)
    5668:	00a32423          	sw	a0,8(t1)
    566c:	18088c63          	beqz	a7,5804 <_free_r+0x220>
    5670:	0017e693          	ori	a3,a5,1
    5674:	00d72223          	sw	a3,4(a4)
    5678:	00f62023          	sw	a5,0(a2)
    567c:	1ff00693          	li	a3,511
    5680:	0af6e263          	bltu	a3,a5,5724 <_free_r+0x140>
    5684:	ff87f693          	andi	a3,a5,-8
    5688:	00868693          	addi	a3,a3,8
    568c:	00482583          	lw	a1,4(a6)
    5690:	00d806b3          	add	a3,a6,a3
    5694:	0006a603          	lw	a2,0(a3)
    5698:	0057d513          	srli	a0,a5,0x5
    569c:	00100793          	li	a5,1
    56a0:	00a797b3          	sll	a5,a5,a0
    56a4:	00b7e7b3          	or	a5,a5,a1
    56a8:	ff868593          	addi	a1,a3,-8
    56ac:	00c72423          	sw	a2,8(a4)
    56b0:	00b72623          	sw	a1,12(a4)
    56b4:	00f82223          	sw	a5,4(a6)
    56b8:	00e6a023          	sw	a4,0(a3)
    56bc:	00e62623          	sw	a4,12(a2)
    56c0:	00040513          	mv	a0,s0
    56c4:	01812403          	lw	s0,24(sp)
    56c8:	01c12083          	lw	ra,28(sp)
    56cc:	02010113          	addi	sp,sp,32
    56d0:	8e5ff06f          	j	4fb4 <__malloc_unlock>
    56d4:	02089e63          	bnez	a7,5710 <_free_r+0x12c>
    56d8:	800005b7          	lui	a1,0x80000
    56dc:	00d787b3          	add	a5,a5,a3
    56e0:	00858593          	addi	a1,a1,8 # 80000008 <__malloc_av_+0x8>
    56e4:	00862683          	lw	a3,8(a2)
    56e8:	0017e893          	ori	a7,a5,1
    56ec:	00f70533          	add	a0,a4,a5
    56f0:	16b68063          	beq	a3,a1,5850 <_free_r+0x26c>
    56f4:	00c62603          	lw	a2,12(a2)
    56f8:	00c6a623          	sw	a2,12(a3)
    56fc:	00d62423          	sw	a3,8(a2)
    5700:	01172223          	sw	a7,4(a4)
    5704:	00f52023          	sw	a5,0(a0)
    5708:	f75ff06f          	j	567c <_free_r+0x98>
    570c:	00008067          	ret
    5710:	00156513          	ori	a0,a0,1
    5714:	fea5ae23          	sw	a0,-4(a1)
    5718:	00f62023          	sw	a5,0(a2)
    571c:	1ff00693          	li	a3,511
    5720:	f6f6f2e3          	bgeu	a3,a5,5684 <_free_r+0xa0>
    5724:	0097d693          	srli	a3,a5,0x9
    5728:	00400613          	li	a2,4
    572c:	0ed66063          	bltu	a2,a3,580c <_free_r+0x228>
    5730:	0067d693          	srli	a3,a5,0x6
    5734:	03968593          	addi	a1,a3,57
    5738:	00359593          	slli	a1,a1,0x3
    573c:	03868613          	addi	a2,a3,56
    5740:	00b805b3          	add	a1,a6,a1
    5744:	0005a683          	lw	a3,0(a1)
    5748:	ff858593          	addi	a1,a1,-8
    574c:	00d59863          	bne	a1,a3,575c <_free_r+0x178>
    5750:	11c0006f          	j	586c <_free_r+0x288>
    5754:	0086a683          	lw	a3,8(a3)
    5758:	00d58863          	beq	a1,a3,5768 <_free_r+0x184>
    575c:	0046a603          	lw	a2,4(a3)
    5760:	ffc67613          	andi	a2,a2,-4
    5764:	fec7e8e3          	bltu	a5,a2,5754 <_free_r+0x170>
    5768:	00c6a583          	lw	a1,12(a3)
    576c:	00b72623          	sw	a1,12(a4)
    5770:	00d72423          	sw	a3,8(a4)
    5774:	00040513          	mv	a0,s0
    5778:	01812403          	lw	s0,24(sp)
    577c:	01c12083          	lw	ra,28(sp)
    5780:	00e5a423          	sw	a4,8(a1)
    5784:	00e6a623          	sw	a4,12(a3)
    5788:	02010113          	addi	sp,sp,32
    578c:	829ff06f          	j	4fb4 <__malloc_unlock>
    5790:	0a089063          	bnez	a7,5830 <_free_r+0x24c>
    5794:	00c62583          	lw	a1,12(a2)
    5798:	00862603          	lw	a2,8(a2)
    579c:	00f686b3          	add	a3,a3,a5
    57a0:	0016e793          	ori	a5,a3,1
    57a4:	00b62623          	sw	a1,12(a2)
    57a8:	00c5a423          	sw	a2,8(a1)
    57ac:	00f72223          	sw	a5,4(a4)
    57b0:	00d70733          	add	a4,a4,a3
    57b4:	00d72023          	sw	a3,0(a4)
    57b8:	f09ff06f          	j	56c0 <_free_r+0xdc>
    57bc:	00d786b3          	add	a3,a5,a3
    57c0:	02031063          	bnez	t1,57e0 <_free_r+0x1fc>
    57c4:	ff85a783          	lw	a5,-8(a1)
    57c8:	40f70733          	sub	a4,a4,a5
    57cc:	00872603          	lw	a2,8(a4)
    57d0:	00f686b3          	add	a3,a3,a5
    57d4:	00c72783          	lw	a5,12(a4)
    57d8:	00f62623          	sw	a5,12(a2)
    57dc:	00c7a423          	sw	a2,8(a5)
    57e0:	0016e613          	ori	a2,a3,1
    57e4:	d641a783          	lw	a5,-668(gp) # 80000564 <__malloc_trim_threshold>
    57e8:	00c72223          	sw	a2,4(a4)
    57ec:	00e82423          	sw	a4,8(a6)
    57f0:	ecf6e8e3          	bltu	a3,a5,56c0 <_free_r+0xdc>
    57f4:	da01a583          	lw	a1,-608(gp) # 800005a0 <__malloc_top_pad>
    57f8:	00040513          	mv	a0,s0
    57fc:	cc5ff0ef          	jal	54c0 <_malloc_trim_r>
    5800:	ec1ff06f          	j	56c0 <_free_r+0xdc>
    5804:	00d787b3          	add	a5,a5,a3
    5808:	eddff06f          	j	56e4 <_free_r+0x100>
    580c:	01400613          	li	a2,20
    5810:	02d67863          	bgeu	a2,a3,5840 <_free_r+0x25c>
    5814:	05400613          	li	a2,84
    5818:	06d66863          	bltu	a2,a3,5888 <_free_r+0x2a4>
    581c:	00c7d693          	srli	a3,a5,0xc
    5820:	06f68593          	addi	a1,a3,111
    5824:	00359593          	slli	a1,a1,0x3
    5828:	06e68613          	addi	a2,a3,110
    582c:	f15ff06f          	j	5740 <_free_r+0x15c>
    5830:	0017e693          	ori	a3,a5,1
    5834:	00d72223          	sw	a3,4(a4)
    5838:	00f62023          	sw	a5,0(a2)
    583c:	e85ff06f          	j	56c0 <_free_r+0xdc>
    5840:	05c68593          	addi	a1,a3,92
    5844:	00359593          	slli	a1,a1,0x3
    5848:	05b68613          	addi	a2,a3,91
    584c:	ef5ff06f          	j	5740 <_free_r+0x15c>
    5850:	00e82a23          	sw	a4,20(a6)
    5854:	00e82823          	sw	a4,16(a6)
    5858:	00b72623          	sw	a1,12(a4)
    585c:	00b72423          	sw	a1,8(a4)
    5860:	01172223          	sw	a7,4(a4)
    5864:	00f52023          	sw	a5,0(a0)
    5868:	e59ff06f          	j	56c0 <_free_r+0xdc>
    586c:	00482503          	lw	a0,4(a6)
    5870:	40265613          	srai	a2,a2,0x2
    5874:	00100793          	li	a5,1
    5878:	00c797b3          	sll	a5,a5,a2
    587c:	00a7e7b3          	or	a5,a5,a0
    5880:	00f82223          	sw	a5,4(a6)
    5884:	ee9ff06f          	j	576c <_free_r+0x188>
    5888:	15400613          	li	a2,340
    588c:	00d66c63          	bltu	a2,a3,58a4 <_free_r+0x2c0>
    5890:	00f7d693          	srli	a3,a5,0xf
    5894:	07868593          	addi	a1,a3,120
    5898:	00359593          	slli	a1,a1,0x3
    589c:	07768613          	addi	a2,a3,119
    58a0:	ea1ff06f          	j	5740 <_free_r+0x15c>
    58a4:	55400613          	li	a2,1364
    58a8:	00d66c63          	bltu	a2,a3,58c0 <_free_r+0x2dc>
    58ac:	0127d693          	srli	a3,a5,0x12
    58b0:	07d68593          	addi	a1,a3,125
    58b4:	00359593          	slli	a1,a1,0x3
    58b8:	07c68613          	addi	a2,a3,124
    58bc:	e85ff06f          	j	5740 <_free_r+0x15c>
    58c0:	3f800593          	li	a1,1016
    58c4:	07e00613          	li	a2,126
    58c8:	e79ff06f          	j	5740 <_free_r+0x15c>

000058cc <stdio_exit_handler>:
    58cc:	000075b7          	lui	a1,0x7
    58d0:	d4818613          	addi	a2,gp,-696 # 80000548 <__sglue>
    58d4:	d7858593          	addi	a1,a1,-648 # 6d78 <_fclose_r>
    58d8:	c0818513          	addi	a0,gp,-1016 # 80000408 <_impure_data>
    58dc:	6ac0006f          	j	5f88 <_fwalk_sglue>

000058e0 <cleanup_stdio>:
    58e0:	00452583          	lw	a1,4(a0)
    58e4:	ff010113          	addi	sp,sp,-16
    58e8:	00812423          	sw	s0,8(sp)
    58ec:	00112623          	sw	ra,12(sp)
    58f0:	ed418793          	addi	a5,gp,-300 # 800006d4 <__sf>
    58f4:	00050413          	mv	s0,a0
    58f8:	00f58463          	beq	a1,a5,5900 <cleanup_stdio+0x20>
    58fc:	47c010ef          	jal	6d78 <_fclose_r>
    5900:	00842583          	lw	a1,8(s0)
    5904:	f3c18793          	addi	a5,gp,-196 # 8000073c <__sf+0x68>
    5908:	00f58663          	beq	a1,a5,5914 <cleanup_stdio+0x34>
    590c:	00040513          	mv	a0,s0
    5910:	468010ef          	jal	6d78 <_fclose_r>
    5914:	00c42583          	lw	a1,12(s0)
    5918:	fa418793          	addi	a5,gp,-92 # 800007a4 <__sf+0xd0>
    591c:	00f58c63          	beq	a1,a5,5934 <cleanup_stdio+0x54>
    5920:	00040513          	mv	a0,s0
    5924:	00812403          	lw	s0,8(sp)
    5928:	00c12083          	lw	ra,12(sp)
    592c:	01010113          	addi	sp,sp,16
    5930:	4480106f          	j	6d78 <_fclose_r>
    5934:	00c12083          	lw	ra,12(sp)
    5938:	00812403          	lw	s0,8(sp)
    593c:	01010113          	addi	sp,sp,16
    5940:	00008067          	ret

00005944 <global_stdio_init.part.0>:
    5944:	fe010113          	addi	sp,sp,-32
    5948:	000067b7          	lui	a5,0x6
    594c:	00812c23          	sw	s0,24(sp)
    5950:	8cc78793          	addi	a5,a5,-1844 # 58cc <stdio_exit_handler>
    5954:	ed418413          	addi	s0,gp,-300 # 800006d4 <__sf>
    5958:	00112e23          	sw	ra,28(sp)
    595c:	00912a23          	sw	s1,20(sp)
    5960:	01212823          	sw	s2,16(sp)
    5964:	01312623          	sw	s3,12(sp)
    5968:	01412423          	sw	s4,8(sp)
    596c:	daf1a423          	sw	a5,-600(gp) # 800005a8 <__stdio_exit_handler>
    5970:	00800613          	li	a2,8
    5974:	00400793          	li	a5,4
    5978:	00000593          	li	a1,0
    597c:	f3018513          	addi	a0,gp,-208 # 80000730 <__sf+0x5c>
    5980:	00f42623          	sw	a5,12(s0)
    5984:	00042023          	sw	zero,0(s0)
    5988:	00042223          	sw	zero,4(s0)
    598c:	00042423          	sw	zero,8(s0)
    5990:	06042223          	sw	zero,100(s0)
    5994:	00042823          	sw	zero,16(s0)
    5998:	00042a23          	sw	zero,20(s0)
    599c:	00042c23          	sw	zero,24(s0)
    59a0:	891ff0ef          	jal	5230 <memset>
    59a4:	00006a37          	lui	s4,0x6
    59a8:	000069b7          	lui	s3,0x6
    59ac:	00006937          	lui	s2,0x6
    59b0:	000064b7          	lui	s1,0x6
    59b4:	000107b7          	lui	a5,0x10
    59b8:	108a0a13          	addi	s4,s4,264 # 6108 <__sread>
    59bc:	16498993          	addi	s3,s3,356 # 6164 <__swrite>
    59c0:	1ec90913          	addi	s2,s2,492 # 61ec <__sseek>
    59c4:	25048493          	addi	s1,s1,592 # 6250 <__sclose>
    59c8:	00978793          	addi	a5,a5,9 # 10009 <__neorv32_ram_size+0x9>
    59cc:	00800613          	li	a2,8
    59d0:	00000593          	li	a1,0
    59d4:	f9818513          	addi	a0,gp,-104 # 80000798 <__sf+0xc4>
    59d8:	06f42a23          	sw	a5,116(s0)
    59dc:	03442023          	sw	s4,32(s0)
    59e0:	03342223          	sw	s3,36(s0)
    59e4:	03242423          	sw	s2,40(s0)
    59e8:	02942623          	sw	s1,44(s0)
    59ec:	00842e23          	sw	s0,28(s0)
    59f0:	06042423          	sw	zero,104(s0)
    59f4:	06042623          	sw	zero,108(s0)
    59f8:	06042823          	sw	zero,112(s0)
    59fc:	0c042623          	sw	zero,204(s0)
    5a00:	06042c23          	sw	zero,120(s0)
    5a04:	06042e23          	sw	zero,124(s0)
    5a08:	08042023          	sw	zero,128(s0)
    5a0c:	825ff0ef          	jal	5230 <memset>
    5a10:	000207b7          	lui	a5,0x20
    5a14:	01278793          	addi	a5,a5,18 # 20012 <__neorv32_ram_size+0x10012>
    5a18:	f3c18713          	addi	a4,gp,-196 # 8000073c <__sf+0x68>
    5a1c:	00018513          	mv	a0,gp
    5a20:	00800613          	li	a2,8
    5a24:	00000593          	li	a1,0
    5a28:	09442423          	sw	s4,136(s0)
    5a2c:	09342623          	sw	s3,140(s0)
    5a30:	09242823          	sw	s2,144(s0)
    5a34:	08942a23          	sw	s1,148(s0)
    5a38:	0cf42e23          	sw	a5,220(s0)
    5a3c:	0c042823          	sw	zero,208(s0)
    5a40:	0c042a23          	sw	zero,212(s0)
    5a44:	0c042c23          	sw	zero,216(s0)
    5a48:	12042a23          	sw	zero,308(s0)
    5a4c:	0e042023          	sw	zero,224(s0)
    5a50:	0e042223          	sw	zero,228(s0)
    5a54:	0e042423          	sw	zero,232(s0)
    5a58:	08e42223          	sw	a4,132(s0)
    5a5c:	fd4ff0ef          	jal	5230 <memset>
    5a60:	fa418793          	addi	a5,gp,-92 # 800007a4 <__sf+0xd0>
    5a64:	0f442823          	sw	s4,240(s0)
    5a68:	0f342a23          	sw	s3,244(s0)
    5a6c:	0f242c23          	sw	s2,248(s0)
    5a70:	0e942e23          	sw	s1,252(s0)
    5a74:	01c12083          	lw	ra,28(sp)
    5a78:	0ef42623          	sw	a5,236(s0)
    5a7c:	01812403          	lw	s0,24(sp)
    5a80:	01412483          	lw	s1,20(sp)
    5a84:	01012903          	lw	s2,16(sp)
    5a88:	00c12983          	lw	s3,12(sp)
    5a8c:	00812a03          	lw	s4,8(sp)
    5a90:	02010113          	addi	sp,sp,32
    5a94:	00008067          	ret

00005a98 <__sinit>:
    5a98:	03452783          	lw	a5,52(a0)
    5a9c:	00078463          	beqz	a5,5aa4 <__sinit+0xc>
    5aa0:	00008067          	ret
    5aa4:	000067b7          	lui	a5,0x6
    5aa8:	da81a703          	lw	a4,-600(gp) # 800005a8 <__stdio_exit_handler>
    5aac:	8e078793          	addi	a5,a5,-1824 # 58e0 <cleanup_stdio>
    5ab0:	02f52a23          	sw	a5,52(a0)
    5ab4:	fe0716e3          	bnez	a4,5aa0 <__sinit+0x8>
    5ab8:	e8dff06f          	j	5944 <global_stdio_init.part.0>

00005abc <__sfp_lock_acquire>:
    5abc:	00008067          	ret

00005ac0 <__sfp_lock_release>:
    5ac0:	00008067          	ret

00005ac4 <__sfvwrite_r>:
    5ac4:	00862783          	lw	a5,8(a2)
    5ac8:	22078c63          	beqz	a5,5d00 <__sfvwrite_r+0x23c>
    5acc:	00c59683          	lh	a3,12(a1)
    5ad0:	fc010113          	addi	sp,sp,-64
    5ad4:	02812c23          	sw	s0,56(sp)
    5ad8:	03412423          	sw	s4,40(sp)
    5adc:	03512223          	sw	s5,36(sp)
    5ae0:	02112e23          	sw	ra,60(sp)
    5ae4:	0086f793          	andi	a5,a3,8
    5ae8:	00058413          	mv	s0,a1
    5aec:	00050a93          	mv	s5,a0
    5af0:	00060a13          	mv	s4,a2
    5af4:	0a078463          	beqz	a5,5b9c <__sfvwrite_r+0xd8>
    5af8:	0105a783          	lw	a5,16(a1)
    5afc:	0a078063          	beqz	a5,5b9c <__sfvwrite_r+0xd8>
    5b00:	02912a23          	sw	s1,52(sp)
    5b04:	03212823          	sw	s2,48(sp)
    5b08:	03312623          	sw	s3,44(sp)
    5b0c:	03612023          	sw	s6,32(sp)
    5b10:	0026f793          	andi	a5,a3,2
    5b14:	000a2483          	lw	s1,0(s4)
    5b18:	0a078a63          	beqz	a5,5bcc <__sfvwrite_r+0x108>
    5b1c:	80000b37          	lui	s6,0x80000
    5b20:	c00b0b13          	addi	s6,s6,-1024 # 7ffffc00 <__neorv32_ram_size+0x7ffefc00>
    5b24:	00000993          	li	s3,0
    5b28:	00000913          	li	s2,0
    5b2c:	00098613          	mv	a2,s3
    5b30:	000a8513          	mv	a0,s5
    5b34:	1a090e63          	beqz	s2,5cf0 <__sfvwrite_r+0x22c>
    5b38:	00090693          	mv	a3,s2
    5b3c:	012b7663          	bgeu	s6,s2,5b48 <__sfvwrite_r+0x84>
    5b40:	800006b7          	lui	a3,0x80000
    5b44:	c0068693          	addi	a3,a3,-1024 # 7ffffc00 <__neorv32_ram_size+0x7ffefc00>
    5b48:	02442783          	lw	a5,36(s0)
    5b4c:	01c42583          	lw	a1,28(s0)
    5b50:	000780e7          	jalr	a5
    5b54:	40a05a63          	blez	a0,5f68 <__sfvwrite_r+0x4a4>
    5b58:	008a2783          	lw	a5,8(s4)
    5b5c:	00a989b3          	add	s3,s3,a0
    5b60:	40a90933          	sub	s2,s2,a0
    5b64:	40a787b3          	sub	a5,a5,a0
    5b68:	00fa2423          	sw	a5,8(s4)
    5b6c:	fc0790e3          	bnez	a5,5b2c <__sfvwrite_r+0x68>
    5b70:	03412483          	lw	s1,52(sp)
    5b74:	03012903          	lw	s2,48(sp)
    5b78:	02c12983          	lw	s3,44(sp)
    5b7c:	02012b03          	lw	s6,32(sp)
    5b80:	00000513          	li	a0,0
    5b84:	03c12083          	lw	ra,60(sp)
    5b88:	03812403          	lw	s0,56(sp)
    5b8c:	02812a03          	lw	s4,40(sp)
    5b90:	02412a83          	lw	s5,36(sp)
    5b94:	04010113          	addi	sp,sp,64
    5b98:	00008067          	ret
    5b9c:	00040593          	mv	a1,s0
    5ba0:	000a8513          	mv	a0,s5
    5ba4:	009000ef          	jal	63ac <__swsetup_r>
    5ba8:	26051663          	bnez	a0,5e14 <__sfvwrite_r+0x350>
    5bac:	00c41683          	lh	a3,12(s0)
    5bb0:	02912a23          	sw	s1,52(sp)
    5bb4:	03212823          	sw	s2,48(sp)
    5bb8:	03312623          	sw	s3,44(sp)
    5bbc:	03612023          	sw	s6,32(sp)
    5bc0:	0026f793          	andi	a5,a3,2
    5bc4:	000a2483          	lw	s1,0(s4)
    5bc8:	f4079ae3          	bnez	a5,5b1c <__sfvwrite_r+0x58>
    5bcc:	01712e23          	sw	s7,28(sp)
    5bd0:	01812c23          	sw	s8,24(sp)
    5bd4:	0016f793          	andi	a5,a3,1
    5bd8:	12079863          	bnez	a5,5d08 <__sfvwrite_r+0x244>
    5bdc:	00042783          	lw	a5,0(s0)
    5be0:	80000737          	lui	a4,0x80000
    5be4:	fff70c13          	addi	s8,a4,-1 # 7fffffff <__neorv32_ram_size+0x7ffeffff>
    5be8:	00000b13          	li	s6,0
    5bec:	00000993          	li	s3,0
    5bf0:	0e098863          	beqz	s3,5ce0 <__sfvwrite_r+0x21c>
    5bf4:	2006f713          	andi	a4,a3,512
    5bf8:	00842903          	lw	s2,8(s0)
    5bfc:	00078513          	mv	a0,a5
    5c00:	20070e63          	beqz	a4,5e1c <__sfvwrite_r+0x358>
    5c04:	00090b93          	mv	s7,s2
    5c08:	2d29e263          	bltu	s3,s2,5ecc <__sfvwrite_r+0x408>
    5c0c:	4806f713          	andi	a4,a3,1152
    5c10:	08070c63          	beqz	a4,5ca8 <__sfvwrite_r+0x1e4>
    5c14:	01442603          	lw	a2,20(s0)
    5c18:	01042583          	lw	a1,16(s0)
    5c1c:	00161713          	slli	a4,a2,0x1
    5c20:	00c70733          	add	a4,a4,a2
    5c24:	01f75913          	srli	s2,a4,0x1f
    5c28:	40b78bb3          	sub	s7,a5,a1
    5c2c:	00e90933          	add	s2,s2,a4
    5c30:	001b8793          	addi	a5,s7,1
    5c34:	40195913          	srai	s2,s2,0x1
    5c38:	013787b3          	add	a5,a5,s3
    5c3c:	00090613          	mv	a2,s2
    5c40:	00f97663          	bgeu	s2,a5,5c4c <__sfvwrite_r+0x188>
    5c44:	00078913          	mv	s2,a5
    5c48:	00078613          	mv	a2,a5
    5c4c:	4006f693          	andi	a3,a3,1024
    5c50:	2c068463          	beqz	a3,5f18 <__sfvwrite_r+0x454>
    5c54:	00060593          	mv	a1,a2
    5c58:	000a8513          	mv	a0,s5
    5c5c:	ad9fe0ef          	jal	4734 <_malloc_r>
    5c60:	30050863          	beqz	a0,5f70 <__sfvwrite_r+0x4ac>
    5c64:	01042583          	lw	a1,16(s0)
    5c68:	000b8613          	mv	a2,s7
    5c6c:	00a12623          	sw	a0,12(sp)
    5c70:	e9cff0ef          	jal	530c <memcpy>
    5c74:	00c45783          	lhu	a5,12(s0)
    5c78:	00c12703          	lw	a4,12(sp)
    5c7c:	b7f7f793          	andi	a5,a5,-1153
    5c80:	0807e793          	ori	a5,a5,128
    5c84:	00f41623          	sh	a5,12(s0)
    5c88:	417907b3          	sub	a5,s2,s7
    5c8c:	01770533          	add	a0,a4,s7
    5c90:	01242a23          	sw	s2,20(s0)
    5c94:	00e42823          	sw	a4,16(s0)
    5c98:	00a42023          	sw	a0,0(s0)
    5c9c:	00f42423          	sw	a5,8(s0)
    5ca0:	00098913          	mv	s2,s3
    5ca4:	00098b93          	mv	s7,s3
    5ca8:	000b0593          	mv	a1,s6
    5cac:	000b8613          	mv	a2,s7
    5cb0:	c58ff0ef          	jal	5108 <memmove>
    5cb4:	00842703          	lw	a4,8(s0)
    5cb8:	00042783          	lw	a5,0(s0)
    5cbc:	41270733          	sub	a4,a4,s2
    5cc0:	00e42423          	sw	a4,8(s0)
    5cc4:	008a2703          	lw	a4,8(s4)
    5cc8:	017787b3          	add	a5,a5,s7
    5ccc:	00f42023          	sw	a5,0(s0)
    5cd0:	41370733          	sub	a4,a4,s3
    5cd4:	00ea2423          	sw	a4,8(s4)
    5cd8:	28070263          	beqz	a4,5f5c <__sfvwrite_r+0x498>
    5cdc:	00c41683          	lh	a3,12(s0)
    5ce0:	0004ab03          	lw	s6,0(s1)
    5ce4:	0044a983          	lw	s3,4(s1)
    5ce8:	00848493          	addi	s1,s1,8
    5cec:	f05ff06f          	j	5bf0 <__sfvwrite_r+0x12c>
    5cf0:	0004a983          	lw	s3,0(s1)
    5cf4:	0044a903          	lw	s2,4(s1)
    5cf8:	00848493          	addi	s1,s1,8
    5cfc:	e31ff06f          	j	5b2c <__sfvwrite_r+0x68>
    5d00:	00000513          	li	a0,0
    5d04:	00008067          	ret
    5d08:	00000b13          	li	s6,0
    5d0c:	00000b93          	li	s7,0
    5d10:	00000513          	li	a0,0
    5d14:	00000c13          	li	s8,0
    5d18:	060b0e63          	beqz	s6,5d94 <__sfvwrite_r+0x2d0>
    5d1c:	08050663          	beqz	a0,5da8 <__sfvwrite_r+0x2e4>
    5d20:	000b8793          	mv	a5,s7
    5d24:	000b0993          	mv	s3,s6
    5d28:	0167f463          	bgeu	a5,s6,5d30 <__sfvwrite_r+0x26c>
    5d2c:	00078993          	mv	s3,a5
    5d30:	01442683          	lw	a3,20(s0)
    5d34:	00842903          	lw	s2,8(s0)
    5d38:	00042503          	lw	a0,0(s0)
    5d3c:	01042783          	lw	a5,16(s0)
    5d40:	01268933          	add	s2,a3,s2
    5d44:	00a7f463          	bgeu	a5,a0,5d4c <__sfvwrite_r+0x288>
    5d48:	09394063          	blt	s2,s3,5dc8 <__sfvwrite_r+0x304>
    5d4c:	1ad9c063          	blt	s3,a3,5eec <__sfvwrite_r+0x428>
    5d50:	02442783          	lw	a5,36(s0)
    5d54:	01c42583          	lw	a1,28(s0)
    5d58:	000c0613          	mv	a2,s8
    5d5c:	000a8513          	mv	a0,s5
    5d60:	000780e7          	jalr	a5
    5d64:	00050913          	mv	s2,a0
    5d68:	08a05463          	blez	a0,5df0 <__sfvwrite_r+0x32c>
    5d6c:	412b8bb3          	sub	s7,s7,s2
    5d70:	00100513          	li	a0,1
    5d74:	160b8263          	beqz	s7,5ed8 <__sfvwrite_r+0x414>
    5d78:	008a2783          	lw	a5,8(s4)
    5d7c:	412787b3          	sub	a5,a5,s2
    5d80:	00fa2423          	sw	a5,8(s4)
    5d84:	1c078c63          	beqz	a5,5f5c <__sfvwrite_r+0x498>
    5d88:	412b0b33          	sub	s6,s6,s2
    5d8c:	012c0c33          	add	s8,s8,s2
    5d90:	f80b16e3          	bnez	s6,5d1c <__sfvwrite_r+0x258>
    5d94:	0044ab03          	lw	s6,4(s1)
    5d98:	00048793          	mv	a5,s1
    5d9c:	00848493          	addi	s1,s1,8
    5da0:	fe0b0ae3          	beqz	s6,5d94 <__sfvwrite_r+0x2d0>
    5da4:	0007ac03          	lw	s8,0(a5)
    5da8:	000b0613          	mv	a2,s6
    5dac:	00a00593          	li	a1,10
    5db0:	000c0513          	mv	a0,s8
    5db4:	75c000ef          	jal	6510 <memchr>
    5db8:	18050c63          	beqz	a0,5f50 <__sfvwrite_r+0x48c>
    5dbc:	00150513          	addi	a0,a0,1
    5dc0:	41850bb3          	sub	s7,a0,s8
    5dc4:	f5dff06f          	j	5d20 <__sfvwrite_r+0x25c>
    5dc8:	000c0593          	mv	a1,s8
    5dcc:	00090613          	mv	a2,s2
    5dd0:	b38ff0ef          	jal	5108 <memmove>
    5dd4:	00042783          	lw	a5,0(s0)
    5dd8:	00040593          	mv	a1,s0
    5ddc:	000a8513          	mv	a0,s5
    5de0:	012787b3          	add	a5,a5,s2
    5de4:	00f42023          	sw	a5,0(s0)
    5de8:	2f4010ef          	jal	70dc <_fflush_r>
    5dec:	f80500e3          	beqz	a0,5d6c <__sfvwrite_r+0x2a8>
    5df0:	00c41783          	lh	a5,12(s0)
    5df4:	01c12b83          	lw	s7,28(sp)
    5df8:	01812c03          	lw	s8,24(sp)
    5dfc:	03412483          	lw	s1,52(sp)
    5e00:	03012903          	lw	s2,48(sp)
    5e04:	02c12983          	lw	s3,44(sp)
    5e08:	02012b03          	lw	s6,32(sp)
    5e0c:	0407e793          	ori	a5,a5,64
    5e10:	00f41623          	sh	a5,12(s0)
    5e14:	fff00513          	li	a0,-1
    5e18:	d6dff06f          	j	5b84 <__sfvwrite_r+0xc0>
    5e1c:	01042703          	lw	a4,16(s0)
    5e20:	06f76263          	bltu	a4,a5,5e84 <__sfvwrite_r+0x3c0>
    5e24:	01442583          	lw	a1,20(s0)
    5e28:	04b9ee63          	bltu	s3,a1,5e84 <__sfvwrite_r+0x3c0>
    5e2c:	00098913          	mv	s2,s3
    5e30:	013c7463          	bgeu	s8,s3,5e38 <__sfvwrite_r+0x374>
    5e34:	000c0913          	mv	s2,s8
    5e38:	00090513          	mv	a0,s2
    5e3c:	601030ef          	jal	9c3c <__modsi3>
    5e40:	02442783          	lw	a5,36(s0)
    5e44:	01c42583          	lw	a1,28(s0)
    5e48:	40a906b3          	sub	a3,s2,a0
    5e4c:	000b0613          	mv	a2,s6
    5e50:	000a8513          	mv	a0,s5
    5e54:	000780e7          	jalr	a5
    5e58:	f8a05ce3          	blez	a0,5df0 <__sfvwrite_r+0x32c>
    5e5c:	00050913          	mv	s2,a0
    5e60:	008a2783          	lw	a5,8(s4)
    5e64:	412989b3          	sub	s3,s3,s2
    5e68:	412787b3          	sub	a5,a5,s2
    5e6c:	00fa2423          	sw	a5,8(s4)
    5e70:	0e078663          	beqz	a5,5f5c <__sfvwrite_r+0x498>
    5e74:	00c41683          	lh	a3,12(s0)
    5e78:	00042783          	lw	a5,0(s0)
    5e7c:	012b0b33          	add	s6,s6,s2
    5e80:	d71ff06f          	j	5bf0 <__sfvwrite_r+0x12c>
    5e84:	0129f463          	bgeu	s3,s2,5e8c <__sfvwrite_r+0x3c8>
    5e88:	00098913          	mv	s2,s3
    5e8c:	00078513          	mv	a0,a5
    5e90:	00090613          	mv	a2,s2
    5e94:	000b0593          	mv	a1,s6
    5e98:	a70ff0ef          	jal	5108 <memmove>
    5e9c:	00042783          	lw	a5,0(s0)
    5ea0:	00842703          	lw	a4,8(s0)
    5ea4:	012787b3          	add	a5,a5,s2
    5ea8:	41270733          	sub	a4,a4,s2
    5eac:	00f42023          	sw	a5,0(s0)
    5eb0:	00e42423          	sw	a4,8(s0)
    5eb4:	fa0716e3          	bnez	a4,5e60 <__sfvwrite_r+0x39c>
    5eb8:	00040593          	mv	a1,s0
    5ebc:	000a8513          	mv	a0,s5
    5ec0:	21c010ef          	jal	70dc <_fflush_r>
    5ec4:	f8050ee3          	beqz	a0,5e60 <__sfvwrite_r+0x39c>
    5ec8:	f29ff06f          	j	5df0 <__sfvwrite_r+0x32c>
    5ecc:	00098913          	mv	s2,s3
    5ed0:	00098b93          	mv	s7,s3
    5ed4:	dd5ff06f          	j	5ca8 <__sfvwrite_r+0x1e4>
    5ed8:	00040593          	mv	a1,s0
    5edc:	000a8513          	mv	a0,s5
    5ee0:	1fc010ef          	jal	70dc <_fflush_r>
    5ee4:	e8050ae3          	beqz	a0,5d78 <__sfvwrite_r+0x2b4>
    5ee8:	f09ff06f          	j	5df0 <__sfvwrite_r+0x32c>
    5eec:	00098613          	mv	a2,s3
    5ef0:	000c0593          	mv	a1,s8
    5ef4:	a14ff0ef          	jal	5108 <memmove>
    5ef8:	00842703          	lw	a4,8(s0)
    5efc:	00042783          	lw	a5,0(s0)
    5f00:	00098913          	mv	s2,s3
    5f04:	41370733          	sub	a4,a4,s3
    5f08:	013787b3          	add	a5,a5,s3
    5f0c:	00e42423          	sw	a4,8(s0)
    5f10:	00f42023          	sw	a5,0(s0)
    5f14:	e59ff06f          	j	5d6c <__sfvwrite_r+0x2a8>
    5f18:	000a8513          	mv	a0,s5
    5f1c:	02d000ef          	jal	6748 <_realloc_r>
    5f20:	00050713          	mv	a4,a0
    5f24:	d60512e3          	bnez	a0,5c88 <__sfvwrite_r+0x1c4>
    5f28:	01042583          	lw	a1,16(s0)
    5f2c:	000a8513          	mv	a0,s5
    5f30:	eb4ff0ef          	jal	55e4 <_free_r>
    5f34:	00c45783          	lhu	a5,12(s0)
    5f38:	00c00713          	li	a4,12
    5f3c:	01c12b83          	lw	s7,28(sp)
    5f40:	01812c03          	lw	s8,24(sp)
    5f44:	00eaa023          	sw	a4,0(s5)
    5f48:	f7f7f793          	andi	a5,a5,-129
    5f4c:	eb1ff06f          	j	5dfc <__sfvwrite_r+0x338>
    5f50:	001b0793          	addi	a5,s6,1
    5f54:	00078b93          	mv	s7,a5
    5f58:	dcdff06f          	j	5d24 <__sfvwrite_r+0x260>
    5f5c:	01c12b83          	lw	s7,28(sp)
    5f60:	01812c03          	lw	s8,24(sp)
    5f64:	c0dff06f          	j	5b70 <__sfvwrite_r+0xac>
    5f68:	00c41783          	lh	a5,12(s0)
    5f6c:	e91ff06f          	j	5dfc <__sfvwrite_r+0x338>
    5f70:	00c00793          	li	a5,12
    5f74:	00faa023          	sw	a5,0(s5)
    5f78:	01c12b83          	lw	s7,28(sp)
    5f7c:	00c41783          	lh	a5,12(s0)
    5f80:	01812c03          	lw	s8,24(sp)
    5f84:	e79ff06f          	j	5dfc <__sfvwrite_r+0x338>

00005f88 <_fwalk_sglue>:
    5f88:	fd010113          	addi	sp,sp,-48
    5f8c:	03212023          	sw	s2,32(sp)
    5f90:	01312e23          	sw	s3,28(sp)
    5f94:	01412c23          	sw	s4,24(sp)
    5f98:	01512a23          	sw	s5,20(sp)
    5f9c:	01612823          	sw	s6,16(sp)
    5fa0:	01712623          	sw	s7,12(sp)
    5fa4:	02112623          	sw	ra,44(sp)
    5fa8:	02812423          	sw	s0,40(sp)
    5fac:	02912223          	sw	s1,36(sp)
    5fb0:	00060a93          	mv	s5,a2
    5fb4:	00050b13          	mv	s6,a0
    5fb8:	00058b93          	mv	s7,a1
    5fbc:	00000a13          	li	s4,0
    5fc0:	00100993          	li	s3,1
    5fc4:	fff00913          	li	s2,-1
    5fc8:	004aa483          	lw	s1,4(s5)
    5fcc:	fff48493          	addi	s1,s1,-1
    5fd0:	0204ca63          	bltz	s1,6004 <_fwalk_sglue+0x7c>
    5fd4:	008aa403          	lw	s0,8(s5)
    5fd8:	00c45783          	lhu	a5,12(s0)
    5fdc:	00f9fe63          	bgeu	s3,a5,5ff8 <_fwalk_sglue+0x70>
    5fe0:	00e41783          	lh	a5,14(s0)
    5fe4:	00040593          	mv	a1,s0
    5fe8:	000b0513          	mv	a0,s6
    5fec:	01278663          	beq	a5,s2,5ff8 <_fwalk_sglue+0x70>
    5ff0:	000b80e7          	jalr	s7
    5ff4:	00aa6a33          	or	s4,s4,a0
    5ff8:	fff48493          	addi	s1,s1,-1
    5ffc:	06840413          	addi	s0,s0,104
    6000:	fd249ce3          	bne	s1,s2,5fd8 <_fwalk_sglue+0x50>
    6004:	000aaa83          	lw	s5,0(s5)
    6008:	fc0a90e3          	bnez	s5,5fc8 <_fwalk_sglue+0x40>
    600c:	02c12083          	lw	ra,44(sp)
    6010:	02812403          	lw	s0,40(sp)
    6014:	02412483          	lw	s1,36(sp)
    6018:	02012903          	lw	s2,32(sp)
    601c:	01c12983          	lw	s3,28(sp)
    6020:	01412a83          	lw	s5,20(sp)
    6024:	01012b03          	lw	s6,16(sp)
    6028:	00c12b83          	lw	s7,12(sp)
    602c:	000a0513          	mv	a0,s4
    6030:	01812a03          	lw	s4,24(sp)
    6034:	03010113          	addi	sp,sp,48
    6038:	00008067          	ret

0000603c <_putc_r>:
    603c:	00050713          	mv	a4,a0
    6040:	00050663          	beqz	a0,604c <_putc_r+0x10>
    6044:	03452783          	lw	a5,52(a0)
    6048:	04078463          	beqz	a5,6090 <_putc_r+0x54>
    604c:	00862783          	lw	a5,8(a2)
    6050:	0ff5f693          	zext.b	a3,a1
    6054:	fff78793          	addi	a5,a5,-1
    6058:	00f62423          	sw	a5,8(a2)
    605c:	0007da63          	bgez	a5,6070 <_putc_r+0x34>
    6060:	01862503          	lw	a0,24(a2)
    6064:	02a7c263          	blt	a5,a0,6088 <_putc_r+0x4c>
    6068:	ff668793          	addi	a5,a3,-10
    606c:	00078e63          	beqz	a5,6088 <_putc_r+0x4c>
    6070:	00062783          	lw	a5,0(a2)
    6074:	0ff5f513          	zext.b	a0,a1
    6078:	00178713          	addi	a4,a5,1
    607c:	00e62023          	sw	a4,0(a2)
    6080:	00d78023          	sb	a3,0(a5)
    6084:	00008067          	ret
    6088:	00070513          	mv	a0,a4
    608c:	1cc0006f          	j	6258 <__swbuf_r>
    6090:	fe010113          	addi	sp,sp,-32
    6094:	00c12623          	sw	a2,12(sp)
    6098:	00b12423          	sw	a1,8(sp)
    609c:	00112e23          	sw	ra,28(sp)
    60a0:	00a12223          	sw	a0,4(sp)
    60a4:	9f5ff0ef          	jal	5a98 <__sinit>
    60a8:	00c12603          	lw	a2,12(sp)
    60ac:	00812583          	lw	a1,8(sp)
    60b0:	00412703          	lw	a4,4(sp)
    60b4:	00862783          	lw	a5,8(a2)
    60b8:	0ff5f693          	zext.b	a3,a1
    60bc:	fff78793          	addi	a5,a5,-1
    60c0:	00f62423          	sw	a5,8(a2)
    60c4:	0007da63          	bgez	a5,60d8 <_putc_r+0x9c>
    60c8:	01862503          	lw	a0,24(a2)
    60cc:	02a7c663          	blt	a5,a0,60f8 <_putc_r+0xbc>
    60d0:	ff668793          	addi	a5,a3,-10
    60d4:	02078263          	beqz	a5,60f8 <_putc_r+0xbc>
    60d8:	00062783          	lw	a5,0(a2)
    60dc:	0ff5f513          	zext.b	a0,a1
    60e0:	00178713          	addi	a4,a5,1
    60e4:	00e62023          	sw	a4,0(a2)
    60e8:	00d78023          	sb	a3,0(a5)
    60ec:	01c12083          	lw	ra,28(sp)
    60f0:	02010113          	addi	sp,sp,32
    60f4:	00008067          	ret
    60f8:	01c12083          	lw	ra,28(sp)
    60fc:	00070513          	mv	a0,a4
    6100:	02010113          	addi	sp,sp,32
    6104:	1540006f          	j	6258 <__swbuf_r>

00006108 <__sread>:
    6108:	ff010113          	addi	sp,sp,-16
    610c:	00812423          	sw	s0,8(sp)
    6110:	00058413          	mv	s0,a1
    6114:	00e59583          	lh	a1,14(a1)
    6118:	00112623          	sw	ra,12(sp)
    611c:	55c000ef          	jal	6678 <_read_r>
    6120:	02054063          	bltz	a0,6140 <__sread+0x38>
    6124:	05042783          	lw	a5,80(s0)
    6128:	00c12083          	lw	ra,12(sp)
    612c:	00a787b3          	add	a5,a5,a0
    6130:	04f42823          	sw	a5,80(s0)
    6134:	00812403          	lw	s0,8(sp)
    6138:	01010113          	addi	sp,sp,16
    613c:	00008067          	ret
    6140:	00c45783          	lhu	a5,12(s0)
    6144:	fffff737          	lui	a4,0xfffff
    6148:	fff70713          	addi	a4,a4,-1 # ffffefff <__crt0_stack_top+0x7ffeefff>
    614c:	00e7f7b3          	and	a5,a5,a4
    6150:	00c12083          	lw	ra,12(sp)
    6154:	00f41623          	sh	a5,12(s0)
    6158:	00812403          	lw	s0,8(sp)
    615c:	01010113          	addi	sp,sp,16
    6160:	00008067          	ret

00006164 <__swrite>:
    6164:	00c59783          	lh	a5,12(a1)
    6168:	fe010113          	addi	sp,sp,-32
    616c:	00068313          	mv	t1,a3
    6170:	00112e23          	sw	ra,28(sp)
    6174:	1007f693          	andi	a3,a5,256
    6178:	00058713          	mv	a4,a1
    617c:	00060893          	mv	a7,a2
    6180:	00050813          	mv	a6,a0
    6184:	02069863          	bnez	a3,61b4 <__swrite+0x50>
    6188:	fffff6b7          	lui	a3,0xfffff
    618c:	fff68693          	addi	a3,a3,-1 # ffffefff <__crt0_stack_top+0x7ffeefff>
    6190:	01c12083          	lw	ra,28(sp)
    6194:	00d7f7b3          	and	a5,a5,a3
    6198:	00e71583          	lh	a1,14(a4)
    619c:	00f71623          	sh	a5,12(a4)
    61a0:	00030693          	mv	a3,t1
    61a4:	00088613          	mv	a2,a7
    61a8:	00080513          	mv	a0,a6
    61ac:	02010113          	addi	sp,sp,32
    61b0:	5300006f          	j	66e0 <_write_r>
    61b4:	00e59583          	lh	a1,14(a1)
    61b8:	00c12423          	sw	a2,8(sp)
    61bc:	00200693          	li	a3,2
    61c0:	00000613          	li	a2,0
    61c4:	00612623          	sw	t1,12(sp)
    61c8:	00e12023          	sw	a4,0(sp)
    61cc:	00a12223          	sw	a0,4(sp)
    61d0:	440000ef          	jal	6610 <_lseek_r>
    61d4:	00012703          	lw	a4,0(sp)
    61d8:	00c12303          	lw	t1,12(sp)
    61dc:	00812883          	lw	a7,8(sp)
    61e0:	00c71783          	lh	a5,12(a4)
    61e4:	00412803          	lw	a6,4(sp)
    61e8:	fa1ff06f          	j	6188 <__swrite+0x24>

000061ec <__sseek>:
    61ec:	ff010113          	addi	sp,sp,-16
    61f0:	00812423          	sw	s0,8(sp)
    61f4:	00058413          	mv	s0,a1
    61f8:	00e59583          	lh	a1,14(a1)
    61fc:	00112623          	sw	ra,12(sp)
    6200:	410000ef          	jal	6610 <_lseek_r>
    6204:	fff00713          	li	a4,-1
    6208:	00c41783          	lh	a5,12(s0)
    620c:	02e50263          	beq	a0,a4,6230 <__sseek+0x44>
    6210:	00001737          	lui	a4,0x1
    6214:	00e7e7b3          	or	a5,a5,a4
    6218:	00c12083          	lw	ra,12(sp)
    621c:	04a42823          	sw	a0,80(s0)
    6220:	00f41623          	sh	a5,12(s0)
    6224:	00812403          	lw	s0,8(sp)
    6228:	01010113          	addi	sp,sp,16
    622c:	00008067          	ret
    6230:	80050713          	addi	a4,a0,-2048
    6234:	80070713          	addi	a4,a4,-2048 # 800 <core_list_init+0xe4>
    6238:	00e7f7b3          	and	a5,a5,a4
    623c:	00c12083          	lw	ra,12(sp)
    6240:	00f41623          	sh	a5,12(s0)
    6244:	00812403          	lw	s0,8(sp)
    6248:	01010113          	addi	sp,sp,16
    624c:	00008067          	ret

00006250 <__sclose>:
    6250:	00e59583          	lh	a1,14(a1)
    6254:	3600006f          	j	65b4 <_close_r>

00006258 <__swbuf_r>:
    6258:	fe010113          	addi	sp,sp,-32
    625c:	00812c23          	sw	s0,24(sp)
    6260:	00912a23          	sw	s1,20(sp)
    6264:	00112e23          	sw	ra,28(sp)
    6268:	00050493          	mv	s1,a0
    626c:	00058413          	mv	s0,a1
    6270:	00050663          	beqz	a0,627c <__swbuf_r+0x24>
    6274:	03452783          	lw	a5,52(a0)
    6278:	12078263          	beqz	a5,639c <__swbuf_r+0x144>
    627c:	01862703          	lw	a4,24(a2)
    6280:	00c61783          	lh	a5,12(a2)
    6284:	00e62423          	sw	a4,8(a2)
    6288:	0087f713          	andi	a4,a5,8
    628c:	08070663          	beqz	a4,6318 <__swbuf_r+0xc0>
    6290:	01062703          	lw	a4,16(a2)
    6294:	08070263          	beqz	a4,6318 <__swbuf_r+0xc0>
    6298:	01279693          	slli	a3,a5,0x12
    629c:	06462703          	lw	a4,100(a2)
    62a0:	000025b7          	lui	a1,0x2
    62a4:	0a06d063          	bgez	a3,6344 <__swbuf_r+0xec>
    62a8:	01271793          	slli	a5,a4,0x12
    62ac:	0c07c263          	bltz	a5,6370 <__swbuf_r+0x118>
    62b0:	00062703          	lw	a4,0(a2)
    62b4:	01062783          	lw	a5,16(a2)
    62b8:	01462683          	lw	a3,20(a2)
    62bc:	40f707b3          	sub	a5,a4,a5
    62c0:	0ad7dc63          	bge	a5,a3,6378 <__swbuf_r+0x120>
    62c4:	00178793          	addi	a5,a5,1
    62c8:	00862683          	lw	a3,8(a2)
    62cc:	00170593          	addi	a1,a4,1
    62d0:	00b62023          	sw	a1,0(a2)
    62d4:	fff68693          	addi	a3,a3,-1
    62d8:	00d62423          	sw	a3,8(a2)
    62dc:	00870023          	sb	s0,0(a4)
    62e0:	01462703          	lw	a4,20(a2)
    62e4:	0ff47413          	zext.b	s0,s0
    62e8:	06f70c63          	beq	a4,a5,6360 <__swbuf_r+0x108>
    62ec:	ff640793          	addi	a5,s0,-10
    62f0:	00079863          	bnez	a5,6300 <__swbuf_r+0xa8>
    62f4:	00c65783          	lhu	a5,12(a2)
    62f8:	0017f793          	andi	a5,a5,1
    62fc:	06079263          	bnez	a5,6360 <__swbuf_r+0x108>
    6300:	01c12083          	lw	ra,28(sp)
    6304:	00040513          	mv	a0,s0
    6308:	01812403          	lw	s0,24(sp)
    630c:	01412483          	lw	s1,20(sp)
    6310:	02010113          	addi	sp,sp,32
    6314:	00008067          	ret
    6318:	00060593          	mv	a1,a2
    631c:	00048513          	mv	a0,s1
    6320:	00c12623          	sw	a2,12(sp)
    6324:	088000ef          	jal	63ac <__swsetup_r>
    6328:	04051463          	bnez	a0,6370 <__swbuf_r+0x118>
    632c:	00c12603          	lw	a2,12(sp)
    6330:	000025b7          	lui	a1,0x2
    6334:	00c61783          	lh	a5,12(a2)
    6338:	06462703          	lw	a4,100(a2)
    633c:	01279693          	slli	a3,a5,0x12
    6340:	f606c4e3          	bltz	a3,62a8 <__swbuf_r+0x50>
    6344:	ffffe6b7          	lui	a3,0xffffe
    6348:	fff68693          	addi	a3,a3,-1 # ffffdfff <__crt0_stack_top+0x7ffedfff>
    634c:	00b7e7b3          	or	a5,a5,a1
    6350:	00d77733          	and	a4,a4,a3
    6354:	00f61623          	sh	a5,12(a2)
    6358:	06e62223          	sw	a4,100(a2)
    635c:	f4dff06f          	j	62a8 <__swbuf_r+0x50>
    6360:	00060593          	mv	a1,a2
    6364:	00048513          	mv	a0,s1
    6368:	575000ef          	jal	70dc <_fflush_r>
    636c:	f8050ae3          	beqz	a0,6300 <__swbuf_r+0xa8>
    6370:	fff00413          	li	s0,-1
    6374:	f8dff06f          	j	6300 <__swbuf_r+0xa8>
    6378:	00060593          	mv	a1,a2
    637c:	00048513          	mv	a0,s1
    6380:	00c12623          	sw	a2,12(sp)
    6384:	559000ef          	jal	70dc <_fflush_r>
    6388:	fe0514e3          	bnez	a0,6370 <__swbuf_r+0x118>
    638c:	00c12603          	lw	a2,12(sp)
    6390:	00100793          	li	a5,1
    6394:	00062703          	lw	a4,0(a2)
    6398:	f31ff06f          	j	62c8 <__swbuf_r+0x70>
    639c:	00c12623          	sw	a2,12(sp)
    63a0:	ef8ff0ef          	jal	5a98 <__sinit>
    63a4:	00c12603          	lw	a2,12(sp)
    63a8:	ed5ff06f          	j	627c <__swbuf_r+0x24>

000063ac <__swsetup_r>:
    63ac:	d681a703          	lw	a4,-664(gp) # 80000568 <_impure_ptr>
    63b0:	fe010113          	addi	sp,sp,-32
    63b4:	00112e23          	sw	ra,28(sp)
    63b8:	00050613          	mv	a2,a0
    63bc:	00058793          	mv	a5,a1
    63c0:	00070663          	beqz	a4,63cc <__swsetup_r+0x20>
    63c4:	03472683          	lw	a3,52(a4)
    63c8:	10068a63          	beqz	a3,64dc <__swsetup_r+0x130>
    63cc:	00c79703          	lh	a4,12(a5)
    63d0:	00877693          	andi	a3,a4,8
    63d4:	02068e63          	beqz	a3,6410 <__swsetup_r+0x64>
    63d8:	0107a683          	lw	a3,16(a5)
    63dc:	04068a63          	beqz	a3,6430 <__swsetup_r+0x84>
    63e0:	00c79703          	lh	a4,12(a5)
    63e4:	00177613          	andi	a2,a4,1
    63e8:	06060e63          	beqz	a2,6464 <__swsetup_r+0xb8>
    63ec:	0147a603          	lw	a2,20(a5)
    63f0:	0007a423          	sw	zero,8(a5)
    63f4:	00000513          	li	a0,0
    63f8:	40c00633          	neg	a2,a2
    63fc:	00c7ac23          	sw	a2,24(a5)
    6400:	08068063          	beqz	a3,6480 <__swsetup_r+0xd4>
    6404:	01c12083          	lw	ra,28(sp)
    6408:	02010113          	addi	sp,sp,32
    640c:	00008067          	ret
    6410:	01077693          	andi	a3,a4,16
    6414:	0e068263          	beqz	a3,64f8 <__swsetup_r+0x14c>
    6418:	00477693          	andi	a3,a4,4
    641c:	06069e63          	bnez	a3,6498 <__swsetup_r+0xec>
    6420:	0107a683          	lw	a3,16(a5)
    6424:	00876713          	ori	a4,a4,8
    6428:	00e79623          	sh	a4,12(a5)
    642c:	fa069ae3          	bnez	a3,63e0 <__swsetup_r+0x34>
    6430:	00c7a703          	lw	a4,12(a5)
    6434:	20000593          	li	a1,512
    6438:	28077713          	andi	a4,a4,640
    643c:	fab702e3          	beq	a4,a1,63e0 <__swsetup_r+0x34>
    6440:	00060513          	mv	a0,a2
    6444:	00078593          	mv	a1,a5
    6448:	00f12423          	sw	a5,8(sp)
    644c:	4fd000ef          	jal	7148 <__smakebuf_r>
    6450:	00812783          	lw	a5,8(sp)
    6454:	00c79703          	lh	a4,12(a5)
    6458:	0107a683          	lw	a3,16(a5)
    645c:	00177613          	andi	a2,a4,1
    6460:	f80616e3          	bnez	a2,63ec <__swsetup_r+0x40>
    6464:	00277613          	andi	a2,a4,2
    6468:	00000593          	li	a1,0
    646c:	00061463          	bnez	a2,6474 <__swsetup_r+0xc8>
    6470:	0147a583          	lw	a1,20(a5)
    6474:	00b7a423          	sw	a1,8(a5)
    6478:	00000513          	li	a0,0
    647c:	f80694e3          	bnez	a3,6404 <__swsetup_r+0x58>
    6480:	08077693          	andi	a3,a4,128
    6484:	f80680e3          	beqz	a3,6404 <__swsetup_r+0x58>
    6488:	04076713          	ori	a4,a4,64
    648c:	00e79623          	sh	a4,12(a5)
    6490:	fff00513          	li	a0,-1
    6494:	f71ff06f          	j	6404 <__swsetup_r+0x58>
    6498:	0307a583          	lw	a1,48(a5)
    649c:	02058663          	beqz	a1,64c8 <__swsetup_r+0x11c>
    64a0:	04078693          	addi	a3,a5,64
    64a4:	02d58063          	beq	a1,a3,64c4 <__swsetup_r+0x118>
    64a8:	00060513          	mv	a0,a2
    64ac:	00f12623          	sw	a5,12(sp)
    64b0:	00c12423          	sw	a2,8(sp)
    64b4:	930ff0ef          	jal	55e4 <_free_r>
    64b8:	00c12783          	lw	a5,12(sp)
    64bc:	00812603          	lw	a2,8(sp)
    64c0:	00c79703          	lh	a4,12(a5)
    64c4:	0207a823          	sw	zero,48(a5)
    64c8:	0107a683          	lw	a3,16(a5)
    64cc:	fdb77713          	andi	a4,a4,-37
    64d0:	0007a223          	sw	zero,4(a5)
    64d4:	00d7a023          	sw	a3,0(a5)
    64d8:	f4dff06f          	j	6424 <__swsetup_r+0x78>
    64dc:	00a12423          	sw	a0,8(sp)
    64e0:	00070513          	mv	a0,a4
    64e4:	00b12623          	sw	a1,12(sp)
    64e8:	db0ff0ef          	jal	5a98 <__sinit>
    64ec:	00c12783          	lw	a5,12(sp)
    64f0:	00812603          	lw	a2,8(sp)
    64f4:	ed9ff06f          	j	63cc <__swsetup_r+0x20>
    64f8:	00900693          	li	a3,9
    64fc:	04076713          	ori	a4,a4,64
    6500:	00d62023          	sw	a3,0(a2)
    6504:	00e79623          	sh	a4,12(a5)
    6508:	fff00513          	li	a0,-1
    650c:	ef9ff06f          	j	6404 <__swsetup_r+0x58>

00006510 <memchr>:
    6510:	00357793          	andi	a5,a0,3
    6514:	0ff5f713          	zext.b	a4,a1
    6518:	02078063          	beqz	a5,6538 <memchr+0x28>
    651c:	08060863          	beqz	a2,65ac <memchr+0x9c>
    6520:	00054783          	lbu	a5,0(a0)
    6524:	fff60613          	addi	a2,a2,-1
    6528:	08e78063          	beq	a5,a4,65a8 <memchr+0x98>
    652c:	00150513          	addi	a0,a0,1
    6530:	00357793          	andi	a5,a0,3
    6534:	fe0794e3          	bnez	a5,651c <memchr+0xc>
    6538:	00300813          	li	a6,3
    653c:	04c87863          	bgeu	a6,a2,658c <memchr+0x7c>
    6540:	0ff5f593          	zext.b	a1,a1
    6544:	00859793          	slli	a5,a1,0x8
    6548:	00b785b3          	add	a1,a5,a1
    654c:	01059793          	slli	a5,a1,0x10
    6550:	feff0337          	lui	t1,0xfeff0
    6554:	808088b7          	lui	a7,0x80808
    6558:	00f585b3          	add	a1,a1,a5
    655c:	eff30313          	addi	t1,t1,-257 # fefefeff <__crt0_stack_top+0x7efdfeff>
    6560:	08088893          	addi	a7,a7,128 # 80808080 <__crt0_stack_top+0x7f8080>
    6564:	00052783          	lw	a5,0(a0)
    6568:	00f5c7b3          	xor	a5,a1,a5
    656c:	006786b3          	add	a3,a5,t1
    6570:	fff7c793          	not	a5,a5
    6574:	00f6f7b3          	and	a5,a3,a5
    6578:	0117f7b3          	and	a5,a5,a7
    657c:	00079a63          	bnez	a5,6590 <memchr+0x80>
    6580:	ffc60613          	addi	a2,a2,-4
    6584:	00450513          	addi	a0,a0,4
    6588:	fcc86ee3          	bltu	a6,a2,6564 <memchr+0x54>
    658c:	02060063          	beqz	a2,65ac <memchr+0x9c>
    6590:	00c50633          	add	a2,a0,a2
    6594:	00c0006f          	j	65a0 <memchr+0x90>
    6598:	00150513          	addi	a0,a0,1
    659c:	00c50863          	beq	a0,a2,65ac <memchr+0x9c>
    65a0:	00054783          	lbu	a5,0(a0)
    65a4:	fee79ae3          	bne	a5,a4,6598 <memchr+0x88>
    65a8:	00008067          	ret
    65ac:	00000513          	li	a0,0
    65b0:	00008067          	ret

000065b4 <_close_r>:
    65b4:	ff010113          	addi	sp,sp,-16
    65b8:	00812423          	sw	s0,8(sp)
    65bc:	00912223          	sw	s1,4(sp)
    65c0:	00050493          	mv	s1,a0
    65c4:	00058513          	mv	a0,a1
    65c8:	00112623          	sw	ra,12(sp)
    65cc:	da01a223          	sw	zero,-604(gp) # 800005a4 <errno>
    65d0:	c14fd0ef          	jal	39e4 <_close>
    65d4:	fff00793          	li	a5,-1
    65d8:	00f50c63          	beq	a0,a5,65f0 <_close_r+0x3c>
    65dc:	00c12083          	lw	ra,12(sp)
    65e0:	00812403          	lw	s0,8(sp)
    65e4:	00412483          	lw	s1,4(sp)
    65e8:	01010113          	addi	sp,sp,16
    65ec:	00008067          	ret
    65f0:	da41a783          	lw	a5,-604(gp) # 800005a4 <errno>
    65f4:	fe0784e3          	beqz	a5,65dc <_close_r+0x28>
    65f8:	00c12083          	lw	ra,12(sp)
    65fc:	00812403          	lw	s0,8(sp)
    6600:	00f4a023          	sw	a5,0(s1)
    6604:	00412483          	lw	s1,4(sp)
    6608:	01010113          	addi	sp,sp,16
    660c:	00008067          	ret

00006610 <_lseek_r>:
    6610:	ff010113          	addi	sp,sp,-16
    6614:	00058793          	mv	a5,a1
    6618:	00812423          	sw	s0,8(sp)
    661c:	00912223          	sw	s1,4(sp)
    6620:	00060593          	mv	a1,a2
    6624:	00050493          	mv	s1,a0
    6628:	00068613          	mv	a2,a3
    662c:	00078513          	mv	a0,a5
    6630:	00112623          	sw	ra,12(sp)
    6634:	da01a223          	sw	zero,-604(gp) # 800005a4 <errno>
    6638:	bbcfd0ef          	jal	39f4 <_lseek>
    663c:	fff00793          	li	a5,-1
    6640:	00f50c63          	beq	a0,a5,6658 <_lseek_r+0x48>
    6644:	00c12083          	lw	ra,12(sp)
    6648:	00812403          	lw	s0,8(sp)
    664c:	00412483          	lw	s1,4(sp)
    6650:	01010113          	addi	sp,sp,16
    6654:	00008067          	ret
    6658:	da41a783          	lw	a5,-604(gp) # 800005a4 <errno>
    665c:	fe0784e3          	beqz	a5,6644 <_lseek_r+0x34>
    6660:	00c12083          	lw	ra,12(sp)
    6664:	00812403          	lw	s0,8(sp)
    6668:	00f4a023          	sw	a5,0(s1)
    666c:	00412483          	lw	s1,4(sp)
    6670:	01010113          	addi	sp,sp,16
    6674:	00008067          	ret

00006678 <_read_r>:
    6678:	ff010113          	addi	sp,sp,-16
    667c:	00058793          	mv	a5,a1
    6680:	00812423          	sw	s0,8(sp)
    6684:	00912223          	sw	s1,4(sp)
    6688:	00060593          	mv	a1,a2
    668c:	00050493          	mv	s1,a0
    6690:	00068613          	mv	a2,a3
    6694:	00078513          	mv	a0,a5
    6698:	00112623          	sw	ra,12(sp)
    669c:	da01a223          	sw	zero,-604(gp) # 800005a4 <errno>
    66a0:	b58fd0ef          	jal	39f8 <_read>
    66a4:	fff00793          	li	a5,-1
    66a8:	00f50c63          	beq	a0,a5,66c0 <_read_r+0x48>
    66ac:	00c12083          	lw	ra,12(sp)
    66b0:	00812403          	lw	s0,8(sp)
    66b4:	00412483          	lw	s1,4(sp)
    66b8:	01010113          	addi	sp,sp,16
    66bc:	00008067          	ret
    66c0:	da41a783          	lw	a5,-604(gp) # 800005a4 <errno>
    66c4:	fe0784e3          	beqz	a5,66ac <_read_r+0x34>
    66c8:	00c12083          	lw	ra,12(sp)
    66cc:	00812403          	lw	s0,8(sp)
    66d0:	00f4a023          	sw	a5,0(s1)
    66d4:	00412483          	lw	s1,4(sp)
    66d8:	01010113          	addi	sp,sp,16
    66dc:	00008067          	ret

000066e0 <_write_r>:
    66e0:	ff010113          	addi	sp,sp,-16
    66e4:	00058793          	mv	a5,a1
    66e8:	00812423          	sw	s0,8(sp)
    66ec:	00912223          	sw	s1,4(sp)
    66f0:	00060593          	mv	a1,a2
    66f4:	00050493          	mv	s1,a0
    66f8:	00068613          	mv	a2,a3
    66fc:	00078513          	mv	a0,a5
    6700:	00112623          	sw	ra,12(sp)
    6704:	da01a223          	sw	zero,-604(gp) # 800005a4 <errno>
    6708:	b8afd0ef          	jal	3a92 <_write>
    670c:	fff00793          	li	a5,-1
    6710:	00f50c63          	beq	a0,a5,6728 <_write_r+0x48>
    6714:	00c12083          	lw	ra,12(sp)
    6718:	00812403          	lw	s0,8(sp)
    671c:	00412483          	lw	s1,4(sp)
    6720:	01010113          	addi	sp,sp,16
    6724:	00008067          	ret
    6728:	da41a783          	lw	a5,-604(gp) # 800005a4 <errno>
    672c:	fe0784e3          	beqz	a5,6714 <_write_r+0x34>
    6730:	00c12083          	lw	ra,12(sp)
    6734:	00812403          	lw	s0,8(sp)
    6738:	00f4a023          	sw	a5,0(s1)
    673c:	00412483          	lw	s1,4(sp)
    6740:	01010113          	addi	sp,sp,16
    6744:	00008067          	ret

00006748 <_realloc_r>:
    6748:	1e058863          	beqz	a1,6938 <_realloc_r+0x1f0>
    674c:	fe010113          	addi	sp,sp,-32
    6750:	00812c23          	sw	s0,24(sp)
    6754:	00912a23          	sw	s1,20(sp)
    6758:	00058413          	mv	s0,a1
    675c:	00112e23          	sw	ra,28(sp)
    6760:	00050493          	mv	s1,a0
    6764:	00c12023          	sw	a2,0(sp)
    6768:	849fe0ef          	jal	4fb0 <__malloc_lock>
    676c:	00012583          	lw	a1,0(sp)
    6770:	01600713          	li	a4,22
    6774:	00b58793          	addi	a5,a1,11 # 200b <__neorv32_heap_size+0xb>
    6778:	12f77863          	bgeu	a4,a5,68a8 <_realloc_r+0x160>
    677c:	ff87f793          	andi	a5,a5,-8
    6780:	00078693          	mv	a3,a5
    6784:	01f7d713          	srli	a4,a5,0x1f
    6788:	1eb7e463          	bltu	a5,a1,6970 <_realloc_r+0x228>
    678c:	1e071263          	bnez	a4,6970 <_realloc_r+0x228>
    6790:	ffc42603          	lw	a2,-4(s0)
    6794:	ff840813          	addi	a6,s0,-8
    6798:	ffc67713          	andi	a4,a2,-4
    679c:	12d75863          	bge	a4,a3,68cc <_realloc_r+0x184>
    67a0:	80000e37          	lui	t3,0x80000
    67a4:	000e0e13          	mv	t3,t3
    67a8:	008e2883          	lw	a7,8(t3) # 80000008 <__malloc_av_+0x8>
    67ac:	00e80333          	add	t1,a6,a4
    67b0:	00432503          	lw	a0,4(t1)
    67b4:	1e688063          	beq	a7,t1,6994 <_realloc_r+0x24c>
    67b8:	ffe57893          	andi	a7,a0,-2
    67bc:	011308b3          	add	a7,t1,a7
    67c0:	0048a883          	lw	a7,4(a7)
    67c4:	0018f893          	andi	a7,a7,1
    67c8:	14089a63          	bnez	a7,691c <_realloc_r+0x1d4>
    67cc:	ffc57513          	andi	a0,a0,-4
    67d0:	00a708b3          	add	a7,a4,a0
    67d4:	0ed8d263          	bge	a7,a3,68b8 <_realloc_r+0x170>
    67d8:	00167613          	andi	a2,a2,1
    67dc:	02061463          	bnez	a2,6804 <_realloc_r+0xbc>
    67e0:	ff842e83          	lw	t4,-8(s0)
    67e4:	41d80eb3          	sub	t4,a6,t4
    67e8:	004ea603          	lw	a2,4(t4)
    67ec:	ffc67613          	andi	a2,a2,-4
    67f0:	00c50533          	add	a0,a0,a2
    67f4:	00e508b3          	add	a7,a0,a4
    67f8:	32d8d463          	bge	a7,a3,6b20 <_realloc_r+0x3d8>
    67fc:	00c708b3          	add	a7,a4,a2
    6800:	28d8dc63          	bge	a7,a3,6a98 <_realloc_r+0x350>
    6804:	00048513          	mv	a0,s1
    6808:	00e12423          	sw	a4,8(sp)
    680c:	01012223          	sw	a6,4(sp)
    6810:	00f12023          	sw	a5,0(sp)
    6814:	f21fd0ef          	jal	4734 <_malloc_r>
    6818:	00012783          	lw	a5,0(sp)
    681c:	00412803          	lw	a6,4(sp)
    6820:	00812703          	lw	a4,8(sp)
    6824:	00050693          	mv	a3,a0
    6828:	44050863          	beqz	a0,6c78 <_realloc_r+0x530>
    682c:	ffc42603          	lw	a2,-4(s0)
    6830:	ff850593          	addi	a1,a0,-8
    6834:	ffe67613          	andi	a2,a2,-2
    6838:	00c80633          	add	a2,a6,a2
    683c:	22b60463          	beq	a2,a1,6a64 <_realloc_r+0x31c>
    6840:	ffc70613          	addi	a2,a4,-4
    6844:	02400793          	li	a5,36
    6848:	2cc7e263          	bltu	a5,a2,6b0c <_realloc_r+0x3c4>
    684c:	01300713          	li	a4,19
    6850:	22c76263          	bltu	a4,a2,6a74 <_realloc_r+0x32c>
    6854:	00050793          	mv	a5,a0
    6858:	00040713          	mv	a4,s0
    685c:	00072603          	lw	a2,0(a4)
    6860:	00c7a023          	sw	a2,0(a5)
    6864:	00472603          	lw	a2,4(a4)
    6868:	00c7a223          	sw	a2,4(a5)
    686c:	00872703          	lw	a4,8(a4)
    6870:	00e7a423          	sw	a4,8(a5)
    6874:	00040593          	mv	a1,s0
    6878:	00048513          	mv	a0,s1
    687c:	00d12023          	sw	a3,0(sp)
    6880:	d65fe0ef          	jal	55e4 <_free_r>
    6884:	00048513          	mv	a0,s1
    6888:	f2cfe0ef          	jal	4fb4 <__malloc_unlock>
    688c:	00012683          	lw	a3,0(sp)
    6890:	01c12083          	lw	ra,28(sp)
    6894:	01812403          	lw	s0,24(sp)
    6898:	01412483          	lw	s1,20(sp)
    689c:	00068513          	mv	a0,a3
    68a0:	02010113          	addi	sp,sp,32
    68a4:	00008067          	ret
    68a8:	01000693          	li	a3,16
    68ac:	00068793          	mv	a5,a3
    68b0:	00000713          	li	a4,0
    68b4:	ed5ff06f          	j	6788 <_realloc_r+0x40>
    68b8:	00c32683          	lw	a3,12(t1)
    68bc:	00832603          	lw	a2,8(t1)
    68c0:	00088713          	mv	a4,a7
    68c4:	00d62623          	sw	a3,12(a2)
    68c8:	00c6a423          	sw	a2,8(a3)
    68cc:	00482683          	lw	a3,4(a6)
    68d0:	40f70533          	sub	a0,a4,a5
    68d4:	00f00593          	li	a1,15
    68d8:	0016f693          	andi	a3,a3,1
    68dc:	00e80633          	add	a2,a6,a4
    68e0:	06a5e063          	bltu	a1,a0,6940 <_realloc_r+0x1f8>
    68e4:	00d766b3          	or	a3,a4,a3
    68e8:	00d82223          	sw	a3,4(a6)
    68ec:	00462783          	lw	a5,4(a2)
    68f0:	0017e793          	ori	a5,a5,1
    68f4:	00f62223          	sw	a5,4(a2)
    68f8:	00048513          	mv	a0,s1
    68fc:	eb8fe0ef          	jal	4fb4 <__malloc_unlock>
    6900:	00040693          	mv	a3,s0
    6904:	01c12083          	lw	ra,28(sp)
    6908:	01812403          	lw	s0,24(sp)
    690c:	01412483          	lw	s1,20(sp)
    6910:	00068513          	mv	a0,a3
    6914:	02010113          	addi	sp,sp,32
    6918:	00008067          	ret
    691c:	00167613          	andi	a2,a2,1
    6920:	ee0612e3          	bnez	a2,6804 <_realloc_r+0xbc>
    6924:	ff842e83          	lw	t4,-8(s0)
    6928:	41d80eb3          	sub	t4,a6,t4
    692c:	004ea603          	lw	a2,4(t4)
    6930:	ffc67613          	andi	a2,a2,-4
    6934:	ec9ff06f          	j	67fc <_realloc_r+0xb4>
    6938:	00060593          	mv	a1,a2
    693c:	df9fd06f          	j	4734 <_malloc_r>
    6940:	00d7e6b3          	or	a3,a5,a3
    6944:	00d82223          	sw	a3,4(a6)
    6948:	00f805b3          	add	a1,a6,a5
    694c:	00156513          	ori	a0,a0,1
    6950:	00a5a223          	sw	a0,4(a1)
    6954:	00462783          	lw	a5,4(a2)
    6958:	00858593          	addi	a1,a1,8
    695c:	00048513          	mv	a0,s1
    6960:	0017e793          	ori	a5,a5,1
    6964:	00f62223          	sw	a5,4(a2)
    6968:	c7dfe0ef          	jal	55e4 <_free_r>
    696c:	f8dff06f          	j	68f8 <_realloc_r+0x1b0>
    6970:	00c00793          	li	a5,12
    6974:	00f4a023          	sw	a5,0(s1)
    6978:	00000693          	li	a3,0
    697c:	01c12083          	lw	ra,28(sp)
    6980:	01812403          	lw	s0,24(sp)
    6984:	01412483          	lw	s1,20(sp)
    6988:	00068513          	mv	a0,a3
    698c:	02010113          	addi	sp,sp,32
    6990:	00008067          	ret
    6994:	ffc57513          	andi	a0,a0,-4
    6998:	00e508b3          	add	a7,a0,a4
    699c:	01078313          	addi	t1,a5,16
    69a0:	2468da63          	bge	a7,t1,6bf4 <_realloc_r+0x4ac>
    69a4:	00167613          	andi	a2,a2,1
    69a8:	e4061ee3          	bnez	a2,6804 <_realloc_r+0xbc>
    69ac:	ff842e83          	lw	t4,-8(s0)
    69b0:	41d80eb3          	sub	t4,a6,t4
    69b4:	004ea603          	lw	a2,4(t4)
    69b8:	ffc67613          	andi	a2,a2,-4
    69bc:	00c50533          	add	a0,a0,a2
    69c0:	00e508b3          	add	a7,a0,a4
    69c4:	e268cce3          	blt	a7,t1,67fc <_realloc_r+0xb4>
    69c8:	00cea683          	lw	a3,12(t4)
    69cc:	008ea583          	lw	a1,8(t4)
    69d0:	ffc70613          	addi	a2,a4,-4
    69d4:	02400713          	li	a4,36
    69d8:	00d5a623          	sw	a3,12(a1)
    69dc:	00b6a423          	sw	a1,8(a3)
    69e0:	008e8693          	addi	a3,t4,8
    69e4:	2ec76263          	bltu	a4,a2,6cc8 <_realloc_r+0x580>
    69e8:	01300593          	li	a1,19
    69ec:	00068713          	mv	a4,a3
    69f0:	02c5f263          	bgeu	a1,a2,6a14 <_realloc_r+0x2cc>
    69f4:	00042583          	lw	a1,0(s0)
    69f8:	01b00713          	li	a4,27
    69fc:	00bea423          	sw	a1,8(t4)
    6a00:	00442583          	lw	a1,4(s0)
    6a04:	00bea623          	sw	a1,12(t4)
    6a08:	30c76a63          	bltu	a4,a2,6d1c <_realloc_r+0x5d4>
    6a0c:	00840413          	addi	s0,s0,8
    6a10:	010e8713          	addi	a4,t4,16
    6a14:	00042603          	lw	a2,0(s0)
    6a18:	00c72023          	sw	a2,0(a4)
    6a1c:	00442603          	lw	a2,4(s0)
    6a20:	00c72223          	sw	a2,4(a4)
    6a24:	00842603          	lw	a2,8(s0)
    6a28:	00c72423          	sw	a2,8(a4)
    6a2c:	00fe8633          	add	a2,t4,a5
    6a30:	40f88733          	sub	a4,a7,a5
    6a34:	00ce2423          	sw	a2,8(t3)
    6a38:	00176713          	ori	a4,a4,1
    6a3c:	00e62223          	sw	a4,4(a2)
    6a40:	004ea703          	lw	a4,4(t4)
    6a44:	00048513          	mv	a0,s1
    6a48:	00d12023          	sw	a3,0(sp)
    6a4c:	00177713          	andi	a4,a4,1
    6a50:	00f767b3          	or	a5,a4,a5
    6a54:	00fea223          	sw	a5,4(t4)
    6a58:	d5cfe0ef          	jal	4fb4 <__malloc_unlock>
    6a5c:	00012683          	lw	a3,0(sp)
    6a60:	ea5ff06f          	j	6904 <_realloc_r+0x1bc>
    6a64:	ffc52683          	lw	a3,-4(a0)
    6a68:	ffc6f693          	andi	a3,a3,-4
    6a6c:	00d70733          	add	a4,a4,a3
    6a70:	e5dff06f          	j	68cc <_realloc_r+0x184>
    6a74:	00042583          	lw	a1,0(s0)
    6a78:	01b00713          	li	a4,27
    6a7c:	00b52023          	sw	a1,0(a0)
    6a80:	00442583          	lw	a1,4(s0)
    6a84:	00b52223          	sw	a1,4(a0)
    6a88:	10c76e63          	bltu	a4,a2,6ba4 <_realloc_r+0x45c>
    6a8c:	00840713          	addi	a4,s0,8
    6a90:	00850793          	addi	a5,a0,8
    6a94:	dc9ff06f          	j	685c <_realloc_r+0x114>
    6a98:	00cea683          	lw	a3,12(t4)
    6a9c:	008ea583          	lw	a1,8(t4)
    6aa0:	ffc70613          	addi	a2,a4,-4
    6aa4:	02400513          	li	a0,36
    6aa8:	00d5a623          	sw	a3,12(a1)
    6aac:	00b6a423          	sw	a1,8(a3)
    6ab0:	008e8693          	addi	a3,t4,8
    6ab4:	10c56863          	bltu	a0,a2,6bc4 <_realloc_r+0x47c>
    6ab8:	01300593          	li	a1,19
    6abc:	00068713          	mv	a4,a3
    6ac0:	02c5f263          	bgeu	a1,a2,6ae4 <_realloc_r+0x39c>
    6ac4:	00042583          	lw	a1,0(s0)
    6ac8:	01b00713          	li	a4,27
    6acc:	00bea423          	sw	a1,8(t4)
    6ad0:	00442583          	lw	a1,4(s0)
    6ad4:	00bea623          	sw	a1,12(t4)
    6ad8:	18c76063          	bltu	a4,a2,6c58 <_realloc_r+0x510>
    6adc:	00840413          	addi	s0,s0,8
    6ae0:	010e8713          	addi	a4,t4,16
    6ae4:	00042603          	lw	a2,0(s0)
    6ae8:	00c72023          	sw	a2,0(a4)
    6aec:	00442603          	lw	a2,4(s0)
    6af0:	00c72223          	sw	a2,4(a4)
    6af4:	00842603          	lw	a2,8(s0)
    6af8:	00c72423          	sw	a2,8(a4)
    6afc:	00068413          	mv	s0,a3
    6b00:	00088713          	mv	a4,a7
    6b04:	000e8813          	mv	a6,t4
    6b08:	dc5ff06f          	j	68cc <_realloc_r+0x184>
    6b0c:	00040593          	mv	a1,s0
    6b10:	00a12023          	sw	a0,0(sp)
    6b14:	df4fe0ef          	jal	5108 <memmove>
    6b18:	00012683          	lw	a3,0(sp)
    6b1c:	d59ff06f          	j	6874 <_realloc_r+0x12c>
    6b20:	00c32683          	lw	a3,12(t1)
    6b24:	00832583          	lw	a1,8(t1)
    6b28:	ffc70613          	addi	a2,a4,-4
    6b2c:	02400513          	li	a0,36
    6b30:	00d5a623          	sw	a3,12(a1)
    6b34:	00b6a423          	sw	a1,8(a3)
    6b38:	00cea703          	lw	a4,12(t4)
    6b3c:	008ea683          	lw	a3,8(t4)
    6b40:	008e8813          	addi	a6,t4,8
    6b44:	00e6a623          	sw	a4,12(a3)
    6b48:	00d72423          	sw	a3,8(a4)
    6b4c:	0cc56e63          	bltu	a0,a2,6c28 <_realloc_r+0x4e0>
    6b50:	01300693          	li	a3,19
    6b54:	00080713          	mv	a4,a6
    6b58:	02c6f263          	bgeu	a3,a2,6b7c <_realloc_r+0x434>
    6b5c:	00042683          	lw	a3,0(s0)
    6b60:	01b00713          	li	a4,27
    6b64:	00dea423          	sw	a3,8(t4)
    6b68:	00442683          	lw	a3,4(s0)
    6b6c:	00dea623          	sw	a3,12(t4)
    6b70:	12c76a63          	bltu	a4,a2,6ca4 <_realloc_r+0x55c>
    6b74:	00840413          	addi	s0,s0,8
    6b78:	010e8713          	addi	a4,t4,16
    6b7c:	00042683          	lw	a3,0(s0)
    6b80:	00d72023          	sw	a3,0(a4)
    6b84:	00442683          	lw	a3,4(s0)
    6b88:	00d72223          	sw	a3,4(a4)
    6b8c:	00842683          	lw	a3,8(s0)
    6b90:	00d72423          	sw	a3,8(a4)
    6b94:	00080413          	mv	s0,a6
    6b98:	00088713          	mv	a4,a7
    6b9c:	000e8813          	mv	a6,t4
    6ba0:	d2dff06f          	j	68cc <_realloc_r+0x184>
    6ba4:	00842703          	lw	a4,8(s0)
    6ba8:	00e52423          	sw	a4,8(a0)
    6bac:	00c42703          	lw	a4,12(s0)
    6bb0:	00e52623          	sw	a4,12(a0)
    6bb4:	0cf60a63          	beq	a2,a5,6c88 <_realloc_r+0x540>
    6bb8:	01040713          	addi	a4,s0,16
    6bbc:	01050793          	addi	a5,a0,16
    6bc0:	c9dff06f          	j	685c <_realloc_r+0x114>
    6bc4:	00068513          	mv	a0,a3
    6bc8:	00040593          	mv	a1,s0
    6bcc:	01d12623          	sw	t4,12(sp)
    6bd0:	00f12423          	sw	a5,8(sp)
    6bd4:	01112223          	sw	a7,4(sp)
    6bd8:	00d12023          	sw	a3,0(sp)
    6bdc:	d2cfe0ef          	jal	5108 <memmove>
    6be0:	00c12e83          	lw	t4,12(sp)
    6be4:	00812783          	lw	a5,8(sp)
    6be8:	00412883          	lw	a7,4(sp)
    6bec:	00012683          	lw	a3,0(sp)
    6bf0:	f0dff06f          	j	6afc <_realloc_r+0x3b4>
    6bf4:	00f80833          	add	a6,a6,a5
    6bf8:	40f88733          	sub	a4,a7,a5
    6bfc:	010e2423          	sw	a6,8(t3)
    6c00:	00176713          	ori	a4,a4,1
    6c04:	00e82223          	sw	a4,4(a6)
    6c08:	ffc42703          	lw	a4,-4(s0)
    6c0c:	00048513          	mv	a0,s1
    6c10:	00177713          	andi	a4,a4,1
    6c14:	00f767b3          	or	a5,a4,a5
    6c18:	fef42e23          	sw	a5,-4(s0)
    6c1c:	b98fe0ef          	jal	4fb4 <__malloc_unlock>
    6c20:	00040693          	mv	a3,s0
    6c24:	ce1ff06f          	j	6904 <_realloc_r+0x1bc>
    6c28:	00080513          	mv	a0,a6
    6c2c:	00040593          	mv	a1,s0
    6c30:	01d12623          	sw	t4,12(sp)
    6c34:	00f12423          	sw	a5,8(sp)
    6c38:	01112223          	sw	a7,4(sp)
    6c3c:	01012023          	sw	a6,0(sp)
    6c40:	cc8fe0ef          	jal	5108 <memmove>
    6c44:	00012803          	lw	a6,0(sp)
    6c48:	00412883          	lw	a7,4(sp)
    6c4c:	00812783          	lw	a5,8(sp)
    6c50:	00c12e83          	lw	t4,12(sp)
    6c54:	f41ff06f          	j	6b94 <_realloc_r+0x44c>
    6c58:	00842703          	lw	a4,8(s0)
    6c5c:	00eea823          	sw	a4,16(t4)
    6c60:	00c42703          	lw	a4,12(s0)
    6c64:	00eeaa23          	sw	a4,20(t4)
    6c68:	08a60c63          	beq	a2,a0,6d00 <_realloc_r+0x5b8>
    6c6c:	01040413          	addi	s0,s0,16
    6c70:	018e8713          	addi	a4,t4,24
    6c74:	e71ff06f          	j	6ae4 <_realloc_r+0x39c>
    6c78:	00048513          	mv	a0,s1
    6c7c:	b38fe0ef          	jal	4fb4 <__malloc_unlock>
    6c80:	00000693          	li	a3,0
    6c84:	cf9ff06f          	j	697c <_realloc_r+0x234>
    6c88:	01042603          	lw	a2,16(s0)
    6c8c:	01840713          	addi	a4,s0,24
    6c90:	01850793          	addi	a5,a0,24
    6c94:	00c52823          	sw	a2,16(a0)
    6c98:	01442603          	lw	a2,20(s0)
    6c9c:	00c52a23          	sw	a2,20(a0)
    6ca0:	bbdff06f          	j	685c <_realloc_r+0x114>
    6ca4:	00842683          	lw	a3,8(s0)
    6ca8:	02400713          	li	a4,36
    6cac:	00dea823          	sw	a3,16(t4)
    6cb0:	00c42683          	lw	a3,12(s0)
    6cb4:	00deaa23          	sw	a3,20(t4)
    6cb8:	08e60463          	beq	a2,a4,6d40 <_realloc_r+0x5f8>
    6cbc:	01040413          	addi	s0,s0,16
    6cc0:	018e8713          	addi	a4,t4,24
    6cc4:	eb9ff06f          	j	6b7c <_realloc_r+0x434>
    6cc8:	00068513          	mv	a0,a3
    6ccc:	00040593          	mv	a1,s0
    6cd0:	01d12623          	sw	t4,12(sp)
    6cd4:	00f12423          	sw	a5,8(sp)
    6cd8:	01112223          	sw	a7,4(sp)
    6cdc:	00d12023          	sw	a3,0(sp)
    6ce0:	c28fe0ef          	jal	5108 <memmove>
    6ce4:	800007b7          	lui	a5,0x80000
    6ce8:	00078e13          	mv	t3,a5
    6cec:	00c12e83          	lw	t4,12(sp)
    6cf0:	00812783          	lw	a5,8(sp)
    6cf4:	00412883          	lw	a7,4(sp)
    6cf8:	00012683          	lw	a3,0(sp)
    6cfc:	d31ff06f          	j	6a2c <_realloc_r+0x2e4>
    6d00:	01042603          	lw	a2,16(s0)
    6d04:	020e8713          	addi	a4,t4,32
    6d08:	01840413          	addi	s0,s0,24
    6d0c:	00ceac23          	sw	a2,24(t4)
    6d10:	ffc42603          	lw	a2,-4(s0)
    6d14:	00ceae23          	sw	a2,28(t4)
    6d18:	dcdff06f          	j	6ae4 <_realloc_r+0x39c>
    6d1c:	00842583          	lw	a1,8(s0)
    6d20:	02400713          	li	a4,36
    6d24:	00bea823          	sw	a1,16(t4)
    6d28:	00c42583          	lw	a1,12(s0)
    6d2c:	00beaa23          	sw	a1,20(t4)
    6d30:	02e60663          	beq	a2,a4,6d5c <_realloc_r+0x614>
    6d34:	01040413          	addi	s0,s0,16
    6d38:	018e8713          	addi	a4,t4,24
    6d3c:	cd9ff06f          	j	6a14 <_realloc_r+0x2cc>
    6d40:	01042683          	lw	a3,16(s0)
    6d44:	020e8713          	addi	a4,t4,32
    6d48:	01840413          	addi	s0,s0,24
    6d4c:	00deac23          	sw	a3,24(t4)
    6d50:	ffc42683          	lw	a3,-4(s0)
    6d54:	00deae23          	sw	a3,28(t4)
    6d58:	e25ff06f          	j	6b7c <_realloc_r+0x434>
    6d5c:	01042603          	lw	a2,16(s0)
    6d60:	020e8713          	addi	a4,t4,32
    6d64:	01840413          	addi	s0,s0,24
    6d68:	00ceac23          	sw	a2,24(t4)
    6d6c:	ffc42603          	lw	a2,-4(s0)
    6d70:	00ceae23          	sw	a2,28(t4)
    6d74:	ca1ff06f          	j	6a14 <_realloc_r+0x2cc>

00006d78 <_fclose_r>:
    6d78:	ff010113          	addi	sp,sp,-16
    6d7c:	00112623          	sw	ra,12(sp)
    6d80:	01212023          	sw	s2,0(sp)
    6d84:	02058863          	beqz	a1,6db4 <_fclose_r+0x3c>
    6d88:	00812423          	sw	s0,8(sp)
    6d8c:	00912223          	sw	s1,4(sp)
    6d90:	00058413          	mv	s0,a1
    6d94:	00050493          	mv	s1,a0
    6d98:	00050663          	beqz	a0,6da4 <_fclose_r+0x2c>
    6d9c:	03452783          	lw	a5,52(a0)
    6da0:	0c078c63          	beqz	a5,6e78 <_fclose_r+0x100>
    6da4:	00c41783          	lh	a5,12(s0)
    6da8:	02079263          	bnez	a5,6dcc <_fclose_r+0x54>
    6dac:	00812403          	lw	s0,8(sp)
    6db0:	00412483          	lw	s1,4(sp)
    6db4:	00c12083          	lw	ra,12(sp)
    6db8:	00000913          	li	s2,0
    6dbc:	00090513          	mv	a0,s2
    6dc0:	00012903          	lw	s2,0(sp)
    6dc4:	01010113          	addi	sp,sp,16
    6dc8:	00008067          	ret
    6dcc:	00040593          	mv	a1,s0
    6dd0:	00048513          	mv	a0,s1
    6dd4:	0ac000ef          	jal	6e80 <__sflush_r>
    6dd8:	02c42783          	lw	a5,44(s0)
    6ddc:	00050913          	mv	s2,a0
    6de0:	00078a63          	beqz	a5,6df4 <_fclose_r+0x7c>
    6de4:	01c42583          	lw	a1,28(s0)
    6de8:	00048513          	mv	a0,s1
    6dec:	000780e7          	jalr	a5 # 80000000 <__malloc_av_>
    6df0:	06054463          	bltz	a0,6e58 <_fclose_r+0xe0>
    6df4:	00c45783          	lhu	a5,12(s0)
    6df8:	0807f793          	andi	a5,a5,128
    6dfc:	06079663          	bnez	a5,6e68 <_fclose_r+0xf0>
    6e00:	03042583          	lw	a1,48(s0)
    6e04:	00058c63          	beqz	a1,6e1c <_fclose_r+0xa4>
    6e08:	04040793          	addi	a5,s0,64
    6e0c:	00f58663          	beq	a1,a5,6e18 <_fclose_r+0xa0>
    6e10:	00048513          	mv	a0,s1
    6e14:	fd0fe0ef          	jal	55e4 <_free_r>
    6e18:	02042823          	sw	zero,48(s0)
    6e1c:	04442583          	lw	a1,68(s0)
    6e20:	00058863          	beqz	a1,6e30 <_fclose_r+0xb8>
    6e24:	00048513          	mv	a0,s1
    6e28:	fbcfe0ef          	jal	55e4 <_free_r>
    6e2c:	04042223          	sw	zero,68(s0)
    6e30:	c8dfe0ef          	jal	5abc <__sfp_lock_acquire>
    6e34:	00041623          	sh	zero,12(s0)
    6e38:	c89fe0ef          	jal	5ac0 <__sfp_lock_release>
    6e3c:	00c12083          	lw	ra,12(sp)
    6e40:	00812403          	lw	s0,8(sp)
    6e44:	00412483          	lw	s1,4(sp)
    6e48:	00090513          	mv	a0,s2
    6e4c:	00012903          	lw	s2,0(sp)
    6e50:	01010113          	addi	sp,sp,16
    6e54:	00008067          	ret
    6e58:	00c45783          	lhu	a5,12(s0)
    6e5c:	fff00913          	li	s2,-1
    6e60:	0807f793          	andi	a5,a5,128
    6e64:	f8078ee3          	beqz	a5,6e00 <_fclose_r+0x88>
    6e68:	01042583          	lw	a1,16(s0)
    6e6c:	00048513          	mv	a0,s1
    6e70:	f74fe0ef          	jal	55e4 <_free_r>
    6e74:	f8dff06f          	j	6e00 <_fclose_r+0x88>
    6e78:	c21fe0ef          	jal	5a98 <__sinit>
    6e7c:	f29ff06f          	j	6da4 <_fclose_r+0x2c>

00006e80 <__sflush_r>:
    6e80:	00c59703          	lh	a4,12(a1)
    6e84:	fe010113          	addi	sp,sp,-32
    6e88:	00812c23          	sw	s0,24(sp)
    6e8c:	01312623          	sw	s3,12(sp)
    6e90:	00112e23          	sw	ra,28(sp)
    6e94:	00877793          	andi	a5,a4,8
    6e98:	00058413          	mv	s0,a1
    6e9c:	00050993          	mv	s3,a0
    6ea0:	12079263          	bnez	a5,6fc4 <__sflush_r+0x144>
    6ea4:	000017b7          	lui	a5,0x1
    6ea8:	80078793          	addi	a5,a5,-2048 # 800 <core_list_init+0xe4>
    6eac:	0045a683          	lw	a3,4(a1)
    6eb0:	00f767b3          	or	a5,a4,a5
    6eb4:	00f59623          	sh	a5,12(a1)
    6eb8:	18d05c63          	blez	a3,7050 <__sflush_r+0x1d0>
    6ebc:	02842803          	lw	a6,40(s0)
    6ec0:	0e080663          	beqz	a6,6fac <__sflush_r+0x12c>
    6ec4:	00912a23          	sw	s1,20(sp)
    6ec8:	01371693          	slli	a3,a4,0x13
    6ecc:	0009a483          	lw	s1,0(s3)
    6ed0:	0009a023          	sw	zero,0(s3)
    6ed4:	1806ca63          	bltz	a3,7068 <__sflush_r+0x1e8>
    6ed8:	01c42583          	lw	a1,28(s0)
    6edc:	00000613          	li	a2,0
    6ee0:	00100693          	li	a3,1
    6ee4:	00098513          	mv	a0,s3
    6ee8:	000800e7          	jalr	a6
    6eec:	fff00793          	li	a5,-1
    6ef0:	00050613          	mv	a2,a0
    6ef4:	1af50c63          	beq	a0,a5,70ac <__sflush_r+0x22c>
    6ef8:	00c41783          	lh	a5,12(s0)
    6efc:	02842803          	lw	a6,40(s0)
    6f00:	0047f793          	andi	a5,a5,4
    6f04:	00078e63          	beqz	a5,6f20 <__sflush_r+0xa0>
    6f08:	00442703          	lw	a4,4(s0)
    6f0c:	03042783          	lw	a5,48(s0)
    6f10:	40e60633          	sub	a2,a2,a4
    6f14:	00078663          	beqz	a5,6f20 <__sflush_r+0xa0>
    6f18:	03c42783          	lw	a5,60(s0)
    6f1c:	40f60633          	sub	a2,a2,a5
    6f20:	01c42583          	lw	a1,28(s0)
    6f24:	00000693          	li	a3,0
    6f28:	00098513          	mv	a0,s3
    6f2c:	000800e7          	jalr	a6
    6f30:	fff00713          	li	a4,-1
    6f34:	00c41783          	lh	a5,12(s0)
    6f38:	12e51c63          	bne	a0,a4,7070 <__sflush_r+0x1f0>
    6f3c:	0009a683          	lw	a3,0(s3)
    6f40:	01d00713          	li	a4,29
    6f44:	18d76263          	bltu	a4,a3,70c8 <__sflush_r+0x248>
    6f48:	20400737          	lui	a4,0x20400
    6f4c:	00170713          	addi	a4,a4,1 # 20400001 <__neorv32_ram_size+0x203f0001>
    6f50:	00d75733          	srl	a4,a4,a3
    6f54:	00177713          	andi	a4,a4,1
    6f58:	16070863          	beqz	a4,70c8 <__sflush_r+0x248>
    6f5c:	01042683          	lw	a3,16(s0)
    6f60:	fffff737          	lui	a4,0xfffff
    6f64:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__crt0_stack_top+0x7ffef7ff>
    6f68:	00e7f733          	and	a4,a5,a4
    6f6c:	00e41623          	sh	a4,12(s0)
    6f70:	00042223          	sw	zero,4(s0)
    6f74:	00d42023          	sw	a3,0(s0)
    6f78:	01379713          	slli	a4,a5,0x13
    6f7c:	00075663          	bgez	a4,6f88 <__sflush_r+0x108>
    6f80:	0009a783          	lw	a5,0(s3)
    6f84:	10078863          	beqz	a5,7094 <__sflush_r+0x214>
    6f88:	03042583          	lw	a1,48(s0)
    6f8c:	0099a023          	sw	s1,0(s3)
    6f90:	10058a63          	beqz	a1,70a4 <__sflush_r+0x224>
    6f94:	04040793          	addi	a5,s0,64
    6f98:	00f58663          	beq	a1,a5,6fa4 <__sflush_r+0x124>
    6f9c:	00098513          	mv	a0,s3
    6fa0:	e44fe0ef          	jal	55e4 <_free_r>
    6fa4:	01412483          	lw	s1,20(sp)
    6fa8:	02042823          	sw	zero,48(s0)
    6fac:	01c12083          	lw	ra,28(sp)
    6fb0:	01812403          	lw	s0,24(sp)
    6fb4:	00c12983          	lw	s3,12(sp)
    6fb8:	00000513          	li	a0,0
    6fbc:	02010113          	addi	sp,sp,32
    6fc0:	00008067          	ret
    6fc4:	01212823          	sw	s2,16(sp)
    6fc8:	0105a903          	lw	s2,16(a1)
    6fcc:	08090a63          	beqz	s2,7060 <__sflush_r+0x1e0>
    6fd0:	00912a23          	sw	s1,20(sp)
    6fd4:	0005a483          	lw	s1,0(a1)
    6fd8:	00377713          	andi	a4,a4,3
    6fdc:	0125a023          	sw	s2,0(a1)
    6fe0:	412484b3          	sub	s1,s1,s2
    6fe4:	00000793          	li	a5,0
    6fe8:	00071463          	bnez	a4,6ff0 <__sflush_r+0x170>
    6fec:	0145a783          	lw	a5,20(a1)
    6ff0:	00f42423          	sw	a5,8(s0)
    6ff4:	00904863          	bgtz	s1,7004 <__sflush_r+0x184>
    6ff8:	0640006f          	j	705c <__sflush_r+0x1dc>
    6ffc:	00a90933          	add	s2,s2,a0
    7000:	04905e63          	blez	s1,705c <__sflush_r+0x1dc>
    7004:	02442783          	lw	a5,36(s0)
    7008:	01c42583          	lw	a1,28(s0)
    700c:	00048693          	mv	a3,s1
    7010:	00090613          	mv	a2,s2
    7014:	00098513          	mv	a0,s3
    7018:	000780e7          	jalr	a5
    701c:	40a484b3          	sub	s1,s1,a0
    7020:	fca04ee3          	bgtz	a0,6ffc <__sflush_r+0x17c>
    7024:	00c45783          	lhu	a5,12(s0)
    7028:	01012903          	lw	s2,16(sp)
    702c:	0407e793          	ori	a5,a5,64
    7030:	01c12083          	lw	ra,28(sp)
    7034:	00f41623          	sh	a5,12(s0)
    7038:	01812403          	lw	s0,24(sp)
    703c:	01412483          	lw	s1,20(sp)
    7040:	00c12983          	lw	s3,12(sp)
    7044:	fff00513          	li	a0,-1
    7048:	02010113          	addi	sp,sp,32
    704c:	00008067          	ret
    7050:	03c5a683          	lw	a3,60(a1)
    7054:	e6d044e3          	bgtz	a3,6ebc <__sflush_r+0x3c>
    7058:	f55ff06f          	j	6fac <__sflush_r+0x12c>
    705c:	01412483          	lw	s1,20(sp)
    7060:	01012903          	lw	s2,16(sp)
    7064:	f49ff06f          	j	6fac <__sflush_r+0x12c>
    7068:	05042603          	lw	a2,80(s0)
    706c:	e95ff06f          	j	6f00 <__sflush_r+0x80>
    7070:	01042683          	lw	a3,16(s0)
    7074:	fffff737          	lui	a4,0xfffff
    7078:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__crt0_stack_top+0x7ffef7ff>
    707c:	00e7f733          	and	a4,a5,a4
    7080:	00e41623          	sh	a4,12(s0)
    7084:	00042223          	sw	zero,4(s0)
    7088:	00d42023          	sw	a3,0(s0)
    708c:	01379713          	slli	a4,a5,0x13
    7090:	ee075ce3          	bgez	a4,6f88 <__sflush_r+0x108>
    7094:	03042583          	lw	a1,48(s0)
    7098:	04a42823          	sw	a0,80(s0)
    709c:	0099a023          	sw	s1,0(s3)
    70a0:	ee059ae3          	bnez	a1,6f94 <__sflush_r+0x114>
    70a4:	01412483          	lw	s1,20(sp)
    70a8:	f05ff06f          	j	6fac <__sflush_r+0x12c>
    70ac:	0009a783          	lw	a5,0(s3)
    70b0:	e40784e3          	beqz	a5,6ef8 <__sflush_r+0x78>
    70b4:	fe378713          	addi	a4,a5,-29
    70b8:	00070c63          	beqz	a4,70d0 <__sflush_r+0x250>
    70bc:	fea78793          	addi	a5,a5,-22
    70c0:	00078863          	beqz	a5,70d0 <__sflush_r+0x250>
    70c4:	00c45783          	lhu	a5,12(s0)
    70c8:	0407e793          	ori	a5,a5,64
    70cc:	f65ff06f          	j	7030 <__sflush_r+0x1b0>
    70d0:	0099a023          	sw	s1,0(s3)
    70d4:	01412483          	lw	s1,20(sp)
    70d8:	ed5ff06f          	j	6fac <__sflush_r+0x12c>

000070dc <_fflush_r>:
    70dc:	00050793          	mv	a5,a0
    70e0:	00050663          	beqz	a0,70ec <_fflush_r+0x10>
    70e4:	03452703          	lw	a4,52(a0)
    70e8:	00070e63          	beqz	a4,7104 <_fflush_r+0x28>
    70ec:	00c59703          	lh	a4,12(a1)
    70f0:	00071663          	bnez	a4,70fc <_fflush_r+0x20>
    70f4:	00000513          	li	a0,0
    70f8:	00008067          	ret
    70fc:	00078513          	mv	a0,a5
    7100:	d81ff06f          	j	6e80 <__sflush_r>
    7104:	fe010113          	addi	sp,sp,-32
    7108:	00b12623          	sw	a1,12(sp)
    710c:	00112e23          	sw	ra,28(sp)
    7110:	00a12423          	sw	a0,8(sp)
    7114:	985fe0ef          	jal	5a98 <__sinit>
    7118:	00c12583          	lw	a1,12(sp)
    711c:	00812783          	lw	a5,8(sp)
    7120:	00c59703          	lh	a4,12(a1)
    7124:	00070a63          	beqz	a4,7138 <_fflush_r+0x5c>
    7128:	01c12083          	lw	ra,28(sp)
    712c:	00078513          	mv	a0,a5
    7130:	02010113          	addi	sp,sp,32
    7134:	d4dff06f          	j	6e80 <__sflush_r>
    7138:	01c12083          	lw	ra,28(sp)
    713c:	00000513          	li	a0,0
    7140:	02010113          	addi	sp,sp,32
    7144:	00008067          	ret

00007148 <__smakebuf_r>:
    7148:	00c59783          	lh	a5,12(a1)
    714c:	0027f713          	andi	a4,a5,2
    7150:	00070e63          	beqz	a4,716c <__smakebuf_r+0x24>
    7154:	04358793          	addi	a5,a1,67
    7158:	00100713          	li	a4,1
    715c:	00f5a023          	sw	a5,0(a1)
    7160:	00f5a823          	sw	a5,16(a1)
    7164:	00e5aa23          	sw	a4,20(a1)
    7168:	00008067          	ret
    716c:	00058713          	mv	a4,a1
    7170:	00e59583          	lh	a1,14(a1)
    7174:	f8010113          	addi	sp,sp,-128
    7178:	06812c23          	sw	s0,120(sp)
    717c:	06112e23          	sw	ra,124(sp)
    7180:	00050413          	mv	s0,a0
    7184:	0805ce63          	bltz	a1,7220 <__smakebuf_r+0xd8>
    7188:	01810613          	addi	a2,sp,24
    718c:	00e12423          	sw	a4,8(sp)
    7190:	130000ef          	jal	72c0 <_fstat_r>
    7194:	00812703          	lw	a4,8(sp)
    7198:	08054263          	bltz	a0,721c <__smakebuf_r+0xd4>
    719c:	40000593          	li	a1,1024
    71a0:	00040513          	mv	a0,s0
    71a4:	06912a23          	sw	s1,116(sp)
    71a8:	00e12423          	sw	a4,8(sp)
    71ac:	01c12483          	lw	s1,28(sp)
    71b0:	d84fd0ef          	jal	4734 <_malloc_r>
    71b4:	00812703          	lw	a4,8(sp)
    71b8:	00c71783          	lh	a5,12(a4)
    71bc:	0c050263          	beqz	a0,7280 <__smakebuf_r+0x138>
    71c0:	40000693          	li	a3,1024
    71c4:	0807e793          	ori	a5,a5,128
    71c8:	00d72a23          	sw	a3,20(a4)
    71cc:	40c4d693          	srai	a3,s1,0xc
    71d0:	00f71623          	sh	a5,12(a4)
    71d4:	00a72023          	sw	a0,0(a4)
    71d8:	00a72823          	sw	a0,16(a4)
    71dc:	00f6f693          	andi	a3,a3,15
    71e0:	00200613          	li	a2,2
    71e4:	0cc69663          	bne	a3,a2,72b0 <__smakebuf_r+0x168>
    71e8:	00e71583          	lh	a1,14(a4)
    71ec:	00040513          	mv	a0,s0
    71f0:	00e12423          	sw	a4,8(sp)
    71f4:	130000ef          	jal	7324 <_isatty_r>
    71f8:	00812703          	lw	a4,8(sp)
    71fc:	00c71783          	lh	a5,12(a4)
    7200:	0a050863          	beqz	a0,72b0 <__smakebuf_r+0x168>
    7204:	ffc7f793          	andi	a5,a5,-4
    7208:	000016b7          	lui	a3,0x1
    720c:	07412483          	lw	s1,116(sp)
    7210:	0017e793          	ori	a5,a5,1
    7214:	80068693          	addi	a3,a3,-2048 # 800 <core_list_init+0xe4>
    7218:	0500006f          	j	7268 <__smakebuf_r+0x120>
    721c:	00c71783          	lh	a5,12(a4)
    7220:	0807f793          	andi	a5,a5,128
    7224:	0017b793          	seqz	a5,a5
    7228:	40f007b3          	neg	a5,a5
    722c:	3c07f593          	andi	a1,a5,960
    7230:	04058593          	addi	a1,a1,64
    7234:	00040513          	mv	a0,s0
    7238:	00e12623          	sw	a4,12(sp)
    723c:	00b12423          	sw	a1,8(sp)
    7240:	cf4fd0ef          	jal	4734 <_malloc_r>
    7244:	00c12703          	lw	a4,12(sp)
    7248:	00812583          	lw	a1,8(sp)
    724c:	00c71783          	lh	a5,12(a4)
    7250:	02050a63          	beqz	a0,7284 <__smakebuf_r+0x13c>
    7254:	0807e793          	ori	a5,a5,128
    7258:	00a72023          	sw	a0,0(a4)
    725c:	00a72823          	sw	a0,16(a4)
    7260:	00b72a23          	sw	a1,20(a4)
    7264:	00000693          	li	a3,0
    7268:	00d7e7b3          	or	a5,a5,a3
    726c:	00f71623          	sh	a5,12(a4)
    7270:	07c12083          	lw	ra,124(sp)
    7274:	07812403          	lw	s0,120(sp)
    7278:	08010113          	addi	sp,sp,128
    727c:	00008067          	ret
    7280:	07412483          	lw	s1,116(sp)
    7284:	2007f693          	andi	a3,a5,512
    7288:	fe0694e3          	bnez	a3,7270 <__smakebuf_r+0x128>
    728c:	ffc7f793          	andi	a5,a5,-4
    7290:	04370693          	addi	a3,a4,67
    7294:	0027e793          	ori	a5,a5,2
    7298:	00100613          	li	a2,1
    729c:	00f71623          	sh	a5,12(a4)
    72a0:	00d72023          	sw	a3,0(a4)
    72a4:	00d72823          	sw	a3,16(a4)
    72a8:	00c72a23          	sw	a2,20(a4)
    72ac:	fc5ff06f          	j	7270 <__smakebuf_r+0x128>
    72b0:	000016b7          	lui	a3,0x1
    72b4:	07412483          	lw	s1,116(sp)
    72b8:	80068693          	addi	a3,a3,-2048 # 800 <core_list_init+0xe4>
    72bc:	fadff06f          	j	7268 <__smakebuf_r+0x120>

000072c0 <_fstat_r>:
    72c0:	ff010113          	addi	sp,sp,-16
    72c4:	00058793          	mv	a5,a1
    72c8:	00812423          	sw	s0,8(sp)
    72cc:	00912223          	sw	s1,4(sp)
    72d0:	00060593          	mv	a1,a2
    72d4:	00050493          	mv	s1,a0
    72d8:	00078513          	mv	a0,a5
    72dc:	00112623          	sw	ra,12(sp)
    72e0:	da01a223          	sw	zero,-604(gp) # 800005a4 <errno>
    72e4:	f04fc0ef          	jal	39e8 <_fstat>
    72e8:	fff00793          	li	a5,-1
    72ec:	00f50c63          	beq	a0,a5,7304 <_fstat_r+0x44>
    72f0:	00c12083          	lw	ra,12(sp)
    72f4:	00812403          	lw	s0,8(sp)
    72f8:	00412483          	lw	s1,4(sp)
    72fc:	01010113          	addi	sp,sp,16
    7300:	00008067          	ret
    7304:	da41a783          	lw	a5,-604(gp) # 800005a4 <errno>
    7308:	fe0784e3          	beqz	a5,72f0 <_fstat_r+0x30>
    730c:	00c12083          	lw	ra,12(sp)
    7310:	00812403          	lw	s0,8(sp)
    7314:	00f4a023          	sw	a5,0(s1)
    7318:	00412483          	lw	s1,4(sp)
    731c:	01010113          	addi	sp,sp,16
    7320:	00008067          	ret

00007324 <_isatty_r>:
    7324:	ff010113          	addi	sp,sp,-16
    7328:	00812423          	sw	s0,8(sp)
    732c:	00912223          	sw	s1,4(sp)
    7330:	00050493          	mv	s1,a0
    7334:	00058513          	mv	a0,a1
    7338:	00112623          	sw	ra,12(sp)
    733c:	da01a223          	sw	zero,-604(gp) # 800005a4 <errno>
    7340:	eb0fc0ef          	jal	39f0 <_isatty>
    7344:	fff00793          	li	a5,-1
    7348:	00f50c63          	beq	a0,a5,7360 <_isatty_r+0x3c>
    734c:	00c12083          	lw	ra,12(sp)
    7350:	00812403          	lw	s0,8(sp)
    7354:	00412483          	lw	s1,4(sp)
    7358:	01010113          	addi	sp,sp,16
    735c:	00008067          	ret
    7360:	da41a783          	lw	a5,-604(gp) # 800005a4 <errno>
    7364:	fe0784e3          	beqz	a5,734c <_isatty_r+0x28>
    7368:	00c12083          	lw	ra,12(sp)
    736c:	00812403          	lw	s0,8(sp)
    7370:	00f4a023          	sw	a5,0(s1)
    7374:	00412483          	lw	s1,4(sp)
    7378:	01010113          	addi	sp,sp,16
    737c:	00008067          	ret

00007380 <__udivdi3>:
#endif

#ifdef L_udivdi3
UDWtype
__udivdi3 (UDWtype n, UDWtype d)
{
    7380:	fd010113          	addi	sp,sp,-48
    7384:	01512a23          	sw	s5,20(sp)
    7388:	02112623          	sw	ra,44(sp)
    738c:	02812423          	sw	s0,40(sp)
    7390:	02912223          	sw	s1,36(sp)
    7394:	03212023          	sw	s2,32(sp)
    7398:	01312e23          	sw	s3,28(sp)
    739c:	01412c23          	sw	s4,24(sp)
    73a0:	01612823          	sw	s6,16(sp)
    73a4:	01712623          	sw	s7,12(sp)
    73a8:	01812423          	sw	s8,8(sp)
    73ac:	01912223          	sw	s9,4(sp)
    73b0:	00050a93          	mv	s5,a0
  if (d1 == 0)
    73b4:	38069463          	bnez	a3,773c <__udivdi3+0x3bc>
    73b8:	0000b7b7          	lui	a5,0xb
    73bc:	00060993          	mv	s3,a2
    73c0:	00050493          	mv	s1,a0
      if (d0 > n1)
    73c4:	ea878793          	addi	a5,a5,-344 # aea8 <__clz_tab>
    73c8:	16c5f463          	bgeu	a1,a2,7530 <__udivdi3+0x1b0>
	  count_leading_zeros (bm, d0);
    73cc:	00010737          	lui	a4,0x10
    73d0:	00068a13          	mv	s4,a3
    73d4:	00058c13          	mv	s8,a1
    73d8:	12e67863          	bgeu	a2,a4,7508 <__udivdi3+0x188>
    73dc:	10063713          	sltiu	a4,a2,256
    73e0:	00173713          	seqz	a4,a4
    73e4:	00371713          	slli	a4,a4,0x3
    73e8:	00e656b3          	srl	a3,a2,a4
    73ec:	00d787b3          	add	a5,a5,a3
    73f0:	0007c783          	lbu	a5,0(a5)
    73f4:	00e787b3          	add	a5,a5,a4
	  if (bm != 0)
    73f8:	02000713          	li	a4,32
    73fc:	00e78e63          	beq	a5,a4,7418 <__udivdi3+0x98>
	  count_leading_zeros (bm, d0);
    7400:	40f70733          	sub	a4,a4,a5
	      n1 = (n1 << bm) | (n0 >> (W_TYPE_SIZE - bm));
    7404:	00e59c33          	sll	s8,a1,a4
    7408:	00fad7b3          	srl	a5,s5,a5
	      d0 = d0 << bm;
    740c:	00e619b3          	sll	s3,a2,a4
	      n1 = (n1 << bm) | (n0 >> (W_TYPE_SIZE - bm));
    7410:	0187ec33          	or	s8,a5,s8
	      n0 = n0 << bm;
    7414:	00ea94b3          	sll	s1,s5,a4
	  udiv_qrnnd (q0, n0, n1, n0, d0);
    7418:	0109db13          	srli	s6,s3,0x10
    741c:	000b0593          	mv	a1,s6
    7420:	01099b93          	slli	s7,s3,0x10
    7424:	000c0513          	mv	a0,s8
    7428:	798020ef          	jal	9bc0 <__hidden___udivsi3>
    742c:	010bdb93          	srli	s7,s7,0x10
    7430:	00050593          	mv	a1,a0
    7434:	00050913          	mv	s2,a0
    7438:	000b8513          	mv	a0,s7
    743c:	758020ef          	jal	9b94 <__mulsi3>
    7440:	00050413          	mv	s0,a0
    7444:	000b0593          	mv	a1,s6
    7448:	000c0513          	mv	a0,s8
    744c:	7bc020ef          	jal	9c08 <__umodsi3>
    7450:	01051513          	slli	a0,a0,0x10
    7454:	0104d693          	srli	a3,s1,0x10
    7458:	00a6e6b3          	or	a3,a3,a0
    745c:	0086fa63          	bgeu	a3,s0,7470 <__udivdi3+0xf0>
    7460:	00d986b3          	add	a3,s3,a3
    7464:	0086f463          	bgeu	a3,s0,746c <__udivdi3+0xec>
    7468:	0b36fa63          	bgeu	a3,s3,751c <__udivdi3+0x19c>
    746c:	fff90913          	addi	s2,s2,-1
    7470:	40868433          	sub	s0,a3,s0
    7474:	000b0593          	mv	a1,s6
    7478:	00040513          	mv	a0,s0
    747c:	744020ef          	jal	9bc0 <__hidden___udivsi3>
    7480:	00050593          	mv	a1,a0
    7484:	00050a93          	mv	s5,a0
    7488:	000b8513          	mv	a0,s7
    748c:	708020ef          	jal	9b94 <__mulsi3>
    7490:	00050b93          	mv	s7,a0
    7494:	000b0593          	mv	a1,s6
    7498:	00040513          	mv	a0,s0
    749c:	76c020ef          	jal	9c08 <__umodsi3>
    74a0:	01049493          	slli	s1,s1,0x10
    74a4:	01051513          	slli	a0,a0,0x10
    74a8:	0104d493          	srli	s1,s1,0x10
    74ac:	00a4e4b3          	or	s1,s1,a0
    74b0:	0174fa63          	bgeu	s1,s7,74c4 <__udivdi3+0x144>
    74b4:	009984b3          	add	s1,s3,s1
    74b8:	0174f463          	bgeu	s1,s7,74c0 <__udivdi3+0x140>
    74bc:	0734f663          	bgeu	s1,s3,7528 <__udivdi3+0x1a8>
    74c0:	fffa8a93          	addi	s5,s5,-1
    74c4:	01091793          	slli	a5,s2,0x10
    74c8:	0157e7b3          	or	a5,a5,s5
  return __udivmoddi4 (n, d, (UDWtype *) 0);
}
    74cc:	02c12083          	lw	ra,44(sp)
    74d0:	02812403          	lw	s0,40(sp)
    74d4:	02412483          	lw	s1,36(sp)
    74d8:	02012903          	lw	s2,32(sp)
    74dc:	01c12983          	lw	s3,28(sp)
    74e0:	01412a83          	lw	s5,20(sp)
    74e4:	01012b03          	lw	s6,16(sp)
    74e8:	00c12b83          	lw	s7,12(sp)
    74ec:	00812c03          	lw	s8,8(sp)
    74f0:	00412c83          	lw	s9,4(sp)
    74f4:	000a0593          	mv	a1,s4
    74f8:	00078513          	mv	a0,a5
    74fc:	01812a03          	lw	s4,24(sp)
    7500:	03010113          	addi	sp,sp,48
    7504:	00008067          	ret
	  count_leading_zeros (bm, d0);
    7508:	010006b7          	lui	a3,0x1000
    750c:	01800713          	li	a4,24
    7510:	ecd67ce3          	bgeu	a2,a3,73e8 <__udivdi3+0x68>
    7514:	01000713          	li	a4,16
    7518:	ed1ff06f          	j	73e8 <__udivdi3+0x68>
	  udiv_qrnnd (q0, n0, n1, n0, d0);
    751c:	ffe90913          	addi	s2,s2,-2
    7520:	013686b3          	add	a3,a3,s3
    7524:	f4dff06f          	j	7470 <__udivdi3+0xf0>
    7528:	ffea8a93          	addi	s5,s5,-2
    752c:	f99ff06f          	j	74c4 <__udivdi3+0x144>
	  count_leading_zeros (bm, d0);
    7530:	00000713          	li	a4,0
	  if (d0 == 0)
    7534:	00060c63          	beqz	a2,754c <__udivdi3+0x1cc>
	  count_leading_zeros (bm, d0);
    7538:	00010737          	lui	a4,0x10
    753c:	0ee67463          	bgeu	a2,a4,7624 <__udivdi3+0x2a4>
    7540:	10063713          	sltiu	a4,a2,256
    7544:	00173713          	seqz	a4,a4
    7548:	00371713          	slli	a4,a4,0x3
    754c:	00e656b3          	srl	a3,a2,a4
    7550:	00d787b3          	add	a5,a5,a3
    7554:	0007c783          	lbu	a5,0(a5)
    7558:	00e787b3          	add	a5,a5,a4
	  if (bm == 0)
    755c:	02000713          	li	a4,32
    7560:	0ce79c63          	bne	a5,a4,7638 <__udivdi3+0x2b8>
	      n1 -= d0;
    7564:	40c58433          	sub	s0,a1,a2
	      q1 = 1;
    7568:	00100a13          	li	s4,1
	  udiv_qrnnd (q0, n0, n1, n0, d0);
    756c:	0109da93          	srli	s5,s3,0x10
    7570:	000a8593          	mv	a1,s5
    7574:	01099b13          	slli	s6,s3,0x10
    7578:	00040513          	mv	a0,s0
    757c:	644020ef          	jal	9bc0 <__hidden___udivsi3>
    7580:	010b5b13          	srli	s6,s6,0x10
    7584:	00050593          	mv	a1,a0
    7588:	00050913          	mv	s2,a0
    758c:	000b0513          	mv	a0,s6
    7590:	604020ef          	jal	9b94 <__mulsi3>
    7594:	00050b93          	mv	s7,a0
    7598:	000a8593          	mv	a1,s5
    759c:	00040513          	mv	a0,s0
    75a0:	668020ef          	jal	9c08 <__umodsi3>
    75a4:	01051513          	slli	a0,a0,0x10
    75a8:	0104d693          	srli	a3,s1,0x10
    75ac:	00a6e6b3          	or	a3,a3,a0
    75b0:	0176fa63          	bgeu	a3,s7,75c4 <__udivdi3+0x244>
    75b4:	00d986b3          	add	a3,s3,a3
    75b8:	0176f463          	bgeu	a3,s7,75c0 <__udivdi3+0x240>
    75bc:	1736f663          	bgeu	a3,s3,7728 <__udivdi3+0x3a8>
    75c0:	fff90913          	addi	s2,s2,-1
    75c4:	41768433          	sub	s0,a3,s7
    75c8:	000a8593          	mv	a1,s5
    75cc:	00040513          	mv	a0,s0
    75d0:	5f0020ef          	jal	9bc0 <__hidden___udivsi3>
    75d4:	00050593          	mv	a1,a0
    75d8:	00050b93          	mv	s7,a0
    75dc:	000b0513          	mv	a0,s6
    75e0:	5b4020ef          	jal	9b94 <__mulsi3>
    75e4:	00050b13          	mv	s6,a0
    75e8:	000a8593          	mv	a1,s5
    75ec:	00040513          	mv	a0,s0
    75f0:	618020ef          	jal	9c08 <__umodsi3>
    75f4:	01049493          	slli	s1,s1,0x10
    75f8:	01051513          	slli	a0,a0,0x10
    75fc:	0104d493          	srli	s1,s1,0x10
    7600:	00a4e4b3          	or	s1,s1,a0
    7604:	0164fa63          	bgeu	s1,s6,7618 <__udivdi3+0x298>
    7608:	009984b3          	add	s1,s3,s1
    760c:	0164f463          	bgeu	s1,s6,7614 <__udivdi3+0x294>
    7610:	1334f263          	bgeu	s1,s3,7734 <__udivdi3+0x3b4>
    7614:	fffb8b93          	addi	s7,s7,-1
    7618:	01091793          	slli	a5,s2,0x10
    761c:	0177e7b3          	or	a5,a5,s7
    7620:	eadff06f          	j	74cc <__udivdi3+0x14c>
	  count_leading_zeros (bm, d0);
    7624:	010006b7          	lui	a3,0x1000
    7628:	01800713          	li	a4,24
    762c:	f2d670e3          	bgeu	a2,a3,754c <__udivdi3+0x1cc>
    7630:	01000713          	li	a4,16
    7634:	f19ff06f          	j	754c <__udivdi3+0x1cc>
    7638:	40f70733          	sub	a4,a4,a5
	      d0 = d0 << bm;
    763c:	00e619b3          	sll	s3,a2,a4
	      n2 = n1 >> b;
    7640:	00f5d433          	srl	s0,a1,a5
	      udiv_qrnnd (q1, n1, n2, n1, d0);
    7644:	0109db13          	srli	s6,s3,0x10
	      n1 = (n1 << bm) | (n0 >> b);
    7648:	00e595b3          	sll	a1,a1,a4
    764c:	00fad7b3          	srl	a5,s5,a5
    7650:	00b7ea33          	or	s4,a5,a1
	      udiv_qrnnd (q1, n1, n2, n1, d0);
    7654:	01099b93          	slli	s7,s3,0x10
    7658:	000b0593          	mv	a1,s6
    765c:	00040513          	mv	a0,s0
	      n0 = n0 << bm;
    7660:	00ea94b3          	sll	s1,s5,a4
	      udiv_qrnnd (q1, n1, n2, n1, d0);
    7664:	010bdb93          	srli	s7,s7,0x10
    7668:	558020ef          	jal	9bc0 <__hidden___udivsi3>
    766c:	00050593          	mv	a1,a0
    7670:	00050913          	mv	s2,a0
    7674:	000b8513          	mv	a0,s7
    7678:	51c020ef          	jal	9b94 <__mulsi3>
    767c:	00050a93          	mv	s5,a0
    7680:	000b0593          	mv	a1,s6
    7684:	00040513          	mv	a0,s0
    7688:	580020ef          	jal	9c08 <__umodsi3>
    768c:	01051513          	slli	a0,a0,0x10
    7690:	010a5693          	srli	a3,s4,0x10
    7694:	00a6e6b3          	or	a3,a3,a0
    7698:	0156fa63          	bgeu	a3,s5,76ac <__udivdi3+0x32c>
    769c:	00d986b3          	add	a3,s3,a3
    76a0:	0156f463          	bgeu	a3,s5,76a8 <__udivdi3+0x328>
    76a4:	0736f663          	bgeu	a3,s3,7710 <__udivdi3+0x390>
    76a8:	fff90913          	addi	s2,s2,-1
    76ac:	41568433          	sub	s0,a3,s5
    76b0:	000b0593          	mv	a1,s6
    76b4:	00040513          	mv	a0,s0
    76b8:	508020ef          	jal	9bc0 <__hidden___udivsi3>
    76bc:	00050593          	mv	a1,a0
    76c0:	00050a93          	mv	s5,a0
    76c4:	000b8513          	mv	a0,s7
    76c8:	4cc020ef          	jal	9b94 <__mulsi3>
    76cc:	00050b93          	mv	s7,a0
    76d0:	000b0593          	mv	a1,s6
    76d4:	00040513          	mv	a0,s0
    76d8:	530020ef          	jal	9c08 <__umodsi3>
    76dc:	010a1793          	slli	a5,s4,0x10
    76e0:	01051513          	slli	a0,a0,0x10
    76e4:	0107d793          	srli	a5,a5,0x10
    76e8:	00a7e7b3          	or	a5,a5,a0
    76ec:	0177fa63          	bgeu	a5,s7,7700 <__udivdi3+0x380>
    76f0:	00f987b3          	add	a5,s3,a5
    76f4:	0177f463          	bgeu	a5,s7,76fc <__udivdi3+0x37c>
    76f8:	0337f263          	bgeu	a5,s3,771c <__udivdi3+0x39c>
    76fc:	fffa8a93          	addi	s5,s5,-1
    7700:	01091913          	slli	s2,s2,0x10
    7704:	41778433          	sub	s0,a5,s7
    7708:	01596a33          	or	s4,s2,s5
    770c:	e61ff06f          	j	756c <__udivdi3+0x1ec>
    7710:	ffe90913          	addi	s2,s2,-2
    7714:	013686b3          	add	a3,a3,s3
    7718:	f95ff06f          	j	76ac <__udivdi3+0x32c>
    771c:	ffea8a93          	addi	s5,s5,-2
    7720:	013787b3          	add	a5,a5,s3
    7724:	fddff06f          	j	7700 <__udivdi3+0x380>
	  udiv_qrnnd (q0, n0, n1, n0, d0);
    7728:	ffe90913          	addi	s2,s2,-2
    772c:	013686b3          	add	a3,a3,s3
    7730:	e95ff06f          	j	75c4 <__udivdi3+0x244>
    7734:	ffeb8b93          	addi	s7,s7,-2
    7738:	ee1ff06f          	j	7618 <__udivdi3+0x298>
      if (d1 > n1)
    773c:	1ed5e663          	bltu	a1,a3,7928 <__udivdi3+0x5a8>
	  count_leading_zeros (bm, d1);
    7740:	000107b7          	lui	a5,0x10
    7744:	04f6f463          	bgeu	a3,a5,778c <__udivdi3+0x40c>
    7748:	1006b713          	sltiu	a4,a3,256
    774c:	00173713          	seqz	a4,a4
    7750:	00371713          	slli	a4,a4,0x3
    7754:	0000b7b7          	lui	a5,0xb
    7758:	00e6d533          	srl	a0,a3,a4
    775c:	ea878793          	addi	a5,a5,-344 # aea8 <__clz_tab>
    7760:	00a787b3          	add	a5,a5,a0
    7764:	0007c783          	lbu	a5,0(a5)
	  if (bm == 0)
    7768:	02000b13          	li	s6,32
	  count_leading_zeros (bm, d1);
    776c:	00e787b3          	add	a5,a5,a4
	  if (bm == 0)
    7770:	03679863          	bne	a5,s6,77a0 <__udivdi3+0x420>
	      if (n1 > d1 || n0 >= d0)
    7774:	00cab7b3          	sltu	a5,s5,a2
    7778:	0017b793          	seqz	a5,a5
    777c:	00b6b6b3          	sltu	a3,a3,a1
    7780:	00d7e7b3          	or	a5,a5,a3
	      q1 = 0;
    7784:	00000a13          	li	s4,0
    7788:	d45ff06f          	j	74cc <__udivdi3+0x14c>
	  count_leading_zeros (bm, d1);
    778c:	010007b7          	lui	a5,0x1000
    7790:	01800713          	li	a4,24
    7794:	fcf6f0e3          	bgeu	a3,a5,7754 <__udivdi3+0x3d4>
    7798:	01000713          	li	a4,16
    779c:	fb9ff06f          	j	7754 <__udivdi3+0x3d4>
    77a0:	40fb0b33          	sub	s6,s6,a5
	      d1 = (d1 << bm) | (d0 >> b);
    77a4:	00f65bb3          	srl	s7,a2,a5
    77a8:	016696b3          	sll	a3,a3,s6
    77ac:	00dbebb3          	or	s7,s7,a3
	      n2 = n1 >> b;
    77b0:	00f5d4b3          	srl	s1,a1,a5
	      udiv_qrnnd (q0, n1, n2, n1, d1);
    77b4:	010bdc93          	srli	s9,s7,0x10
	      n1 = (n1 << bm) | (n0 >> b);
    77b8:	00fad7b3          	srl	a5,s5,a5
    77bc:	016595b3          	sll	a1,a1,s6
    77c0:	00b7ea33          	or	s4,a5,a1
	      udiv_qrnnd (q0, n1, n2, n1, d1);
    77c4:	010b9c13          	slli	s8,s7,0x10
    77c8:	000c8593          	mv	a1,s9
    77cc:	00048513          	mv	a0,s1
	      d0 = d0 << bm;
    77d0:	016619b3          	sll	s3,a2,s6
	      udiv_qrnnd (q0, n1, n2, n1, d1);
    77d4:	010c5c13          	srli	s8,s8,0x10
    77d8:	3e8020ef          	jal	9bc0 <__hidden___udivsi3>
    77dc:	00050593          	mv	a1,a0
    77e0:	00050413          	mv	s0,a0
    77e4:	000c0513          	mv	a0,s8
    77e8:	3ac020ef          	jal	9b94 <__mulsi3>
    77ec:	00050913          	mv	s2,a0
    77f0:	000c8593          	mv	a1,s9
    77f4:	00048513          	mv	a0,s1
    77f8:	410020ef          	jal	9c08 <__umodsi3>
    77fc:	01051513          	slli	a0,a0,0x10
    7800:	010a5713          	srli	a4,s4,0x10
    7804:	00a76733          	or	a4,a4,a0
    7808:	01277a63          	bgeu	a4,s2,781c <__udivdi3+0x49c>
    780c:	00eb8733          	add	a4,s7,a4
    7810:	01277463          	bgeu	a4,s2,7818 <__udivdi3+0x498>
    7814:	0f777e63          	bgeu	a4,s7,7910 <__udivdi3+0x590>
    7818:	fff40413          	addi	s0,s0,-1
    781c:	412704b3          	sub	s1,a4,s2
    7820:	000c8593          	mv	a1,s9
    7824:	00048513          	mv	a0,s1
    7828:	398020ef          	jal	9bc0 <__hidden___udivsi3>
    782c:	00050593          	mv	a1,a0
    7830:	00050913          	mv	s2,a0
    7834:	000c0513          	mv	a0,s8
    7838:	35c020ef          	jal	9b94 <__mulsi3>
    783c:	00050c13          	mv	s8,a0
    7840:	000c8593          	mv	a1,s9
    7844:	00048513          	mv	a0,s1
    7848:	3c0020ef          	jal	9c08 <__umodsi3>
    784c:	010a1793          	slli	a5,s4,0x10
    7850:	01051513          	slli	a0,a0,0x10
    7854:	0107d793          	srli	a5,a5,0x10
    7858:	00a7e7b3          	or	a5,a5,a0
    785c:	0187fa63          	bgeu	a5,s8,7870 <__udivdi3+0x4f0>
    7860:	00fb87b3          	add	a5,s7,a5
    7864:	0187f463          	bgeu	a5,s8,786c <__udivdi3+0x4ec>
    7868:	0b77fa63          	bgeu	a5,s7,791c <__udivdi3+0x59c>
    786c:	fff90913          	addi	s2,s2,-1
	      umul_ppmm (m1, m0, q0, d0);
    7870:	01099313          	slli	t1,s3,0x10
	      udiv_qrnnd (q0, n1, n2, n1, d1);
    7874:	01041413          	slli	s0,s0,0x10
	      umul_ppmm (m1, m0, q0, d0);
    7878:	01035313          	srli	t1,t1,0x10
    787c:	01091513          	slli	a0,s2,0x10
	      udiv_qrnnd (q0, n1, n2, n1, d1);
    7880:	418788b3          	sub	a7,a5,s8
	      umul_ppmm (m1, m0, q0, d0);
    7884:	01055513          	srli	a0,a0,0x10
	      udiv_qrnnd (q0, n1, n2, n1, d1);
    7888:	012467b3          	or	a5,s0,s2
	      umul_ppmm (m1, m0, q0, d0);
    788c:	00030593          	mv	a1,t1
    7890:	304020ef          	jal	9b94 <__mulsi3>
    7894:	00050813          	mv	a6,a0
    7898:	01091513          	slli	a0,s2,0x10
    789c:	01055513          	srli	a0,a0,0x10
    78a0:	0109d593          	srli	a1,s3,0x10
    78a4:	2f0020ef          	jal	9b94 <__mulsi3>
    78a8:	00050713          	mv	a4,a0
    78ac:	00030593          	mv	a1,t1
    78b0:	0107d513          	srli	a0,a5,0x10
    78b4:	2e0020ef          	jal	9b94 <__mulsi3>
    78b8:	00050313          	mv	t1,a0
    78bc:	0109d593          	srli	a1,s3,0x10
    78c0:	0107d513          	srli	a0,a5,0x10
    78c4:	2d0020ef          	jal	9b94 <__mulsi3>
    78c8:	01085693          	srli	a3,a6,0x10
    78cc:	00670733          	add	a4,a4,t1
    78d0:	00e686b3          	add	a3,a3,a4
    78d4:	0066f663          	bgeu	a3,t1,78e0 <__udivdi3+0x560>
    78d8:	00010737          	lui	a4,0x10
    78dc:	00e50533          	add	a0,a0,a4
    78e0:	0106d613          	srli	a2,a3,0x10
    78e4:	00a60633          	add	a2,a2,a0
	      if (m1 > n1 || (m1 == n1 && m0 > n0))
    78e8:	02c8e063          	bltu	a7,a2,7908 <__udivdi3+0x588>
	      umul_ppmm (m1, m0, q0, d0);
    78ec:	01081813          	slli	a6,a6,0x10
    78f0:	01069693          	slli	a3,a3,0x10
    78f4:	01085813          	srli	a6,a6,0x10
	      n0 = n0 << bm;
    78f8:	016a9733          	sll	a4,s5,s6
	      umul_ppmm (m1, m0, q0, d0);
    78fc:	010686b3          	add	a3,a3,a6
	      if (m1 > n1 || (m1 == n1 && m0 > n0))
    7900:	e8d772e3          	bgeu	a4,a3,7784 <__udivdi3+0x404>
    7904:	e8c890e3          	bne	a7,a2,7784 <__udivdi3+0x404>
		  q0--;
    7908:	fff78793          	addi	a5,a5,-1 # ffffff <__neorv32_ram_size+0xfeffff>
		  sub_ddmmss (m1, m0, m1, m0, d1, d0);
    790c:	e79ff06f          	j	7784 <__udivdi3+0x404>
	      udiv_qrnnd (q0, n1, n2, n1, d1);
    7910:	ffe40413          	addi	s0,s0,-2
    7914:	01770733          	add	a4,a4,s7
    7918:	f05ff06f          	j	781c <__udivdi3+0x49c>
    791c:	ffe90913          	addi	s2,s2,-2
    7920:	017787b3          	add	a5,a5,s7
    7924:	f4dff06f          	j	7870 <__udivdi3+0x4f0>
	  q1 = 0;
    7928:	00000a13          	li	s4,0
	  q0 = 0;
    792c:	00000793          	li	a5,0
    7930:	b9dff06f          	j	74cc <__udivdi3+0x14c>

00007934 <__adddf3>:
  FP_DECL_D (B);
  FP_DECL_D (R);
  DFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_SEMIRAW_D (A, a);
    7934:	00100737          	lui	a4,0x100
{
    7938:	fe010113          	addi	sp,sp,-32
  FP_UNPACK_SEMIRAW_D (A, a);
    793c:	fff70713          	addi	a4,a4,-1 # fffff <__neorv32_ram_size+0xeffff>
    7940:	00b777b3          	and	a5,a4,a1
  FP_UNPACK_SEMIRAW_D (B, b);
    7944:	0146d893          	srli	a7,a3,0x14
    7948:	00d77733          	and	a4,a4,a3
{
    794c:	00812c23          	sw	s0,24(sp)
  FP_UNPACK_SEMIRAW_D (A, a);
    7950:	0145d413          	srli	s0,a1,0x14
  FP_UNPACK_SEMIRAW_D (B, b);
    7954:	00371713          	slli	a4,a4,0x3
    7958:	01d65813          	srli	a6,a2,0x1d
{
    795c:	01212823          	sw	s2,16(sp)
  FP_UNPACK_SEMIRAW_D (A, a);
    7960:	7ff47413          	andi	s0,s0,2047
    7964:	01f5d913          	srli	s2,a1,0x1f
    7968:	00379793          	slli	a5,a5,0x3
    796c:	01d55593          	srli	a1,a0,0x1d
  FP_UNPACK_SEMIRAW_D (B, b);
    7970:	7ff8f893          	andi	a7,a7,2047
{
    7974:	00112e23          	sw	ra,28(sp)
    7978:	00912a23          	sw	s1,20(sp)
    797c:	01312623          	sw	s3,12(sp)
  FP_UNPACK_SEMIRAW_D (B, b);
    7980:	01f6d693          	srli	a3,a3,0x1f
  FP_UNPACK_SEMIRAW_D (A, a);
    7984:	00f5e7b3          	or	a5,a1,a5
  FP_UNPACK_SEMIRAW_D (B, b);
    7988:	00e86833          	or	a6,a6,a4
  FP_UNPACK_SEMIRAW_D (A, a);
    798c:	00351513          	slli	a0,a0,0x3
  FP_UNPACK_SEMIRAW_D (B, b);
    7990:	00361613          	slli	a2,a2,0x3
  FP_ADD_D (R, A, B);
    7994:	41140733          	sub	a4,s0,a7
    7998:	7ff00593          	li	a1,2047
    799c:	30d91463          	bne	s2,a3,7ca4 <__adddf3+0x370>
    79a0:	10e05263          	blez	a4,7aa4 <__adddf3+0x170>
    79a4:	02089c63          	bnez	a7,79dc <__adddf3+0xa8>
    79a8:	00c86733          	or	a4,a6,a2
    79ac:	02070463          	beqz	a4,79d4 <__adddf3+0xa0>
    79b0:	fff40713          	addi	a4,s0,-1
    79b4:	00071e63          	bnez	a4,79d0 <__adddf3+0x9c>
    79b8:	00c50633          	add	a2,a0,a2
    79bc:	010787b3          	add	a5,a5,a6
    79c0:	00a63533          	sltu	a0,a2,a0
    79c4:	00a787b3          	add	a5,a5,a0
    79c8:	00100413          	li	s0,1
    79cc:	0600006f          	j	7a2c <__adddf3+0xf8>
    79d0:	00b41c63          	bne	s0,a1,79e8 <__adddf3+0xb4>
    79d4:	00050613          	mv	a2,a0
    79d8:	1d80006f          	j	7bb0 <__adddf3+0x27c>
    79dc:	feb40ce3          	beq	s0,a1,79d4 <__adddf3+0xa0>
    79e0:	008006b7          	lui	a3,0x800
    79e4:	00d86833          	or	a6,a6,a3
    79e8:	03800693          	li	a3,56
    79ec:	0ae6c663          	blt	a3,a4,7a98 <__adddf3+0x164>
    79f0:	01f00693          	li	a3,31
    79f4:	02000893          	li	a7,32
    79f8:	06e6c863          	blt	a3,a4,7a68 <__adddf3+0x134>
    79fc:	40e888b3          	sub	a7,a7,a4
    7a00:	011816b3          	sll	a3,a6,a7
    7a04:	00e655b3          	srl	a1,a2,a4
    7a08:	011618b3          	sll	a7,a2,a7
    7a0c:	00b6e6b3          	or	a3,a3,a1
    7a10:	011038b3          	snez	a7,a7
    7a14:	0116e6b3          	or	a3,a3,a7
    7a18:	00e85733          	srl	a4,a6,a4
    7a1c:	00a68633          	add	a2,a3,a0
    7a20:	00f70733          	add	a4,a4,a5
    7a24:	00d636b3          	sltu	a3,a2,a3
    7a28:	00d707b3          	add	a5,a4,a3
    7a2c:	00879713          	slli	a4,a5,0x8
    7a30:	22075663          	bgez	a4,7c5c <__adddf3+0x328>
    7a34:	00140413          	addi	s0,s0,1
    7a38:	7ff00713          	li	a4,2047
    7a3c:	60e40863          	beq	s0,a4,804c <__adddf3+0x718>
    7a40:	ff800737          	lui	a4,0xff800
    7a44:	fff70713          	addi	a4,a4,-1 # ff7fffff <__crt0_stack_top+0x7f7effff>
    7a48:	00e7f7b3          	and	a5,a5,a4
    7a4c:	00165713          	srli	a4,a2,0x1
    7a50:	00167613          	andi	a2,a2,1
    7a54:	00c76733          	or	a4,a4,a2
    7a58:	01f79613          	slli	a2,a5,0x1f
    7a5c:	00e66633          	or	a2,a2,a4
    7a60:	0017d793          	srli	a5,a5,0x1
    7a64:	1f80006f          	j	7c5c <__adddf3+0x328>
    7a68:	fe070693          	addi	a3,a4,-32
    7a6c:	00d856b3          	srl	a3,a6,a3
    7a70:	00000593          	li	a1,0
    7a74:	01170863          	beq	a4,a7,7a84 <__adddf3+0x150>
    7a78:	04000593          	li	a1,64
    7a7c:	40e585b3          	sub	a1,a1,a4
    7a80:	00b815b3          	sll	a1,a6,a1
    7a84:	00c5e5b3          	or	a1,a1,a2
    7a88:	00b035b3          	snez	a1,a1
    7a8c:	00b6e6b3          	or	a3,a3,a1
    7a90:	00000713          	li	a4,0
    7a94:	f89ff06f          	j	7a1c <__adddf3+0xe8>
    7a98:	00c866b3          	or	a3,a6,a2
    7a9c:	00d036b3          	snez	a3,a3
    7aa0:	ff1ff06f          	j	7a90 <__adddf3+0x15c>
    7aa4:	0c070263          	beqz	a4,7b68 <__adddf3+0x234>
    7aa8:	40888733          	sub	a4,a7,s0
    7aac:	02041263          	bnez	s0,7ad0 <__adddf3+0x19c>
    7ab0:	00a7e6b3          	or	a3,a5,a0
    7ab4:	00068863          	beqz	a3,7ac4 <__adddf3+0x190>
    7ab8:	fff70693          	addi	a3,a4,-1
    7abc:	ee068ee3          	beqz	a3,79b8 <__adddf3+0x84>
    7ac0:	02b71063          	bne	a4,a1,7ae0 <__adddf3+0x1ac>
    7ac4:	00080793          	mv	a5,a6
    7ac8:	00070413          	mv	s0,a4
    7acc:	0e40006f          	j	7bb0 <__adddf3+0x27c>
    7ad0:	58b88663          	beq	a7,a1,805c <__adddf3+0x728>
    7ad4:	008006b7          	lui	a3,0x800
    7ad8:	00d7e7b3          	or	a5,a5,a3
    7adc:	00070693          	mv	a3,a4
    7ae0:	03800713          	li	a4,56
    7ae4:	06d74c63          	blt	a4,a3,7b5c <__adddf3+0x228>
    7ae8:	01f00713          	li	a4,31
    7aec:	02000313          	li	t1,32
    7af0:	02d74e63          	blt	a4,a3,7b2c <__adddf3+0x1f8>
    7af4:	40d30333          	sub	t1,t1,a3
    7af8:	00679733          	sll	a4,a5,t1
    7afc:	00d555b3          	srl	a1,a0,a3
    7b00:	00651333          	sll	t1,a0,t1
    7b04:	00b76733          	or	a4,a4,a1
    7b08:	00603333          	snez	t1,t1
    7b0c:	00676733          	or	a4,a4,t1
    7b10:	00d7d6b3          	srl	a3,a5,a3
    7b14:	00c70633          	add	a2,a4,a2
    7b18:	010686b3          	add	a3,a3,a6
    7b1c:	00e63733          	sltu	a4,a2,a4
    7b20:	00e687b3          	add	a5,a3,a4
    7b24:	00088413          	mv	s0,a7
    7b28:	f05ff06f          	j	7a2c <__adddf3+0xf8>
    7b2c:	fe068713          	addi	a4,a3,-32 # 7fffe0 <__neorv32_ram_size+0x7effe0>
    7b30:	00e7d733          	srl	a4,a5,a4
    7b34:	00000593          	li	a1,0
    7b38:	00668863          	beq	a3,t1,7b48 <__adddf3+0x214>
    7b3c:	04000593          	li	a1,64
    7b40:	40d585b3          	sub	a1,a1,a3
    7b44:	00b795b3          	sll	a1,a5,a1
    7b48:	00a5e5b3          	or	a1,a1,a0
    7b4c:	00b035b3          	snez	a1,a1
    7b50:	00b76733          	or	a4,a4,a1
    7b54:	00000693          	li	a3,0
    7b58:	fbdff06f          	j	7b14 <__adddf3+0x1e0>
    7b5c:	00a7e733          	or	a4,a5,a0
    7b60:	00e03733          	snez	a4,a4
    7b64:	ff1ff06f          	j	7b54 <__adddf3+0x220>
    7b68:	00140713          	addi	a4,s0,1
    7b6c:	7fe77693          	andi	a3,a4,2046
    7b70:	0c069263          	bnez	a3,7c34 <__adddf3+0x300>
    7b74:	00a7e733          	or	a4,a5,a0
    7b78:	0a041463          	bnez	s0,7c20 <__adddf3+0x2ec>
    7b7c:	4a070863          	beqz	a4,802c <__adddf3+0x6f8>
    7b80:	00c86733          	or	a4,a6,a2
    7b84:	4a070863          	beqz	a4,8034 <__adddf3+0x700>
    7b88:	00c50633          	add	a2,a0,a2
    7b8c:	010787b3          	add	a5,a5,a6
    7b90:	00a63533          	sltu	a0,a2,a0
    7b94:	00a787b3          	add	a5,a5,a0
    7b98:	00879713          	slli	a4,a5,0x8
    7b9c:	32075a63          	bgez	a4,7ed0 <__adddf3+0x59c>
    7ba0:	ff800737          	lui	a4,0xff800
    7ba4:	fff70713          	addi	a4,a4,-1 # ff7fffff <__crt0_stack_top+0x7f7effff>
    7ba8:	00e7f7b3          	and	a5,a5,a4
    7bac:	00100413          	li	s0,1
  FP_PACK_SEMIRAW_D (r, R);
    7bb0:	01d79713          	slli	a4,a5,0x1d
    7bb4:	00365613          	srli	a2,a2,0x3
    7bb8:	7ff00693          	li	a3,2047
    7bbc:	00c76733          	or	a4,a4,a2
    7bc0:	0037d793          	srli	a5,a5,0x3
    7bc4:	00d41e63          	bne	s0,a3,7be0 <__adddf3+0x2ac>
    7bc8:	00f76733          	or	a4,a4,a5
    7bcc:	00000793          	li	a5,0
    7bd0:	00070863          	beqz	a4,7be0 <__adddf3+0x2ac>
    7bd4:	000807b7          	lui	a5,0x80
    7bd8:	00000713          	li	a4,0
    7bdc:	00000913          	li	s2,0
    7be0:	7ff47413          	andi	s0,s0,2047
    7be4:	00c79793          	slli	a5,a5,0xc
    7be8:	00c7d793          	srli	a5,a5,0xc
    7bec:	01441413          	slli	s0,s0,0x14
    7bf0:	01f91593          	slli	a1,s2,0x1f
    7bf4:	00f46433          	or	s0,s0,a5
  FP_HANDLE_EXCEPTIONS;

  return r;
}
    7bf8:	01c12083          	lw	ra,28(sp)
  FP_PACK_SEMIRAW_D (r, R);
    7bfc:	00b467b3          	or	a5,s0,a1
}
    7c00:	01812403          	lw	s0,24(sp)
    7c04:	01412483          	lw	s1,20(sp)
    7c08:	01012903          	lw	s2,16(sp)
    7c0c:	00c12983          	lw	s3,12(sp)
    7c10:	00070513          	mv	a0,a4
    7c14:	00078593          	mv	a1,a5
    7c18:	02010113          	addi	sp,sp,32
    7c1c:	00008067          	ret
  FP_ADD_D (R, A, B);
    7c20:	40070e63          	beqz	a4,803c <__adddf3+0x708>
    7c24:	00c86833          	or	a6,a6,a2
    7c28:	2c081c63          	bnez	a6,7f00 <__adddf3+0x5cc>
    7c2c:	00050613          	mv	a2,a0
    7c30:	4100006f          	j	8040 <__adddf3+0x70c>
    7c34:	40b70a63          	beq	a4,a1,8048 <__adddf3+0x714>
    7c38:	00c50633          	add	a2,a0,a2
    7c3c:	00a63533          	sltu	a0,a2,a0
    7c40:	010787b3          	add	a5,a5,a6
    7c44:	00a787b3          	add	a5,a5,a0
    7c48:	01f79693          	slli	a3,a5,0x1f
    7c4c:	00165613          	srli	a2,a2,0x1
    7c50:	00c6e633          	or	a2,a3,a2
    7c54:	0017d793          	srli	a5,a5,0x1
    7c58:	00070413          	mv	s0,a4
  FP_PACK_SEMIRAW_D (r, R);
    7c5c:	00767713          	andi	a4,a2,7
    7c60:	02070063          	beqz	a4,7c80 <__adddf3+0x34c>
    7c64:	00f67713          	andi	a4,a2,15
    7c68:	00400693          	li	a3,4
    7c6c:	00d70a63          	beq	a4,a3,7c80 <__adddf3+0x34c>
    7c70:	00d60733          	add	a4,a2,a3
    7c74:	00c736b3          	sltu	a3,a4,a2
    7c78:	00d787b3          	add	a5,a5,a3
    7c7c:	00070613          	mv	a2,a4
    7c80:	00879713          	slli	a4,a5,0x8
    7c84:	f20756e3          	bgez	a4,7bb0 <__adddf3+0x27c>
    7c88:	00140413          	addi	s0,s0,1
    7c8c:	7ff00713          	li	a4,2047
    7c90:	3ae40e63          	beq	s0,a4,804c <__adddf3+0x718>
    7c94:	ff800737          	lui	a4,0xff800
    7c98:	fff70713          	addi	a4,a4,-1 # ff7fffff <__crt0_stack_top+0x7f7effff>
    7c9c:	00e7f7b3          	and	a5,a5,a4
    7ca0:	f11ff06f          	j	7bb0 <__adddf3+0x27c>
  FP_ADD_D (R, A, B);
    7ca4:	0ee05063          	blez	a4,7d84 <__adddf3+0x450>
    7ca8:	08089863          	bnez	a7,7d38 <__adddf3+0x404>
    7cac:	00c86733          	or	a4,a6,a2
    7cb0:	d20702e3          	beqz	a4,79d4 <__adddf3+0xa0>
    7cb4:	fff40713          	addi	a4,s0,-1
    7cb8:	00071e63          	bnez	a4,7cd4 <__adddf3+0x3a0>
    7cbc:	40c50633          	sub	a2,a0,a2
    7cc0:	410787b3          	sub	a5,a5,a6
    7cc4:	00c53533          	sltu	a0,a0,a2
    7cc8:	40a787b3          	sub	a5,a5,a0
    7ccc:	00100413          	li	s0,1
    7cd0:	04c0006f          	j	7d1c <__adddf3+0x3e8>
    7cd4:	d0b400e3          	beq	s0,a1,79d4 <__adddf3+0xa0>
    7cd8:	03800693          	li	a3,56
    7cdc:	08e6ce63          	blt	a3,a4,7d78 <__adddf3+0x444>
    7ce0:	01f00693          	li	a3,31
    7ce4:	02000893          	li	a7,32
    7ce8:	06e6c063          	blt	a3,a4,7d48 <__adddf3+0x414>
    7cec:	40e888b3          	sub	a7,a7,a4
    7cf0:	011816b3          	sll	a3,a6,a7
    7cf4:	00e655b3          	srl	a1,a2,a4
    7cf8:	011618b3          	sll	a7,a2,a7
    7cfc:	00b6e6b3          	or	a3,a3,a1
    7d00:	011038b3          	snez	a7,a7
    7d04:	0116e6b3          	or	a3,a3,a7
    7d08:	00e85733          	srl	a4,a6,a4
    7d0c:	40d50633          	sub	a2,a0,a3
    7d10:	40e78733          	sub	a4,a5,a4
    7d14:	00c53533          	sltu	a0,a0,a2
    7d18:	40a707b3          	sub	a5,a4,a0
    7d1c:	00879713          	slli	a4,a5,0x8
    7d20:	f2075ee3          	bgez	a4,7c5c <__adddf3+0x328>
    7d24:	008004b7          	lui	s1,0x800
    7d28:	fff48493          	addi	s1,s1,-1 # 7fffff <__neorv32_ram_size+0x7effff>
    7d2c:	0097f4b3          	and	s1,a5,s1
    7d30:	00060993          	mv	s3,a2
    7d34:	2140006f          	j	7f48 <__adddf3+0x614>
    7d38:	c8b40ee3          	beq	s0,a1,79d4 <__adddf3+0xa0>
    7d3c:	008006b7          	lui	a3,0x800
    7d40:	00d86833          	or	a6,a6,a3
    7d44:	f95ff06f          	j	7cd8 <__adddf3+0x3a4>
    7d48:	fe070693          	addi	a3,a4,-32
    7d4c:	00d856b3          	srl	a3,a6,a3
    7d50:	00000593          	li	a1,0
    7d54:	01170863          	beq	a4,a7,7d64 <__adddf3+0x430>
    7d58:	04000593          	li	a1,64
    7d5c:	40e585b3          	sub	a1,a1,a4
    7d60:	00b815b3          	sll	a1,a6,a1
    7d64:	00c5e5b3          	or	a1,a1,a2
    7d68:	00b035b3          	snez	a1,a1
    7d6c:	00b6e6b3          	or	a3,a3,a1
    7d70:	00000713          	li	a4,0
    7d74:	f99ff06f          	j	7d0c <__adddf3+0x3d8>
    7d78:	00c866b3          	or	a3,a6,a2
    7d7c:	00d036b3          	snez	a3,a3
    7d80:	ff1ff06f          	j	7d70 <__adddf3+0x43c>
    7d84:	0e070663          	beqz	a4,7e70 <__adddf3+0x53c>
    7d88:	40888333          	sub	t1,a7,s0
    7d8c:	04041263          	bnez	s0,7dd0 <__adddf3+0x49c>
    7d90:	00a7e733          	or	a4,a5,a0
    7d94:	02070663          	beqz	a4,7dc0 <__adddf3+0x48c>
    7d98:	fff30713          	addi	a4,t1,-1
    7d9c:	02071063          	bnez	a4,7dbc <__adddf3+0x488>
    7da0:	40a60533          	sub	a0,a2,a0
    7da4:	00a63733          	sltu	a4,a2,a0
    7da8:	40f807b3          	sub	a5,a6,a5
    7dac:	00050613          	mv	a2,a0
    7db0:	40e787b3          	sub	a5,a5,a4
    7db4:	00068913          	mv	s2,a3
    7db8:	f15ff06f          	j	7ccc <__adddf3+0x398>
    7dbc:	02b31263          	bne	t1,a1,7de0 <__adddf3+0x4ac>
    7dc0:	00068913          	mv	s2,a3
    7dc4:	00080793          	mv	a5,a6
    7dc8:	00030413          	mv	s0,t1
    7dcc:	de5ff06f          	j	7bb0 <__adddf3+0x27c>
    7dd0:	28b88463          	beq	a7,a1,8058 <__adddf3+0x724>
    7dd4:	00800737          	lui	a4,0x800
    7dd8:	00e7e7b3          	or	a5,a5,a4
    7ddc:	00030713          	mv	a4,t1
    7de0:	03800593          	li	a1,56
    7de4:	08e5c063          	blt	a1,a4,7e64 <__adddf3+0x530>
    7de8:	01f00593          	li	a1,31
    7dec:	02000e13          	li	t3,32
    7df0:	04e5c263          	blt	a1,a4,7e34 <__adddf3+0x500>
    7df4:	40ee0e33          	sub	t3,t3,a4
    7df8:	01c795b3          	sll	a1,a5,t3
    7dfc:	00e55333          	srl	t1,a0,a4
    7e00:	01c51e33          	sll	t3,a0,t3
    7e04:	0065e5b3          	or	a1,a1,t1
    7e08:	01c03e33          	snez	t3,t3
    7e0c:	01c5e5b3          	or	a1,a1,t3
    7e10:	00e7d733          	srl	a4,a5,a4
    7e14:	40b605b3          	sub	a1,a2,a1
    7e18:	00b637b3          	sltu	a5,a2,a1
    7e1c:	40e80733          	sub	a4,a6,a4
    7e20:	00058613          	mv	a2,a1
    7e24:	40f707b3          	sub	a5,a4,a5
    7e28:	00088413          	mv	s0,a7
    7e2c:	00068913          	mv	s2,a3
    7e30:	eedff06f          	j	7d1c <__adddf3+0x3e8>
    7e34:	fe070593          	addi	a1,a4,-32 # 7fffe0 <__neorv32_ram_size+0x7effe0>
    7e38:	00b7d5b3          	srl	a1,a5,a1
    7e3c:	00000313          	li	t1,0
    7e40:	01c70863          	beq	a4,t3,7e50 <__adddf3+0x51c>
    7e44:	04000313          	li	t1,64
    7e48:	40e30333          	sub	t1,t1,a4
    7e4c:	00679333          	sll	t1,a5,t1
    7e50:	00a36333          	or	t1,t1,a0
    7e54:	00603333          	snez	t1,t1
    7e58:	0065e5b3          	or	a1,a1,t1
    7e5c:	00000713          	li	a4,0
    7e60:	fb5ff06f          	j	7e14 <__adddf3+0x4e0>
    7e64:	00a7e5b3          	or	a1,a5,a0
    7e68:	00b035b3          	snez	a1,a1
    7e6c:	ff1ff06f          	j	7e5c <__adddf3+0x528>
    7e70:	00140713          	addi	a4,s0,1
    7e74:	7fe77713          	andi	a4,a4,2046
    7e78:	0a071063          	bnez	a4,7f18 <__adddf3+0x5e4>
    7e7c:	00a7e8b3          	or	a7,a5,a0
    7e80:	00c86733          	or	a4,a6,a2
    7e84:	06041863          	bnez	s0,7ef4 <__adddf3+0x5c0>
    7e88:	00089a63          	bnez	a7,7e9c <__adddf3+0x568>
    7e8c:	00080793          	mv	a5,a6
    7e90:	02071e63          	bnez	a4,7ecc <__adddf3+0x598>
    7e94:	00000913          	li	s2,0
    7e98:	1b40006f          	j	804c <__adddf3+0x718>
    7e9c:	18070c63          	beqz	a4,8034 <__adddf3+0x700>
    7ea0:	40c505b3          	sub	a1,a0,a2
    7ea4:	00b538b3          	sltu	a7,a0,a1
    7ea8:	41078733          	sub	a4,a5,a6
    7eac:	41170733          	sub	a4,a4,a7
    7eb0:	00871893          	slli	a7,a4,0x8
    7eb4:	0208d663          	bgez	a7,7ee0 <__adddf3+0x5ac>
    7eb8:	40a60533          	sub	a0,a2,a0
    7ebc:	00a63733          	sltu	a4,a2,a0
    7ec0:	40f807b3          	sub	a5,a6,a5
    7ec4:	00050613          	mv	a2,a0
    7ec8:	40e787b3          	sub	a5,a5,a4
    7ecc:	00068913          	mv	s2,a3
  FP_PACK_SEMIRAW_D (r, R);
    7ed0:	00f66733          	or	a4,a2,a5
    7ed4:	1a070063          	beqz	a4,8074 <__adddf3+0x740>
    7ed8:	00000413          	li	s0,0
    7edc:	d81ff06f          	j	7c5c <__adddf3+0x328>
  FP_ADD_D (R, A, B);
    7ee0:	00e5e633          	or	a2,a1,a4
    7ee4:	18060263          	beqz	a2,8068 <__adddf3+0x734>
    7ee8:	00070793          	mv	a5,a4
    7eec:	00058613          	mv	a2,a1
    7ef0:	fe1ff06f          	j	7ed0 <__adddf3+0x59c>
    7ef4:	00089e63          	bnez	a7,7f10 <__adddf3+0x5dc>
    7ef8:	00068913          	mv	s2,a3
    7efc:	14071063          	bnez	a4,803c <__adddf3+0x708>
    7f00:	00000913          	li	s2,0
    7f04:	004007b7          	lui	a5,0x400
    7f08:	00000613          	li	a2,0
    7f0c:	1340006f          	j	8040 <__adddf3+0x70c>
    7f10:	d0070ee3          	beqz	a4,7c2c <__adddf3+0x2f8>
    7f14:	fedff06f          	j	7f00 <__adddf3+0x5cc>
    7f18:	40c50733          	sub	a4,a0,a2
    7f1c:	00e535b3          	sltu	a1,a0,a4
    7f20:	410784b3          	sub	s1,a5,a6
    7f24:	40b484b3          	sub	s1,s1,a1
    7f28:	00849593          	slli	a1,s1,0x8
    7f2c:	00070993          	mv	s3,a4
    7f30:	0605de63          	bgez	a1,7fac <__adddf3+0x678>
    7f34:	40a609b3          	sub	s3,a2,a0
    7f38:	40f804b3          	sub	s1,a6,a5
    7f3c:	01363633          	sltu	a2,a2,s3
    7f40:	40c484b3          	sub	s1,s1,a2
    7f44:	00068913          	mv	s2,a3
    7f48:	06048e63          	beqz	s1,7fc4 <__adddf3+0x690>
    7f4c:	00048513          	mv	a0,s1
    7f50:	595010ef          	jal	9ce4 <__clzsi2>
    7f54:	ff850713          	addi	a4,a0,-8
    7f58:	02000793          	li	a5,32
    7f5c:	40e787b3          	sub	a5,a5,a4
    7f60:	00e494b3          	sll	s1,s1,a4
    7f64:	00f9d7b3          	srl	a5,s3,a5
    7f68:	0097e7b3          	or	a5,a5,s1
    7f6c:	00e99633          	sll	a2,s3,a4
    7f70:	0a874463          	blt	a4,s0,8018 <__adddf3+0x6e4>
    7f74:	40870733          	sub	a4,a4,s0
    7f78:	00170513          	addi	a0,a4,1
    7f7c:	01f00693          	li	a3,31
    7f80:	02000593          	li	a1,32
    7f84:	06a6c263          	blt	a3,a0,7fe8 <__adddf3+0x6b4>
    7f88:	40a585b3          	sub	a1,a1,a0
    7f8c:	00b79733          	sll	a4,a5,a1
    7f90:	00a656b3          	srl	a3,a2,a0
    7f94:	00b615b3          	sll	a1,a2,a1
    7f98:	00d76733          	or	a4,a4,a3
    7f9c:	00b035b3          	snez	a1,a1
    7fa0:	00b76633          	or	a2,a4,a1
    7fa4:	00a7d7b3          	srl	a5,a5,a0
    7fa8:	f29ff06f          	j	7ed0 <__adddf3+0x59c>
    7fac:	00976633          	or	a2,a4,s1
    7fb0:	f8061ce3          	bnez	a2,7f48 <__adddf3+0x614>
    7fb4:	00000913          	li	s2,0
    7fb8:	00000793          	li	a5,0
    7fbc:	00000413          	li	s0,0
    7fc0:	bf1ff06f          	j	7bb0 <__adddf3+0x27c>
    7fc4:	00098513          	mv	a0,s3
    7fc8:	51d010ef          	jal	9ce4 <__clzsi2>
    7fcc:	01850713          	addi	a4,a0,24
    7fd0:	01f00793          	li	a5,31
    7fd4:	f8e7d2e3          	bge	a5,a4,7f58 <__adddf3+0x624>
    7fd8:	ff850793          	addi	a5,a0,-8
    7fdc:	00f997b3          	sll	a5,s3,a5
    7fe0:	00000613          	li	a2,0
    7fe4:	f8dff06f          	j	7f70 <__adddf3+0x63c>
    7fe8:	fe170713          	addi	a4,a4,-31
    7fec:	00e7d733          	srl	a4,a5,a4
    7ff0:	00000693          	li	a3,0
    7ff4:	00b50863          	beq	a0,a1,8004 <__adddf3+0x6d0>
    7ff8:	04000693          	li	a3,64
    7ffc:	40a686b3          	sub	a3,a3,a0
    8000:	00d796b3          	sll	a3,a5,a3
    8004:	00d666b3          	or	a3,a2,a3
    8008:	00d036b3          	snez	a3,a3
    800c:	00d76633          	or	a2,a4,a3
    8010:	00000793          	li	a5,0
    8014:	ebdff06f          	j	7ed0 <__adddf3+0x59c>
    8018:	40e40433          	sub	s0,s0,a4
    801c:	ff800737          	lui	a4,0xff800
    8020:	fff70713          	addi	a4,a4,-1 # ff7fffff <__crt0_stack_top+0x7f7effff>
    8024:	00e7f7b3          	and	a5,a5,a4
    8028:	c35ff06f          	j	7c5c <__adddf3+0x328>
    802c:	00080793          	mv	a5,a6
    8030:	ea1ff06f          	j	7ed0 <__adddf3+0x59c>
    8034:	00050613          	mv	a2,a0
    8038:	e99ff06f          	j	7ed0 <__adddf3+0x59c>
    803c:	00080793          	mv	a5,a6
    8040:	00058413          	mv	s0,a1
    8044:	b6dff06f          	j	7bb0 <__adddf3+0x27c>
    8048:	00070413          	mv	s0,a4
    804c:	00000793          	li	a5,0
    8050:	00000613          	li	a2,0
    8054:	b5dff06f          	j	7bb0 <__adddf3+0x27c>
    8058:	00068913          	mv	s2,a3
    805c:	00080793          	mv	a5,a6
    8060:	00088413          	mv	s0,a7
    8064:	b4dff06f          	j	7bb0 <__adddf3+0x27c>
    8068:	00000913          	li	s2,0
    806c:	00000793          	li	a5,0
    8070:	b41ff06f          	j	7bb0 <__adddf3+0x27c>
    8074:	00000793          	li	a5,0
    8078:	00000613          	li	a2,0
    807c:	f41ff06f          	j	7fbc <__adddf3+0x688>

00008080 <__divdf3>:
#include "soft-fp.h"
#include "double.h"

DFtype
__divdf3 (DFtype a, DFtype b)
{
    8080:	fb010113          	addi	sp,sp,-80
    8084:	03512a23          	sw	s5,52(sp)
  FP_DECL_D (B);
  FP_DECL_D (R);
  DFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_D (A, a);
    8088:	0145da93          	srli	s5,a1,0x14
{
    808c:	04812423          	sw	s0,72(sp)
    8090:	05212023          	sw	s2,64(sp)
    8094:	03312e23          	sw	s3,60(sp)
    8098:	03412c23          	sw	s4,56(sp)
    809c:	03712623          	sw	s7,44(sp)
  FP_UNPACK_D (A, a);
    80a0:	00c59413          	slli	s0,a1,0xc
{
    80a4:	04112623          	sw	ra,76(sp)
    80a8:	04912223          	sw	s1,68(sp)
    80ac:	03612823          	sw	s6,48(sp)
    80b0:	03812423          	sw	s8,40(sp)
    80b4:	03912223          	sw	s9,36(sp)
    80b8:	03a12023          	sw	s10,32(sp)
    80bc:	01b12e23          	sw	s11,28(sp)
  FP_UNPACK_D (A, a);
    80c0:	7ffafa93          	andi	s5,s5,2047
{
    80c4:	00050913          	mv	s2,a0
    80c8:	00060b93          	mv	s7,a2
    80cc:	00068a13          	mv	s4,a3
  FP_UNPACK_D (A, a);
    80d0:	00c45413          	srli	s0,s0,0xc
    80d4:	01f5d993          	srli	s3,a1,0x1f
    80d8:	0a0a8063          	beqz	s5,8178 <__divdf3+0xf8>
    80dc:	7ff00793          	li	a5,2047
    80e0:	10fa8063          	beq	s5,a5,81e0 <__divdf3+0x160>
    80e4:	01d55c93          	srli	s9,a0,0x1d
    80e8:	00341413          	slli	s0,s0,0x3
    80ec:	008cecb3          	or	s9,s9,s0
    80f0:	008007b7          	lui	a5,0x800
    80f4:	00fcecb3          	or	s9,s9,a5
    80f8:	00351493          	slli	s1,a0,0x3
    80fc:	c01a8a93          	addi	s5,s5,-1023
    8100:	00000b13          	li	s6,0
  FP_UNPACK_D (B, b);
    8104:	014a5793          	srli	a5,s4,0x14
    8108:	00ca1413          	slli	s0,s4,0xc
    810c:	7ff7f793          	andi	a5,a5,2047
    8110:	00c45413          	srli	s0,s0,0xc
    8114:	01fa5a13          	srli	s4,s4,0x1f
    8118:	0e078e63          	beqz	a5,8214 <__divdf3+0x194>
    811c:	7ff00713          	li	a4,2047
    8120:	16e78263          	beq	a5,a4,8284 <__divdf3+0x204>
    8124:	00341413          	slli	s0,s0,0x3
    8128:	01dbd713          	srli	a4,s7,0x1d
    812c:	00876733          	or	a4,a4,s0
    8130:	00800437          	lui	s0,0x800
    8134:	00876433          	or	s0,a4,s0
    8138:	003b9593          	slli	a1,s7,0x3
    813c:	c0178793          	addi	a5,a5,-1023 # 7ffc01 <__neorv32_ram_size+0x7efc01>
    8140:	00000713          	li	a4,0
  FP_DIV_D (R, A, B);
    8144:	40fa8ab3          	sub	s5,s5,a5
    8148:	002b1793          	slli	a5,s6,0x2
    814c:	00e7e7b3          	or	a5,a5,a4
    8150:	fff78793          	addi	a5,a5,-1
    8154:	00e00693          	li	a3,14
    8158:	0149c933          	xor	s2,s3,s4
    815c:	14f6ec63          	bltu	a3,a5,82b4 <__divdf3+0x234>
    8160:	0000b6b7          	lui	a3,0xb
    8164:	00279793          	slli	a5,a5,0x2
    8168:	e6c68693          	addi	a3,a3,-404 # ae6c <_ctype_+0x104>
    816c:	00d787b3          	add	a5,a5,a3
    8170:	0007a783          	lw	a5,0(a5)
    8174:	00078067          	jr	a5
  FP_UNPACK_D (A, a);
    8178:	00a46cb3          	or	s9,s0,a0
    817c:	060c8c63          	beqz	s9,81f4 <__divdf3+0x174>
    8180:	04040063          	beqz	s0,81c0 <__divdf3+0x140>
    8184:	00040513          	mv	a0,s0
    8188:	35d010ef          	jal	9ce4 <__clzsi2>
    818c:	00050793          	mv	a5,a0
    8190:	ff550713          	addi	a4,a0,-11
    8194:	01d00c93          	li	s9,29
    8198:	ff878693          	addi	a3,a5,-8
    819c:	40ec8cb3          	sub	s9,s9,a4
    81a0:	00d41433          	sll	s0,s0,a3
    81a4:	01995cb3          	srl	s9,s2,s9
    81a8:	008cecb3          	or	s9,s9,s0
    81ac:	00d91433          	sll	s0,s2,a3
    81b0:	c0d00a93          	li	s5,-1011
    81b4:	40fa8ab3          	sub	s5,s5,a5
    81b8:	00040493          	mv	s1,s0
    81bc:	f45ff06f          	j	8100 <__divdf3+0x80>
    81c0:	325010ef          	jal	9ce4 <__clzsi2>
    81c4:	01550713          	addi	a4,a0,21
    81c8:	01c00693          	li	a3,28
    81cc:	02050793          	addi	a5,a0,32
    81d0:	fce6d2e3          	bge	a3,a4,8194 <__divdf3+0x114>
    81d4:	ff850513          	addi	a0,a0,-8
    81d8:	00a91cb3          	sll	s9,s2,a0
    81dc:	fd5ff06f          	j	81b0 <__divdf3+0x130>
    81e0:	00a46cb3          	or	s9,s0,a0
    81e4:	020c9063          	bnez	s9,8204 <__divdf3+0x184>
    81e8:	00000493          	li	s1,0
    81ec:	00200b13          	li	s6,2
    81f0:	f15ff06f          	j	8104 <__divdf3+0x84>
    81f4:	00000493          	li	s1,0
    81f8:	00000a93          	li	s5,0
    81fc:	00100b13          	li	s6,1
    8200:	f05ff06f          	j	8104 <__divdf3+0x84>
    8204:	00050493          	mv	s1,a0
    8208:	00040c93          	mv	s9,s0
    820c:	00300b13          	li	s6,3
    8210:	ef5ff06f          	j	8104 <__divdf3+0x84>
  FP_UNPACK_D (B, b);
    8214:	017465b3          	or	a1,s0,s7
    8218:	08058063          	beqz	a1,8298 <__divdf3+0x218>
    821c:	04040263          	beqz	s0,8260 <__divdf3+0x1e0>
    8220:	00040513          	mv	a0,s0
    8224:	2c1010ef          	jal	9ce4 <__clzsi2>
    8228:	00050693          	mv	a3,a0
    822c:	ff550793          	addi	a5,a0,-11
    8230:	01d00713          	li	a4,29
    8234:	ff868613          	addi	a2,a3,-8
    8238:	40f70733          	sub	a4,a4,a5
    823c:	00c41433          	sll	s0,s0,a2
    8240:	00ebd733          	srl	a4,s7,a4
    8244:	00876733          	or	a4,a4,s0
    8248:	00cb9433          	sll	s0,s7,a2
    824c:	c0d00793          	li	a5,-1011
    8250:	00040593          	mv	a1,s0
    8254:	40d787b3          	sub	a5,a5,a3
    8258:	00070413          	mv	s0,a4
    825c:	ee5ff06f          	j	8140 <__divdf3+0xc0>
    8260:	000b8513          	mv	a0,s7
    8264:	281010ef          	jal	9ce4 <__clzsi2>
    8268:	01550793          	addi	a5,a0,21
    826c:	01c00713          	li	a4,28
    8270:	02050693          	addi	a3,a0,32
    8274:	faf75ee3          	bge	a4,a5,8230 <__divdf3+0x1b0>
    8278:	ff850713          	addi	a4,a0,-8
    827c:	00eb9733          	sll	a4,s7,a4
    8280:	fcdff06f          	j	824c <__divdf3+0x1cc>
    8284:	017465b3          	or	a1,s0,s7
    8288:	02059063          	bnez	a1,82a8 <__divdf3+0x228>
    828c:	00000413          	li	s0,0
    8290:	00200713          	li	a4,2
    8294:	eb1ff06f          	j	8144 <__divdf3+0xc4>
    8298:	00000413          	li	s0,0
    829c:	00000793          	li	a5,0
    82a0:	00100713          	li	a4,1
    82a4:	ea1ff06f          	j	8144 <__divdf3+0xc4>
    82a8:	000b8593          	mv	a1,s7
    82ac:	00300713          	li	a4,3
    82b0:	e95ff06f          	j	8144 <__divdf3+0xc4>
  FP_DIV_D (R, A, B);
    82b4:	01946663          	bltu	s0,s9,82c0 <__divdf3+0x240>
    82b8:	408c9a63          	bne	s9,s0,86cc <__divdf3+0x64c>
    82bc:	40b4e863          	bltu	s1,a1,86cc <__divdf3+0x64c>
    82c0:	01fc9713          	slli	a4,s9,0x1f
    82c4:	0014d793          	srli	a5,s1,0x1
    82c8:	01f49c13          	slli	s8,s1,0x1f
    82cc:	001cdc93          	srli	s9,s9,0x1
    82d0:	00f764b3          	or	s1,a4,a5
    82d4:	00841793          	slli	a5,s0,0x8
    82d8:	0185db13          	srli	s6,a1,0x18
    82dc:	00fb6b33          	or	s6,s6,a5
    82e0:	0107dd13          	srli	s10,a5,0x10
    82e4:	010b1793          	slli	a5,s6,0x10
    82e8:	0107d793          	srli	a5,a5,0x10
    82ec:	00859b93          	slli	s7,a1,0x8
    82f0:	000c8513          	mv	a0,s9
    82f4:	000d0593          	mv	a1,s10
    82f8:	00f12623          	sw	a5,12(sp)
    82fc:	0c5010ef          	jal	9bc0 <__hidden___udivsi3>
    8300:	00050593          	mv	a1,a0
    8304:	00050a13          	mv	s4,a0
    8308:	010b1513          	slli	a0,s6,0x10
    830c:	01055513          	srli	a0,a0,0x10
    8310:	085010ef          	jal	9b94 <__mulsi3>
    8314:	00050993          	mv	s3,a0
    8318:	000d0593          	mv	a1,s10
    831c:	000c8513          	mv	a0,s9
    8320:	0e9010ef          	jal	9c08 <__umodsi3>
    8324:	01051513          	slli	a0,a0,0x10
    8328:	0104d793          	srli	a5,s1,0x10
    832c:	00a7e7b3          	or	a5,a5,a0
    8330:	0137fa63          	bgeu	a5,s3,8344 <__divdf3+0x2c4>
    8334:	00fb07b3          	add	a5,s6,a5
    8338:	0167e463          	bltu	a5,s6,8340 <__divdf3+0x2c0>
    833c:	3937ee63          	bltu	a5,s3,86d8 <__divdf3+0x658>
    8340:	fffa0a13          	addi	s4,s4,-1
    8344:	413789b3          	sub	s3,a5,s3
    8348:	000d0593          	mv	a1,s10
    834c:	00098513          	mv	a0,s3
    8350:	071010ef          	jal	9bc0 <__hidden___udivsi3>
    8354:	00050593          	mv	a1,a0
    8358:	00050413          	mv	s0,a0
    835c:	010b1513          	slli	a0,s6,0x10
    8360:	01055513          	srli	a0,a0,0x10
    8364:	031010ef          	jal	9b94 <__mulsi3>
    8368:	00050c93          	mv	s9,a0
    836c:	000d0593          	mv	a1,s10
    8370:	00098513          	mv	a0,s3
    8374:	095010ef          	jal	9c08 <__umodsi3>
    8378:	01049993          	slli	s3,s1,0x10
    837c:	01051513          	slli	a0,a0,0x10
    8380:	0109d993          	srli	s3,s3,0x10
    8384:	00a9e9b3          	or	s3,s3,a0
    8388:	0199fa63          	bgeu	s3,s9,839c <__divdf3+0x31c>
    838c:	013b09b3          	add	s3,s6,s3
    8390:	0199f463          	bgeu	s3,s9,8398 <__divdf3+0x318>
    8394:	3569f863          	bgeu	s3,s6,86e4 <__divdf3+0x664>
    8398:	fff40413          	addi	s0,s0,-1 # 7fffff <__neorv32_ram_size+0x7effff>
    839c:	010a1513          	slli	a0,s4,0x10
    83a0:	00856733          	or	a4,a0,s0
    83a4:	010b9693          	slli	a3,s7,0x10
    83a8:	0106d693          	srli	a3,a3,0x10
    83ac:	01071513          	slli	a0,a4,0x10
    83b0:	419989b3          	sub	s3,s3,s9
    83b4:	010bdd93          	srli	s11,s7,0x10
    83b8:	01055513          	srli	a0,a0,0x10
    83bc:	00d12623          	sw	a3,12(sp)
    83c0:	00068593          	mv	a1,a3
    83c4:	7d0010ef          	jal	9b94 <__mulsi3>
    83c8:	00050813          	mv	a6,a0
    83cc:	01071513          	slli	a0,a4,0x10
    83d0:	01055513          	srli	a0,a0,0x10
    83d4:	000d8593          	mv	a1,s11
    83d8:	7bc010ef          	jal	9b94 <__mulsi3>
    83dc:	010b9593          	slli	a1,s7,0x10
    83e0:	00050793          	mv	a5,a0
    83e4:	0105d593          	srli	a1,a1,0x10
    83e8:	01075513          	srli	a0,a4,0x10
    83ec:	7a8010ef          	jal	9b94 <__mulsi3>
    83f0:	00050893          	mv	a7,a0
    83f4:	000d8593          	mv	a1,s11
    83f8:	01075513          	srli	a0,a4,0x10
    83fc:	798010ef          	jal	9b94 <__mulsi3>
    8400:	01085a13          	srli	s4,a6,0x10
    8404:	011787b3          	add	a5,a5,a7
    8408:	00fa0a33          	add	s4,s4,a5
    840c:	011a7663          	bgeu	s4,a7,8418 <__divdf3+0x398>
    8410:	000107b7          	lui	a5,0x10
    8414:	00f50533          	add	a0,a0,a5
    8418:	010a5793          	srli	a5,s4,0x10
    841c:	01081813          	slli	a6,a6,0x10
    8420:	010a1a13          	slli	s4,s4,0x10
    8424:	01085813          	srli	a6,a6,0x10
    8428:	00a78533          	add	a0,a5,a0
    842c:	010a0a33          	add	s4,s4,a6
    8430:	00a9e663          	bltu	s3,a0,843c <__divdf3+0x3bc>
    8434:	2aa99e63          	bne	s3,a0,86f0 <__divdf3+0x670>
    8438:	2b4c7c63          	bgeu	s8,s4,86f0 <__divdf3+0x670>
    843c:	017c07b3          	add	a5,s8,s7
    8440:	0187b6b3          	sltu	a3,a5,s8
    8444:	01668633          	add	a2,a3,s6
    8448:	00c989b3          	add	s3,s3,a2
    844c:	fff70413          	addi	s0,a4,-1
    8450:	00078c13          	mv	s8,a5
    8454:	013b6663          	bltu	s6,s3,8460 <__divdf3+0x3e0>
    8458:	02069463          	bnez	a3,8480 <__divdf3+0x400>
    845c:	033b1263          	bne	s6,s3,8480 <__divdf3+0x400>
    8460:	00a9e663          	bltu	s3,a0,846c <__divdf3+0x3ec>
    8464:	01351e63          	bne	a0,s3,8480 <__divdf3+0x400>
    8468:	0147fc63          	bgeu	a5,s4,8480 <__divdf3+0x400>
    846c:	00fb8c33          	add	s8,s7,a5
    8470:	017c37b3          	sltu	a5,s8,s7
    8474:	016787b3          	add	a5,a5,s6
    8478:	ffe70413          	addi	s0,a4,-2
    847c:	00f989b3          	add	s3,s3,a5
    8480:	414c0a33          	sub	s4,s8,s4
    8484:	40a989b3          	sub	s3,s3,a0
    8488:	014c37b3          	sltu	a5,s8,s4
    848c:	40f989b3          	sub	s3,s3,a5
    8490:	fff00593          	li	a1,-1
    8494:	193b0263          	beq	s6,s3,8618 <__divdf3+0x598>
    8498:	000d0593          	mv	a1,s10
    849c:	00098513          	mv	a0,s3
    84a0:	720010ef          	jal	9bc0 <__hidden___udivsi3>
    84a4:	00050593          	mv	a1,a0
    84a8:	00050493          	mv	s1,a0
    84ac:	010b1513          	slli	a0,s6,0x10
    84b0:	01055513          	srli	a0,a0,0x10
    84b4:	6e0010ef          	jal	9b94 <__mulsi3>
    84b8:	00050c13          	mv	s8,a0
    84bc:	000d0593          	mv	a1,s10
    84c0:	00098513          	mv	a0,s3
    84c4:	744010ef          	jal	9c08 <__umodsi3>
    84c8:	01051513          	slli	a0,a0,0x10
    84cc:	010a5713          	srli	a4,s4,0x10
    84d0:	00a76733          	or	a4,a4,a0
    84d4:	01877a63          	bgeu	a4,s8,84e8 <__divdf3+0x468>
    84d8:	00eb0733          	add	a4,s6,a4
    84dc:	01676463          	bltu	a4,s6,84e4 <__divdf3+0x464>
    84e0:	21876c63          	bltu	a4,s8,86f8 <__divdf3+0x678>
    84e4:	fff48493          	addi	s1,s1,-1
    84e8:	418709b3          	sub	s3,a4,s8
    84ec:	000d0593          	mv	a1,s10
    84f0:	00098513          	mv	a0,s3
    84f4:	6cc010ef          	jal	9bc0 <__hidden___udivsi3>
    84f8:	00050593          	mv	a1,a0
    84fc:	00050c13          	mv	s8,a0
    8500:	010b1513          	slli	a0,s6,0x10
    8504:	01055513          	srli	a0,a0,0x10
    8508:	68c010ef          	jal	9b94 <__mulsi3>
    850c:	00050c93          	mv	s9,a0
    8510:	000d0593          	mv	a1,s10
    8514:	00098513          	mv	a0,s3
    8518:	6f0010ef          	jal	9c08 <__umodsi3>
    851c:	010a1793          	slli	a5,s4,0x10
    8520:	01051513          	slli	a0,a0,0x10
    8524:	0107d793          	srli	a5,a5,0x10
    8528:	00a7e7b3          	or	a5,a5,a0
    852c:	0197fa63          	bgeu	a5,s9,8540 <__divdf3+0x4c0>
    8530:	00fb07b3          	add	a5,s6,a5
    8534:	0197f463          	bgeu	a5,s9,853c <__divdf3+0x4bc>
    8538:	1d67f663          	bgeu	a5,s6,8704 <__divdf3+0x684>
    853c:	fffc0c13          	addi	s8,s8,-1
    8540:	01049713          	slli	a4,s1,0x10
    8544:	01876733          	or	a4,a4,s8
    8548:	01071513          	slli	a0,a4,0x10
    854c:	010b9593          	slli	a1,s7,0x10
    8550:	419787b3          	sub	a5,a5,s9
    8554:	01055513          	srli	a0,a0,0x10
    8558:	0105d593          	srli	a1,a1,0x10
    855c:	638010ef          	jal	9b94 <__mulsi3>
    8560:	00050813          	mv	a6,a0
    8564:	01071513          	slli	a0,a4,0x10
    8568:	01055513          	srli	a0,a0,0x10
    856c:	000d8593          	mv	a1,s11
    8570:	624010ef          	jal	9b94 <__mulsi3>
    8574:	010b9593          	slli	a1,s7,0x10
    8578:	00050893          	mv	a7,a0
    857c:	0105d593          	srli	a1,a1,0x10
    8580:	01075513          	srli	a0,a4,0x10
    8584:	610010ef          	jal	9b94 <__mulsi3>
    8588:	00050313          	mv	t1,a0
    858c:	000d8593          	mv	a1,s11
    8590:	01075513          	srli	a0,a4,0x10
    8594:	600010ef          	jal	9b94 <__mulsi3>
    8598:	01085693          	srli	a3,a6,0x10
    859c:	006888b3          	add	a7,a7,t1
    85a0:	011686b3          	add	a3,a3,a7
    85a4:	0066f663          	bgeu	a3,t1,85b0 <__divdf3+0x530>
    85a8:	00010637          	lui	a2,0x10
    85ac:	00c50533          	add	a0,a0,a2
    85b0:	0106d613          	srli	a2,a3,0x10
    85b4:	01081813          	slli	a6,a6,0x10
    85b8:	01069693          	slli	a3,a3,0x10
    85bc:	01085813          	srli	a6,a6,0x10
    85c0:	00a60533          	add	a0,a2,a0
    85c4:	010686b3          	add	a3,a3,a6
    85c8:	00a7e663          	bltu	a5,a0,85d4 <__divdf3+0x554>
    85cc:	04a79463          	bne	a5,a0,8614 <__divdf3+0x594>
    85d0:	14068063          	beqz	a3,8710 <__divdf3+0x690>
    85d4:	00fb0633          	add	a2,s6,a5
    85d8:	fff70593          	addi	a1,a4,-1
    85dc:	00060793          	mv	a5,a2
    85e0:	03666463          	bltu	a2,s6,8608 <__divdf3+0x588>
    85e4:	00a66663          	bltu	a2,a0,85f0 <__divdf3+0x570>
    85e8:	02a61463          	bne	a2,a0,8610 <__divdf3+0x590>
    85ec:	00dbfe63          	bgeu	s7,a3,8608 <__divdf3+0x588>
    85f0:	ffe70593          	addi	a1,a4,-2
    85f4:	001b9713          	slli	a4,s7,0x1
    85f8:	017737b3          	sltu	a5,a4,s7
    85fc:	016787b3          	add	a5,a5,s6
    8600:	00f607b3          	add	a5,a2,a5
    8604:	00070b93          	mv	s7,a4
    8608:	00db9463          	bne	s7,a3,8610 <__divdf3+0x590>
    860c:	00a78663          	beq	a5,a0,8618 <__divdf3+0x598>
    8610:	00058713          	mv	a4,a1
    8614:	00176593          	ori	a1,a4,1
  FP_PACK_D (r, R);
    8618:	3ffa8793          	addi	a5,s5,1023
    861c:	12f05e63          	blez	a5,8758 <__divdf3+0x6d8>
    8620:	0075f713          	andi	a4,a1,7
    8624:	02070063          	beqz	a4,8644 <__divdf3+0x5c4>
    8628:	00f5f713          	andi	a4,a1,15
    862c:	00400693          	li	a3,4
    8630:	00d70a63          	beq	a4,a3,8644 <__divdf3+0x5c4>
    8634:	00d58733          	add	a4,a1,a3
    8638:	00b736b3          	sltu	a3,a4,a1
    863c:	00d40433          	add	s0,s0,a3
    8640:	00070593          	mv	a1,a4
    8644:	00741713          	slli	a4,s0,0x7
    8648:	00075a63          	bgez	a4,865c <__divdf3+0x5dc>
    864c:	ff0007b7          	lui	a5,0xff000
    8650:	fff78793          	addi	a5,a5,-1 # feffffff <__crt0_stack_top+0x7efeffff>
    8654:	00f47433          	and	s0,s0,a5
    8658:	400a8793          	addi	a5,s5,1024
    865c:	7fe00713          	li	a4,2046
    8660:	1cf74263          	blt	a4,a5,8824 <__divdf3+0x7a4>
    8664:	01d41713          	slli	a4,s0,0x1d
    8668:	0035d593          	srli	a1,a1,0x3
    866c:	00b76733          	or	a4,a4,a1
    8670:	00345413          	srli	s0,s0,0x3
    8674:	00c41413          	slli	s0,s0,0xc
    8678:	00c45413          	srli	s0,s0,0xc
    867c:	01479793          	slli	a5,a5,0x14
  FP_HANDLE_EXCEPTIONS;

  return r;
}
    8680:	04c12083          	lw	ra,76(sp)
  FP_PACK_D (r, R);
    8684:	0087e7b3          	or	a5,a5,s0
}
    8688:	04812403          	lw	s0,72(sp)
  FP_PACK_D (r, R);
    868c:	01f91913          	slli	s2,s2,0x1f
}
    8690:	04412483          	lw	s1,68(sp)
    8694:	03c12983          	lw	s3,60(sp)
    8698:	03812a03          	lw	s4,56(sp)
    869c:	03412a83          	lw	s5,52(sp)
    86a0:	03012b03          	lw	s6,48(sp)
    86a4:	02c12b83          	lw	s7,44(sp)
    86a8:	02812c03          	lw	s8,40(sp)
    86ac:	02412c83          	lw	s9,36(sp)
    86b0:	02012d03          	lw	s10,32(sp)
    86b4:	01c12d83          	lw	s11,28(sp)
    86b8:	0127e5b3          	or	a1,a5,s2
    86bc:	00070513          	mv	a0,a4
    86c0:	04012903          	lw	s2,64(sp)
    86c4:	05010113          	addi	sp,sp,80
    86c8:	00008067          	ret
  FP_DIV_D (R, A, B);
    86cc:	fffa8a93          	addi	s5,s5,-1
    86d0:	00000c13          	li	s8,0
    86d4:	c01ff06f          	j	82d4 <__divdf3+0x254>
    86d8:	ffea0a13          	addi	s4,s4,-2
    86dc:	016787b3          	add	a5,a5,s6
    86e0:	c65ff06f          	j	8344 <__divdf3+0x2c4>
    86e4:	ffe40413          	addi	s0,s0,-2
    86e8:	016989b3          	add	s3,s3,s6
    86ec:	cb1ff06f          	j	839c <__divdf3+0x31c>
    86f0:	00070413          	mv	s0,a4
    86f4:	d8dff06f          	j	8480 <__divdf3+0x400>
    86f8:	ffe48493          	addi	s1,s1,-2
    86fc:	01670733          	add	a4,a4,s6
    8700:	de9ff06f          	j	84e8 <__divdf3+0x468>
    8704:	ffec0c13          	addi	s8,s8,-2
    8708:	016787b3          	add	a5,a5,s6
    870c:	e35ff06f          	j	8540 <__divdf3+0x4c0>
    8710:	00000b93          	li	s7,0
    8714:	00070593          	mv	a1,a4
    8718:	ef1ff06f          	j	8608 <__divdf3+0x588>
  FP_UNPACK_D (B, b);
    871c:	000a0913          	mv	s2,s4
  FP_DIV_D (R, A, B);
    8720:	00070b13          	mv	s6,a4
  FP_PACK_D (r, R);
    8724:	00200793          	li	a5,2
    8728:	0efb0e63          	beq	s6,a5,8824 <__divdf3+0x7a4>
    872c:	00300793          	li	a5,3
    8730:	0efb0063          	beq	s6,a5,8810 <__divdf3+0x790>
    8734:	00100793          	li	a5,1
    8738:	eefb10e3          	bne	s6,a5,8618 <__divdf3+0x598>
    873c:	00000413          	li	s0,0
    8740:	00000713          	li	a4,0
    8744:	08c0006f          	j	87d0 <__divdf3+0x750>
  FP_UNPACK_D (A, a);
    8748:	00098913          	mv	s2,s3
  FP_DIV_D (R, A, B);
    874c:	000c8413          	mv	s0,s9
    8750:	00048593          	mv	a1,s1
    8754:	fd1ff06f          	j	8724 <__divdf3+0x6a4>
  FP_PACK_D (r, R);
    8758:	08078063          	beqz	a5,87d8 <__divdf3+0x758>
    875c:	fc900713          	li	a4,-55
    8760:	fce7cee3          	blt	a5,a4,873c <__divdf3+0x6bc>
    8764:	fe200713          	li	a4,-30
    8768:	06e7cc63          	blt	a5,a4,87e0 <__divdf3+0x760>
    876c:	00100713          	li	a4,1
    8770:	40f70733          	sub	a4,a4,a5
    8774:	41ea8a93          	addi	s5,s5,1054
    8778:	00e5d7b3          	srl	a5,a1,a4
    877c:	015595b3          	sll	a1,a1,s5
    8780:	00b035b3          	snez	a1,a1
    8784:	01541ab3          	sll	s5,s0,s5
    8788:	0155e5b3          	or	a1,a1,s5
    878c:	00b7e7b3          	or	a5,a5,a1
    8790:	00e45433          	srl	s0,s0,a4
    8794:	0077f713          	andi	a4,a5,7
    8798:	02070063          	beqz	a4,87b8 <__divdf3+0x738>
    879c:	00f7f713          	andi	a4,a5,15
    87a0:	00400693          	li	a3,4
    87a4:	00d70a63          	beq	a4,a3,87b8 <__divdf3+0x738>
    87a8:	00d78733          	add	a4,a5,a3
    87ac:	00f736b3          	sltu	a3,a4,a5
    87b0:	00d40433          	add	s0,s0,a3
    87b4:	00070793          	mv	a5,a4
    87b8:	00841713          	slli	a4,s0,0x8
    87bc:	06074c63          	bltz	a4,8834 <__divdf3+0x7b4>
    87c0:	01d41713          	slli	a4,s0,0x1d
    87c4:	0037d793          	srli	a5,a5,0x3
    87c8:	00f76733          	or	a4,a4,a5
    87cc:	00345413          	srli	s0,s0,0x3
    87d0:	00000793          	li	a5,0
    87d4:	ea1ff06f          	j	8674 <__divdf3+0x5f4>
    87d8:	00100713          	li	a4,1
    87dc:	f99ff06f          	j	8774 <__divdf3+0x6f4>
    87e0:	fe100613          	li	a2,-31
    87e4:	40f60733          	sub	a4,a2,a5
    87e8:	00e45733          	srl	a4,s0,a4
    87ec:	00000693          	li	a3,0
    87f0:	00c78663          	beq	a5,a2,87fc <__divdf3+0x77c>
    87f4:	43ea8a93          	addi	s5,s5,1086
    87f8:	015416b3          	sll	a3,s0,s5
    87fc:	00b6e6b3          	or	a3,a3,a1
    8800:	00d036b3          	snez	a3,a3
    8804:	00d767b3          	or	a5,a4,a3
    8808:	00000413          	li	s0,0
    880c:	f89ff06f          	j	8794 <__divdf3+0x714>
    8810:	00080437          	lui	s0,0x80
    8814:	00000713          	li	a4,0
    8818:	7ff00793          	li	a5,2047
    881c:	00000913          	li	s2,0
    8820:	e55ff06f          	j	8674 <__divdf3+0x5f4>
    8824:	00000413          	li	s0,0
    8828:	00000713          	li	a4,0
    882c:	7ff00793          	li	a5,2047
    8830:	e45ff06f          	j	8674 <__divdf3+0x5f4>
    8834:	00000413          	li	s0,0
    8838:	00000713          	li	a4,0
    883c:	00100793          	li	a5,1
    8840:	e35ff06f          	j	8674 <__divdf3+0x5f4>

00008844 <__eqdf2>:
  FP_DECL_D (A);
  FP_DECL_D (B);
  CMPtype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_D (A, a);
    8844:	001007b7          	lui	a5,0x100
    8848:	0145d813          	srli	a6,a1,0x14
    884c:	fff78793          	addi	a5,a5,-1 # fffff <__neorv32_ram_size+0xeffff>
  FP_UNPACK_RAW_D (B, b);
    8850:	0146d313          	srli	t1,a3,0x14
  FP_UNPACK_RAW_D (A, a);
    8854:	7ff87813          	andi	a6,a6,2047
  FP_CMP_EQ_D (r, A, B, 1);
    8858:	7ff00e93          	li	t4,2047
  FP_UNPACK_RAW_D (A, a);
    885c:	00b7f733          	and	a4,a5,a1
{
    8860:	00050893          	mv	a7,a0
  FP_UNPACK_RAW_D (A, a);
    8864:	01f5df93          	srli	t6,a1,0x1f
  FP_UNPACK_RAW_D (B, b);
    8868:	00d7f7b3          	and	a5,a5,a3
    886c:	7ff37313          	andi	t1,t1,2047
    8870:	01f6df13          	srli	t5,a3,0x1f
  FP_CMP_EQ_D (r, A, B, 1);
    8874:	01d81863          	bne	a6,t4,8884 <__eqdf2+0x40>
    8878:	00a76e33          	or	t3,a4,a0
    887c:	00100513          	li	a0,1
    8880:	040e1263          	bnez	t3,88c4 <__eqdf2+0x80>
    8884:	01d31863          	bne	t1,t4,8894 <__eqdf2+0x50>
    8888:	00c7e7b3          	or	a5,a5,a2
    888c:	00100513          	li	a0,1
    8890:	02079a63          	bnez	a5,88c4 <__eqdf2+0x80>
    8894:	00b6c6b3          	xor	a3,a3,a1
    8898:	00169693          	slli	a3,a3,0x1
    889c:	02069263          	bnez	a3,88c0 <__eqdf2+0x7c>
    88a0:	03161063          	bne	a2,a7,88c0 <__eqdf2+0x7c>
    88a4:	00000513          	li	a0,0
    88a8:	01ef8e63          	beq	t6,t5,88c4 <__eqdf2+0x80>
    88ac:	00100513          	li	a0,1
    88b0:	00081a63          	bnez	a6,88c4 <__eqdf2+0x80>
    88b4:	01176733          	or	a4,a4,a7
    88b8:	00e03533          	snez	a0,a4
    88bc:	00008067          	ret
    88c0:	00100513          	li	a0,1
  FP_HANDLE_EXCEPTIONS;

  return r;
}
    88c4:	00008067          	ret

000088c8 <__gedf2>:
  FP_DECL_D (A);
  FP_DECL_D (B);
  CMPtype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_D (A, a);
    88c8:	0145d893          	srli	a7,a1,0x14
    88cc:	00100737          	lui	a4,0x100
    88d0:	fff70713          	addi	a4,a4,-1 # fffff <__neorv32_ram_size+0xeffff>
  FP_UNPACK_RAW_D (B, b);
    88d4:	0146d813          	srli	a6,a3,0x14
  FP_UNPACK_RAW_D (A, a);
    88d8:	7ff8f893          	andi	a7,a7,2047
  FP_CMP_D (r, A, B, -2, 2);
    88dc:	7ff00793          	li	a5,2047
  FP_UNPACK_RAW_D (A, a);
    88e0:	00b77333          	and	t1,a4,a1
  FP_UNPACK_RAW_D (B, b);
    88e4:	7ff87813          	andi	a6,a6,2047
    88e8:	00d77733          	and	a4,a4,a3
  FP_UNPACK_RAW_D (A, a);
    88ec:	01f5d593          	srli	a1,a1,0x1f
  FP_UNPACK_RAW_D (B, b);
    88f0:	01f6d693          	srli	a3,a3,0x1f
  FP_CMP_D (r, A, B, -2, 2);
    88f4:	02f88063          	beq	a7,a5,8914 <__gedf2+0x4c>
    88f8:	7ff00e13          	li	t3,2047
  FP_UNPACK_RAW_D (B, b);
    88fc:	00080793          	mv	a5,a6
  FP_CMP_D (r, A, B, -2, 2);
    8900:	03c81463          	bne	a6,t3,8928 <__gedf2+0x60>
    8904:	00c76e33          	or	t3,a4,a2
    8908:	020e0063          	beqz	t3,8928 <__gedf2+0x60>
    890c:	ffe00793          	li	a5,-2
    8910:	0100006f          	j	8920 <__gedf2+0x58>
    8914:	00a36e33          	or	t3,t1,a0
    8918:	ffe00793          	li	a5,-2
    891c:	fc0e0ee3          	beqz	t3,88f8 <__gedf2+0x30>
  FP_HANDLE_EXCEPTIONS;

  return r;
}
    8920:	00078513          	mv	a0,a5
    8924:	00008067          	ret
  FP_CMP_D (r, A, B, -2, 2);
    8928:	00000e13          	li	t3,0
    892c:	00089663          	bnez	a7,8938 <__gedf2+0x70>
    8930:	00a36e33          	or	t3,t1,a0
    8934:	001e3e13          	seqz	t3,t3
    8938:	04081863          	bnez	a6,8988 <__gedf2+0xc0>
    893c:	00c76eb3          	or	t4,a4,a2
    8940:	000e0a63          	beqz	t3,8954 <__gedf2+0x8c>
    8944:	fc0e8ee3          	beqz	t4,8920 <__gedf2+0x58>
    8948:	00169793          	slli	a5,a3,0x1
    894c:	fff78793          	addi	a5,a5,-1
    8950:	fd1ff06f          	j	8920 <__gedf2+0x58>
    8954:	020e9c63          	bnez	t4,898c <__gedf2+0xc4>
    8958:	40b005b3          	neg	a1,a1
    895c:	0015e793          	ori	a5,a1,1
    8960:	fc1ff06f          	j	8920 <__gedf2+0x58>
    8964:	ff08c2e3          	blt	a7,a6,8948 <__gedf2+0x80>
    8968:	fe6768e3          	bltu	a4,t1,8958 <__gedf2+0x90>
    896c:	00a67463          	bgeu	a2,a0,8974 <__gedf2+0xac>
    8970:	fee304e3          	beq	t1,a4,8958 <__gedf2+0x90>
    8974:	00c56663          	bltu	a0,a2,8980 <__gedf2+0xb8>
    8978:	00000793          	li	a5,0
    897c:	fae372e3          	bgeu	t1,a4,8920 <__gedf2+0x58>
    8980:	00159793          	slli	a5,a1,0x1
    8984:	fc9ff06f          	j	894c <__gedf2+0x84>
    8988:	fc0e10e3          	bnez	t3,8948 <__gedf2+0x80>
    898c:	fcb696e3          	bne	a3,a1,8958 <__gedf2+0x90>
    8990:	fd185ae3          	bge	a6,a7,8964 <__gedf2+0x9c>
    8994:	40d006b3          	neg	a3,a3
    8998:	0016e793          	ori	a5,a3,1
    899c:	f85ff06f          	j	8920 <__gedf2+0x58>

000089a0 <__ledf2>:
  FP_DECL_D (A);
  FP_DECL_D (B);
  CMPtype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_D (A, a);
    89a0:	0145d893          	srli	a7,a1,0x14
    89a4:	00100737          	lui	a4,0x100
    89a8:	fff70713          	addi	a4,a4,-1 # fffff <__neorv32_ram_size+0xeffff>
  FP_UNPACK_RAW_D (B, b);
    89ac:	0146d813          	srli	a6,a3,0x14
  FP_UNPACK_RAW_D (A, a);
    89b0:	7ff8f893          	andi	a7,a7,2047
  FP_CMP_D (r, A, B, 2, 2);
    89b4:	7ff00793          	li	a5,2047
  FP_UNPACK_RAW_D (A, a);
    89b8:	00b77333          	and	t1,a4,a1
  FP_UNPACK_RAW_D (B, b);
    89bc:	7ff87813          	andi	a6,a6,2047
    89c0:	00d77733          	and	a4,a4,a3
  FP_UNPACK_RAW_D (A, a);
    89c4:	01f5d593          	srli	a1,a1,0x1f
  FP_UNPACK_RAW_D (B, b);
    89c8:	01f6d693          	srli	a3,a3,0x1f
  FP_CMP_D (r, A, B, 2, 2);
    89cc:	02f88063          	beq	a7,a5,89ec <__ledf2+0x4c>
    89d0:	7ff00e13          	li	t3,2047
  FP_UNPACK_RAW_D (B, b);
    89d4:	00080793          	mv	a5,a6
  FP_CMP_D (r, A, B, 2, 2);
    89d8:	03c81463          	bne	a6,t3,8a00 <__ledf2+0x60>
    89dc:	00c76e33          	or	t3,a4,a2
    89e0:	020e0063          	beqz	t3,8a00 <__ledf2+0x60>
    89e4:	00200793          	li	a5,2
    89e8:	0100006f          	j	89f8 <__ledf2+0x58>
    89ec:	00a36e33          	or	t3,t1,a0
    89f0:	00200793          	li	a5,2
    89f4:	fc0e0ee3          	beqz	t3,89d0 <__ledf2+0x30>
  FP_HANDLE_EXCEPTIONS;

  return r;
}
    89f8:	00078513          	mv	a0,a5
    89fc:	00008067          	ret
  FP_CMP_D (r, A, B, 2, 2);
    8a00:	00000e13          	li	t3,0
    8a04:	00089663          	bnez	a7,8a10 <__ledf2+0x70>
    8a08:	00a36e33          	or	t3,t1,a0
    8a0c:	001e3e13          	seqz	t3,t3
    8a10:	04081863          	bnez	a6,8a60 <__ledf2+0xc0>
    8a14:	00c76eb3          	or	t4,a4,a2
    8a18:	000e0a63          	beqz	t3,8a2c <__ledf2+0x8c>
    8a1c:	fc0e8ee3          	beqz	t4,89f8 <__ledf2+0x58>
    8a20:	00169793          	slli	a5,a3,0x1
    8a24:	fff78793          	addi	a5,a5,-1
    8a28:	fd1ff06f          	j	89f8 <__ledf2+0x58>
    8a2c:	020e9c63          	bnez	t4,8a64 <__ledf2+0xc4>
    8a30:	40b005b3          	neg	a1,a1
    8a34:	0015e793          	ori	a5,a1,1
    8a38:	fc1ff06f          	j	89f8 <__ledf2+0x58>
    8a3c:	ff08c2e3          	blt	a7,a6,8a20 <__ledf2+0x80>
    8a40:	fe6768e3          	bltu	a4,t1,8a30 <__ledf2+0x90>
    8a44:	00a67463          	bgeu	a2,a0,8a4c <__ledf2+0xac>
    8a48:	fee304e3          	beq	t1,a4,8a30 <__ledf2+0x90>
    8a4c:	00c56663          	bltu	a0,a2,8a58 <__ledf2+0xb8>
    8a50:	00000793          	li	a5,0
    8a54:	fae372e3          	bgeu	t1,a4,89f8 <__ledf2+0x58>
    8a58:	00159793          	slli	a5,a1,0x1
    8a5c:	fc9ff06f          	j	8a24 <__ledf2+0x84>
    8a60:	fc0e10e3          	bnez	t3,8a20 <__ledf2+0x80>
    8a64:	fcb696e3          	bne	a3,a1,8a30 <__ledf2+0x90>
    8a68:	fd185ae3          	bge	a6,a7,8a3c <__ledf2+0x9c>
    8a6c:	40d006b3          	neg	a3,a3
    8a70:	0016e793          	ori	a5,a3,1
    8a74:	f85ff06f          	j	89f8 <__ledf2+0x58>

00008a78 <__muldf3>:
#include "soft-fp.h"
#include "double.h"

DFtype
__muldf3 (DFtype a, DFtype b)
{
    8a78:	fd010113          	addi	sp,sp,-48
    8a7c:	01312e23          	sw	s3,28(sp)
  FP_DECL_D (B);
  FP_DECL_D (R);
  DFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_D (A, a);
    8a80:	0145d993          	srli	s3,a1,0x14
{
    8a84:	02812423          	sw	s0,40(sp)
    8a88:	02912223          	sw	s1,36(sp)
    8a8c:	01412c23          	sw	s4,24(sp)
    8a90:	01512a23          	sw	s5,20(sp)
    8a94:	01712623          	sw	s7,12(sp)
  FP_UNPACK_D (A, a);
    8a98:	00c59493          	slli	s1,a1,0xc
{
    8a9c:	02112623          	sw	ra,44(sp)
    8aa0:	03212023          	sw	s2,32(sp)
    8aa4:	01612823          	sw	s6,16(sp)
  FP_UNPACK_D (A, a);
    8aa8:	7ff9f993          	andi	s3,s3,2047
{
    8aac:	00050413          	mv	s0,a0
    8ab0:	00060b93          	mv	s7,a2
    8ab4:	00068a13          	mv	s4,a3
  FP_UNPACK_D (A, a);
    8ab8:	00c4d493          	srli	s1,s1,0xc
    8abc:	01f5da93          	srli	s5,a1,0x1f
    8ac0:	0c098263          	beqz	s3,8b84 <__muldf3+0x10c>
    8ac4:	7ff00793          	li	a5,2047
    8ac8:	12f98463          	beq	s3,a5,8bf0 <__muldf3+0x178>
    8acc:	00349493          	slli	s1,s1,0x3
    8ad0:	01d55793          	srli	a5,a0,0x1d
    8ad4:	0097e7b3          	or	a5,a5,s1
    8ad8:	008004b7          	lui	s1,0x800
    8adc:	0097e4b3          	or	s1,a5,s1
    8ae0:	00351913          	slli	s2,a0,0x3
    8ae4:	c0198993          	addi	s3,s3,-1023
    8ae8:	00000b13          	li	s6,0
  FP_UNPACK_D (B, b);
    8aec:	014a5793          	srli	a5,s4,0x14
    8af0:	00ca1413          	slli	s0,s4,0xc
    8af4:	7ff7f793          	andi	a5,a5,2047
    8af8:	00c45413          	srli	s0,s0,0xc
    8afc:	01fa5a13          	srli	s4,s4,0x1f
    8b00:	12078063          	beqz	a5,8c20 <__muldf3+0x1a8>
    8b04:	7ff00713          	li	a4,2047
    8b08:	18e78463          	beq	a5,a4,8c90 <__muldf3+0x218>
    8b0c:	00341413          	slli	s0,s0,0x3
    8b10:	01dbd713          	srli	a4,s7,0x1d
    8b14:	00876733          	or	a4,a4,s0
    8b18:	00800437          	lui	s0,0x800
    8b1c:	00876433          	or	s0,a4,s0
    8b20:	003b9593          	slli	a1,s7,0x3
    8b24:	c0178793          	addi	a5,a5,-1023
    8b28:	00000693          	li	a3,0
  FP_MUL_D (R, A, B);
    8b2c:	00f989b3          	add	s3,s3,a5
    8b30:	002b1793          	slli	a5,s6,0x2
    8b34:	00d7e7b3          	or	a5,a5,a3
    8b38:	00a00713          	li	a4,10
    8b3c:	00198893          	addi	a7,s3,1
    8b40:	1af74263          	blt	a4,a5,8ce4 <__muldf3+0x26c>
    8b44:	00200613          	li	a2,2
    8b48:	014ac833          	xor	a6,s5,s4
    8b4c:	00100713          	li	a4,1
    8b50:	16f64863          	blt	a2,a5,8cc0 <__muldf3+0x248>
    8b54:	fff78793          	addi	a5,a5,-1
    8b58:	1af76663          	bltu	a4,a5,8d04 <__muldf3+0x28c>
    8b5c:	00068b13          	mv	s6,a3
  FP_PACK_D (r, R);
    8b60:	00200793          	li	a5,2
    8b64:	58fb0863          	beq	s6,a5,90f4 <__muldf3+0x67c>
    8b68:	00300793          	li	a5,3
    8b6c:	56fb0e63          	beq	s6,a5,90e8 <__muldf3+0x670>
    8b70:	00100793          	li	a5,1
    8b74:	40fb1063          	bne	s6,a5,8f74 <__muldf3+0x4fc>
    8b78:	00000413          	li	s0,0
    8b7c:	00000713          	li	a4,0
    8b80:	5180006f          	j	9098 <__muldf3+0x620>
  FP_UNPACK_D (A, a);
    8b84:	00a4e933          	or	s2,s1,a0
    8b88:	06090e63          	beqz	s2,8c04 <__muldf3+0x18c>
    8b8c:	04048263          	beqz	s1,8bd0 <__muldf3+0x158>
    8b90:	00048513          	mv	a0,s1
    8b94:	150010ef          	jal	9ce4 <__clzsi2>
    8b98:	00050713          	mv	a4,a0
    8b9c:	ff550693          	addi	a3,a0,-11
    8ba0:	01d00793          	li	a5,29
    8ba4:	ff870613          	addi	a2,a4,-8
    8ba8:	40d787b3          	sub	a5,a5,a3
    8bac:	00c494b3          	sll	s1,s1,a2
    8bb0:	00f457b3          	srl	a5,s0,a5
    8bb4:	0097e7b3          	or	a5,a5,s1
    8bb8:	00c414b3          	sll	s1,s0,a2
    8bbc:	c0d00993          	li	s3,-1011
    8bc0:	00048913          	mv	s2,s1
    8bc4:	40e989b3          	sub	s3,s3,a4
    8bc8:	00078493          	mv	s1,a5
    8bcc:	f1dff06f          	j	8ae8 <__muldf3+0x70>
    8bd0:	114010ef          	jal	9ce4 <__clzsi2>
    8bd4:	01550693          	addi	a3,a0,21
    8bd8:	01c00793          	li	a5,28
    8bdc:	02050713          	addi	a4,a0,32
    8be0:	fcd7d0e3          	bge	a5,a3,8ba0 <__muldf3+0x128>
    8be4:	ff850793          	addi	a5,a0,-8
    8be8:	00f417b3          	sll	a5,s0,a5
    8bec:	fd1ff06f          	j	8bbc <__muldf3+0x144>
    8bf0:	00a4e933          	or	s2,s1,a0
    8bf4:	02091063          	bnez	s2,8c14 <__muldf3+0x19c>
    8bf8:	00000493          	li	s1,0
    8bfc:	00200b13          	li	s6,2
    8c00:	eedff06f          	j	8aec <__muldf3+0x74>
    8c04:	00000493          	li	s1,0
    8c08:	00000993          	li	s3,0
    8c0c:	00100b13          	li	s6,1
    8c10:	eddff06f          	j	8aec <__muldf3+0x74>
    8c14:	00050913          	mv	s2,a0
    8c18:	00300b13          	li	s6,3
    8c1c:	ed1ff06f          	j	8aec <__muldf3+0x74>
  FP_UNPACK_D (B, b);
    8c20:	017465b3          	or	a1,s0,s7
    8c24:	08058063          	beqz	a1,8ca4 <__muldf3+0x22c>
    8c28:	04040263          	beqz	s0,8c6c <__muldf3+0x1f4>
    8c2c:	00040513          	mv	a0,s0
    8c30:	0b4010ef          	jal	9ce4 <__clzsi2>
    8c34:	00050693          	mv	a3,a0
    8c38:	ff550793          	addi	a5,a0,-11
    8c3c:	01d00713          	li	a4,29
    8c40:	ff868613          	addi	a2,a3,-8
    8c44:	40f70733          	sub	a4,a4,a5
    8c48:	00c41433          	sll	s0,s0,a2
    8c4c:	00ebd733          	srl	a4,s7,a4
    8c50:	00876733          	or	a4,a4,s0
    8c54:	00cb9433          	sll	s0,s7,a2
    8c58:	c0d00793          	li	a5,-1011
    8c5c:	00040593          	mv	a1,s0
    8c60:	40d787b3          	sub	a5,a5,a3
    8c64:	00070413          	mv	s0,a4
    8c68:	ec1ff06f          	j	8b28 <__muldf3+0xb0>
    8c6c:	000b8513          	mv	a0,s7
    8c70:	074010ef          	jal	9ce4 <__clzsi2>
    8c74:	01550793          	addi	a5,a0,21
    8c78:	01c00713          	li	a4,28
    8c7c:	02050693          	addi	a3,a0,32
    8c80:	faf75ee3          	bge	a4,a5,8c3c <__muldf3+0x1c4>
    8c84:	ff850713          	addi	a4,a0,-8
    8c88:	00eb9733          	sll	a4,s7,a4
    8c8c:	fcdff06f          	j	8c58 <__muldf3+0x1e0>
    8c90:	017465b3          	or	a1,s0,s7
    8c94:	02059063          	bnez	a1,8cb4 <__muldf3+0x23c>
    8c98:	00000413          	li	s0,0
    8c9c:	00200693          	li	a3,2
    8ca0:	e8dff06f          	j	8b2c <__muldf3+0xb4>
    8ca4:	00000413          	li	s0,0
    8ca8:	00000793          	li	a5,0
    8cac:	00100693          	li	a3,1
    8cb0:	e7dff06f          	j	8b2c <__muldf3+0xb4>
    8cb4:	000b8593          	mv	a1,s7
    8cb8:	00300693          	li	a3,3
    8cbc:	e71ff06f          	j	8b2c <__muldf3+0xb4>
    8cc0:	00f717b3          	sll	a5,a4,a5
  FP_MUL_D (R, A, B);
    8cc4:	5307f713          	andi	a4,a5,1328
    8cc8:	02071863          	bnez	a4,8cf8 <__muldf3+0x280>
    8ccc:	2407f613          	andi	a2,a5,576
    8cd0:	40061463          	bnez	a2,90d8 <__muldf3+0x660>
    8cd4:	0887f793          	andi	a5,a5,136
    8cd8:	02078663          	beqz	a5,8d04 <__muldf3+0x28c>
  FP_UNPACK_D (B, b);
    8cdc:	000a0813          	mv	a6,s4
    8ce0:	e7dff06f          	j	8b5c <__muldf3+0xe4>
  FP_MUL_D (R, A, B);
    8ce4:	00f00713          	li	a4,15
    8ce8:	40e78063          	beq	a5,a4,90e8 <__muldf3+0x670>
    8cec:	00b00713          	li	a4,11
  FP_UNPACK_D (A, a);
    8cf0:	000a8813          	mv	a6,s5
  FP_MUL_D (R, A, B);
    8cf4:	fee784e3          	beq	a5,a4,8cdc <__muldf3+0x264>
    8cf8:	00048413          	mv	s0,s1
    8cfc:	00090593          	mv	a1,s2
    8d00:	e61ff06f          	j	8b60 <__muldf3+0xe8>
    8d04:	01095793          	srli	a5,s2,0x10
    8d08:	01059f13          	slli	t5,a1,0x10
    8d0c:	01091913          	slli	s2,s2,0x10
    8d10:	01095913          	srli	s2,s2,0x10
    8d14:	010f5f13          	srli	t5,t5,0x10
    8d18:	0105de93          	srli	t4,a1,0x10
    8d1c:	00090513          	mv	a0,s2
    8d20:	000f0593          	mv	a1,t5
    8d24:	671000ef          	jal	9b94 <__mulsi3>
    8d28:	00050e13          	mv	t3,a0
    8d2c:	000e8593          	mv	a1,t4
    8d30:	00090513          	mv	a0,s2
    8d34:	661000ef          	jal	9b94 <__mulsi3>
    8d38:	00050f93          	mv	t6,a0
    8d3c:	000f0593          	mv	a1,t5
    8d40:	00078513          	mv	a0,a5
    8d44:	651000ef          	jal	9b94 <__mulsi3>
    8d48:	00050293          	mv	t0,a0
    8d4c:	000e8593          	mv	a1,t4
    8d50:	00078513          	mv	a0,a5
    8d54:	641000ef          	jal	9b94 <__mulsi3>
    8d58:	010e5313          	srli	t1,t3,0x10
    8d5c:	005f8fb3          	add	t6,t6,t0
    8d60:	01f30333          	add	t1,t1,t6
    8d64:	00050713          	mv	a4,a0
    8d68:	00537663          	bgeu	t1,t0,8d74 <__muldf3+0x2fc>
    8d6c:	000106b7          	lui	a3,0x10
    8d70:	00d50733          	add	a4,a0,a3
    8d74:	010e1e13          	slli	t3,t3,0x10
    8d78:	01035393          	srli	t2,t1,0x10
    8d7c:	010e5e13          	srli	t3,t3,0x10
    8d80:	01031313          	slli	t1,t1,0x10
    8d84:	01c30333          	add	t1,t1,t3
    8d88:	01045e13          	srli	t3,s0,0x10
    8d8c:	01041413          	slli	s0,s0,0x10
    8d90:	01045413          	srli	s0,s0,0x10
    8d94:	00090513          	mv	a0,s2
    8d98:	00040593          	mv	a1,s0
    8d9c:	5f9000ef          	jal	9b94 <__mulsi3>
    8da0:	00050293          	mv	t0,a0
    8da4:	000e0593          	mv	a1,t3
    8da8:	00090513          	mv	a0,s2
    8dac:	5e9000ef          	jal	9b94 <__mulsi3>
    8db0:	00050f93          	mv	t6,a0
    8db4:	00040593          	mv	a1,s0
    8db8:	00078513          	mv	a0,a5
    8dbc:	5d9000ef          	jal	9b94 <__mulsi3>
    8dc0:	00050913          	mv	s2,a0
    8dc4:	000e0593          	mv	a1,t3
    8dc8:	00078513          	mv	a0,a5
    8dcc:	5c9000ef          	jal	9b94 <__mulsi3>
    8dd0:	0102d793          	srli	a5,t0,0x10
    8dd4:	012f8fb3          	add	t6,t6,s2
    8dd8:	01f787b3          	add	a5,a5,t6
    8ddc:	0127f663          	bgeu	a5,s2,8de8 <__muldf3+0x370>
    8de0:	000106b7          	lui	a3,0x10
    8de4:	00d50533          	add	a0,a0,a3
    8de8:	01029293          	slli	t0,t0,0x10
    8dec:	0107d593          	srli	a1,a5,0x10
    8df0:	0102d293          	srli	t0,t0,0x10
    8df4:	0104d913          	srli	s2,s1,0x10
    8df8:	01079793          	slli	a5,a5,0x10
    8dfc:	01049493          	slli	s1,s1,0x10
    8e00:	005787b3          	add	a5,a5,t0
    8e04:	0104d493          	srli	s1,s1,0x10
    8e08:	00a58fb3          	add	t6,a1,a0
    8e0c:	00f383b3          	add	t2,t2,a5
    8e10:	00048513          	mv	a0,s1
    8e14:	000f0593          	mv	a1,t5
    8e18:	57d000ef          	jal	9b94 <__mulsi3>
    8e1c:	00050293          	mv	t0,a0
    8e20:	000e8593          	mv	a1,t4
    8e24:	00048513          	mv	a0,s1
    8e28:	56d000ef          	jal	9b94 <__mulsi3>
    8e2c:	00050a13          	mv	s4,a0
    8e30:	000f0593          	mv	a1,t5
    8e34:	00090513          	mv	a0,s2
    8e38:	55d000ef          	jal	9b94 <__mulsi3>
    8e3c:	00050f13          	mv	t5,a0
    8e40:	000e8593          	mv	a1,t4
    8e44:	00090513          	mv	a0,s2
    8e48:	54d000ef          	jal	9b94 <__mulsi3>
    8e4c:	0102d613          	srli	a2,t0,0x10
    8e50:	01ea0a33          	add	s4,s4,t5
    8e54:	01460633          	add	a2,a2,s4
    8e58:	01e67663          	bgeu	a2,t5,8e64 <__muldf3+0x3ec>
    8e5c:	000106b7          	lui	a3,0x10
    8e60:	00d50533          	add	a0,a0,a3
    8e64:	01029293          	slli	t0,t0,0x10
    8e68:	01065593          	srli	a1,a2,0x10
    8e6c:	0102d293          	srli	t0,t0,0x10
    8e70:	01061613          	slli	a2,a2,0x10
    8e74:	00a58eb3          	add	t4,a1,a0
    8e78:	00560f33          	add	t5,a2,t0
    8e7c:	00048513          	mv	a0,s1
    8e80:	00040593          	mv	a1,s0
    8e84:	511000ef          	jal	9b94 <__mulsi3>
    8e88:	00050293          	mv	t0,a0
    8e8c:	000e0593          	mv	a1,t3
    8e90:	00048513          	mv	a0,s1
    8e94:	501000ef          	jal	9b94 <__mulsi3>
    8e98:	00050493          	mv	s1,a0
    8e9c:	00040593          	mv	a1,s0
    8ea0:	00090513          	mv	a0,s2
    8ea4:	4f1000ef          	jal	9b94 <__mulsi3>
    8ea8:	00050413          	mv	s0,a0
    8eac:	000e0593          	mv	a1,t3
    8eb0:	00090513          	mv	a0,s2
    8eb4:	4e1000ef          	jal	9b94 <__mulsi3>
    8eb8:	0102d613          	srli	a2,t0,0x10
    8ebc:	008484b3          	add	s1,s1,s0
    8ec0:	00960633          	add	a2,a2,s1
    8ec4:	00050e13          	mv	t3,a0
    8ec8:	00867663          	bgeu	a2,s0,8ed4 <__muldf3+0x45c>
    8ecc:	000106b7          	lui	a3,0x10
    8ed0:	00d50e33          	add	t3,a0,a3
    8ed4:	01029293          	slli	t0,t0,0x10
    8ed8:	01061693          	slli	a3,a2,0x10
    8edc:	0102d293          	srli	t0,t0,0x10
    8ee0:	00770733          	add	a4,a4,t2
    8ee4:	005686b3          	add	a3,a3,t0
    8ee8:	01f685b3          	add	a1,a3,t6
    8eec:	00f737b3          	sltu	a5,a4,a5
    8ef0:	00f587b3          	add	a5,a1,a5
    8ef4:	00d5b6b3          	sltu	a3,a1,a3
    8ef8:	00b7b5b3          	sltu	a1,a5,a1
    8efc:	00b6e6b3          	or	a3,a3,a1
    8f00:	01065613          	srli	a2,a2,0x10
    8f04:	00c686b3          	add	a3,a3,a2
    8f08:	01e70633          	add	a2,a4,t5
    8f0c:	01d785b3          	add	a1,a5,t4
    8f10:	00e63733          	sltu	a4,a2,a4
    8f14:	00e58733          	add	a4,a1,a4
    8f18:	00f5b7b3          	sltu	a5,a1,a5
    8f1c:	00b735b3          	sltu	a1,a4,a1
    8f20:	00b7e7b3          	or	a5,a5,a1
    8f24:	00961593          	slli	a1,a2,0x9
    8f28:	00d787b3          	add	a5,a5,a3
    8f2c:	0065e5b3          	or	a1,a1,t1
    8f30:	01c787b3          	add	a5,a5,t3
    8f34:	00b035b3          	snez	a1,a1
    8f38:	01765613          	srli	a2,a2,0x17
    8f3c:	00979793          	slli	a5,a5,0x9
    8f40:	01775413          	srli	s0,a4,0x17
    8f44:	00c5e5b3          	or	a1,a1,a2
    8f48:	00971713          	slli	a4,a4,0x9
    8f4c:	00e5e5b3          	or	a1,a1,a4
    8f50:	00779713          	slli	a4,a5,0x7
    8f54:	0087e433          	or	s0,a5,s0
    8f58:	0c075063          	bgez	a4,9018 <__muldf3+0x5a0>
    8f5c:	0015d793          	srli	a5,a1,0x1
    8f60:	0015f593          	andi	a1,a1,1
    8f64:	00b7e7b3          	or	a5,a5,a1
    8f68:	01f41593          	slli	a1,s0,0x1f
    8f6c:	00b7e5b3          	or	a1,a5,a1
    8f70:	00145413          	srli	s0,s0,0x1
  FP_PACK_D (r, R);
    8f74:	3ff88793          	addi	a5,a7,1023
    8f78:	0af05463          	blez	a5,9020 <__muldf3+0x5a8>
    8f7c:	0075f713          	andi	a4,a1,7
    8f80:	02070063          	beqz	a4,8fa0 <__muldf3+0x528>
    8f84:	00f5f713          	andi	a4,a1,15
    8f88:	00400693          	li	a3,4
    8f8c:	00d70a63          	beq	a4,a3,8fa0 <__muldf3+0x528>
    8f90:	00d58733          	add	a4,a1,a3
    8f94:	00b736b3          	sltu	a3,a4,a1
    8f98:	00d40433          	add	s0,s0,a3
    8f9c:	00070593          	mv	a1,a4
    8fa0:	00741713          	slli	a4,s0,0x7
    8fa4:	00075a63          	bgez	a4,8fb8 <__muldf3+0x540>
    8fa8:	ff0007b7          	lui	a5,0xff000
    8fac:	fff78793          	addi	a5,a5,-1 # feffffff <__crt0_stack_top+0x7efeffff>
    8fb0:	00f47433          	and	s0,s0,a5
    8fb4:	40088793          	addi	a5,a7,1024
    8fb8:	7fe00713          	li	a4,2046
    8fbc:	12f74c63          	blt	a4,a5,90f4 <__muldf3+0x67c>
    8fc0:	01d41713          	slli	a4,s0,0x1d
    8fc4:	0035d593          	srli	a1,a1,0x3
    8fc8:	00b76733          	or	a4,a4,a1
    8fcc:	00345413          	srli	s0,s0,0x3
    8fd0:	00c41413          	slli	s0,s0,0xc
    8fd4:	00c45413          	srli	s0,s0,0xc
    8fd8:	01479793          	slli	a5,a5,0x14
  FP_HANDLE_EXCEPTIONS;

  return r;
}
    8fdc:	02c12083          	lw	ra,44(sp)
  FP_PACK_D (r, R);
    8fe0:	0087e7b3          	or	a5,a5,s0
}
    8fe4:	02812403          	lw	s0,40(sp)
  FP_PACK_D (r, R);
    8fe8:	01f81813          	slli	a6,a6,0x1f
}
    8fec:	02412483          	lw	s1,36(sp)
    8ff0:	02012903          	lw	s2,32(sp)
    8ff4:	01c12983          	lw	s3,28(sp)
    8ff8:	01812a03          	lw	s4,24(sp)
    8ffc:	01412a83          	lw	s5,20(sp)
    9000:	01012b03          	lw	s6,16(sp)
    9004:	00c12b83          	lw	s7,12(sp)
    9008:	00070513          	mv	a0,a4
    900c:	0107e5b3          	or	a1,a5,a6
    9010:	03010113          	addi	sp,sp,48
    9014:	00008067          	ret
  FP_MUL_D (R, A, B);
    9018:	00098893          	mv	a7,s3
    901c:	f59ff06f          	j	8f74 <__muldf3+0x4fc>
  FP_PACK_D (r, R);
    9020:	08078063          	beqz	a5,90a0 <__muldf3+0x628>
    9024:	fc900713          	li	a4,-55
    9028:	b4e7c8e3          	blt	a5,a4,8b78 <__muldf3+0x100>
    902c:	fe200713          	li	a4,-30
    9030:	06e7cc63          	blt	a5,a4,90a8 <__muldf3+0x630>
    9034:	00100713          	li	a4,1
    9038:	40f70733          	sub	a4,a4,a5
    903c:	41e88893          	addi	a7,a7,1054
    9040:	011597b3          	sll	a5,a1,a7
    9044:	00f037b3          	snez	a5,a5
    9048:	011418b3          	sll	a7,s0,a7
    904c:	00e5d6b3          	srl	a3,a1,a4
    9050:	0117e7b3          	or	a5,a5,a7
    9054:	00d7e7b3          	or	a5,a5,a3
    9058:	00e45433          	srl	s0,s0,a4
    905c:	0077f713          	andi	a4,a5,7
    9060:	02070063          	beqz	a4,9080 <__muldf3+0x608>
    9064:	00f7f713          	andi	a4,a5,15
    9068:	00400693          	li	a3,4
    906c:	00d70a63          	beq	a4,a3,9080 <__muldf3+0x608>
    9070:	00d78733          	add	a4,a5,a3
    9074:	00f736b3          	sltu	a3,a4,a5
    9078:	00d40433          	add	s0,s0,a3
    907c:	00070793          	mv	a5,a4
    9080:	00841713          	slli	a4,s0,0x8
    9084:	08074063          	bltz	a4,9104 <__muldf3+0x68c>
    9088:	01d41713          	slli	a4,s0,0x1d
    908c:	0037d793          	srli	a5,a5,0x3
    9090:	00f76733          	or	a4,a4,a5
    9094:	00345413          	srli	s0,s0,0x3
    9098:	00000793          	li	a5,0
    909c:	f35ff06f          	j	8fd0 <__muldf3+0x558>
    90a0:	00100713          	li	a4,1
    90a4:	f99ff06f          	j	903c <__muldf3+0x5c4>
    90a8:	fe100613          	li	a2,-31
    90ac:	40f60733          	sub	a4,a2,a5
    90b0:	00e45733          	srl	a4,s0,a4
    90b4:	00000693          	li	a3,0
    90b8:	00c78663          	beq	a5,a2,90c4 <__muldf3+0x64c>
    90bc:	43e88893          	addi	a7,a7,1086
    90c0:	011416b3          	sll	a3,s0,a7
    90c4:	00d5e5b3          	or	a1,a1,a3
    90c8:	00b035b3          	snez	a1,a1
    90cc:	00b767b3          	or	a5,a4,a1
    90d0:	00000413          	li	s0,0
    90d4:	f89ff06f          	j	905c <__muldf3+0x5e4>
    90d8:	00080437          	lui	s0,0x80
    90dc:	7ff00793          	li	a5,2047
    90e0:	00000813          	li	a6,0
    90e4:	eedff06f          	j	8fd0 <__muldf3+0x558>
    90e8:	00080437          	lui	s0,0x80
    90ec:	00000713          	li	a4,0
    90f0:	fedff06f          	j	90dc <__muldf3+0x664>
    90f4:	00000413          	li	s0,0
    90f8:	00000713          	li	a4,0
    90fc:	7ff00793          	li	a5,2047
    9100:	ed1ff06f          	j	8fd0 <__muldf3+0x558>
    9104:	00000413          	li	s0,0
    9108:	00000713          	li	a4,0
    910c:	00100793          	li	a5,1
    9110:	ec1ff06f          	j	8fd0 <__muldf3+0x558>

00009114 <__subdf3>:
  FP_DECL_D (B);
  FP_DECL_D (R);
  DFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_SEMIRAW_D (A, a);
    9114:	00100837          	lui	a6,0x100
    9118:	fff80813          	addi	a6,a6,-1 # fffff <__neorv32_ram_size+0xeffff>
{
    911c:	fe010113          	addi	sp,sp,-32
  FP_UNPACK_SEMIRAW_D (A, a);
    9120:	00b877b3          	and	a5,a6,a1
    9124:	0145d713          	srli	a4,a1,0x14
  FP_UNPACK_SEMIRAW_D (B, b);
    9128:	00d87833          	and	a6,a6,a3
    912c:	0146d893          	srli	a7,a3,0x14
{
    9130:	00912a23          	sw	s1,20(sp)
  FP_UNPACK_SEMIRAW_D (A, a);
    9134:	00379793          	slli	a5,a5,0x3
    9138:	7ff77493          	andi	s1,a4,2047
    913c:	01d55713          	srli	a4,a0,0x1d
{
    9140:	01212823          	sw	s2,16(sp)
  FP_UNPACK_SEMIRAW_D (A, a);
    9144:	00f767b3          	or	a5,a4,a5
    9148:	01f5d913          	srli	s2,a1,0x1f
  FP_UNPACK_SEMIRAW_D (B, b);
    914c:	01d65713          	srli	a4,a2,0x1d
    9150:	00381813          	slli	a6,a6,0x3
{
    9154:	00112e23          	sw	ra,28(sp)
    9158:	00812c23          	sw	s0,24(sp)
    915c:	01312623          	sw	s3,12(sp)
  FP_UNPACK_SEMIRAW_D (B, b);
    9160:	7ff8f893          	andi	a7,a7,2047
  FP_SUB_D (R, A, B);
    9164:	7ff00593          	li	a1,2047
  FP_UNPACK_SEMIRAW_D (A, a);
    9168:	00351513          	slli	a0,a0,0x3
  FP_UNPACK_SEMIRAW_D (B, b);
    916c:	01f6d693          	srli	a3,a3,0x1f
    9170:	01076733          	or	a4,a4,a6
    9174:	00361613          	slli	a2,a2,0x3
  FP_SUB_D (R, A, B);
    9178:	00b89663          	bne	a7,a1,9184 <__subdf3+0x70>
    917c:	00c765b3          	or	a1,a4,a2
    9180:	00059463          	bnez	a1,9188 <__subdf3+0x74>
    9184:	0016c693          	xori	a3,a3,1
    9188:	41148833          	sub	a6,s1,a7
    918c:	7ff00593          	li	a1,2047
    9190:	31269463          	bne	a3,s2,9498 <__subdf3+0x384>
    9194:	11005263          	blez	a6,9298 <__subdf3+0x184>
    9198:	02089c63          	bnez	a7,91d0 <__subdf3+0xbc>
    919c:	00c766b3          	or	a3,a4,a2
    91a0:	02068463          	beqz	a3,91c8 <__subdf3+0xb4>
    91a4:	fff48813          	addi	a6,s1,-1 # 7fffff <__neorv32_ram_size+0x7effff>
    91a8:	00081e63          	bnez	a6,91c4 <__subdf3+0xb0>
    91ac:	00c50633          	add	a2,a0,a2
    91b0:	00e787b3          	add	a5,a5,a4
    91b4:	00a63533          	sltu	a0,a2,a0
    91b8:	00a787b3          	add	a5,a5,a0
    91bc:	00100493          	li	s1,1
    91c0:	0600006f          	j	9220 <__subdf3+0x10c>
    91c4:	00b49c63          	bne	s1,a1,91dc <__subdf3+0xc8>
    91c8:	00050613          	mv	a2,a0
    91cc:	1d80006f          	j	93a4 <__subdf3+0x290>
    91d0:	feb48ce3          	beq	s1,a1,91c8 <__subdf3+0xb4>
    91d4:	008006b7          	lui	a3,0x800
    91d8:	00d76733          	or	a4,a4,a3
    91dc:	03800693          	li	a3,56
    91e0:	0b06c663          	blt	a3,a6,928c <__subdf3+0x178>
    91e4:	01f00693          	li	a3,31
    91e8:	02000893          	li	a7,32
    91ec:	0706c863          	blt	a3,a6,925c <__subdf3+0x148>
    91f0:	410888b3          	sub	a7,a7,a6
    91f4:	011716b3          	sll	a3,a4,a7
    91f8:	010655b3          	srl	a1,a2,a6
    91fc:	011618b3          	sll	a7,a2,a7
    9200:	00b6e6b3          	or	a3,a3,a1
    9204:	011038b3          	snez	a7,a7
    9208:	0116e6b3          	or	a3,a3,a7
    920c:	01075833          	srl	a6,a4,a6
    9210:	00a68633          	add	a2,a3,a0
    9214:	00f80833          	add	a6,a6,a5
    9218:	00d636b3          	sltu	a3,a2,a3
    921c:	00d807b3          	add	a5,a6,a3
    9220:	00879713          	slli	a4,a5,0x8
    9224:	22075663          	bgez	a4,9450 <__subdf3+0x33c>
    9228:	00148493          	addi	s1,s1,1
    922c:	7ff00713          	li	a4,2047
    9230:	60e48863          	beq	s1,a4,9840 <__subdf3+0x72c>
    9234:	ff800737          	lui	a4,0xff800
    9238:	fff70713          	addi	a4,a4,-1 # ff7fffff <__crt0_stack_top+0x7f7effff>
    923c:	00e7f7b3          	and	a5,a5,a4
    9240:	00165713          	srli	a4,a2,0x1
    9244:	00167613          	andi	a2,a2,1
    9248:	00c76733          	or	a4,a4,a2
    924c:	01f79613          	slli	a2,a5,0x1f
    9250:	00e66633          	or	a2,a2,a4
    9254:	0017d793          	srli	a5,a5,0x1
    9258:	1f80006f          	j	9450 <__subdf3+0x33c>
    925c:	fe080693          	addi	a3,a6,-32
    9260:	00d756b3          	srl	a3,a4,a3
    9264:	00000593          	li	a1,0
    9268:	01180863          	beq	a6,a7,9278 <__subdf3+0x164>
    926c:	04000593          	li	a1,64
    9270:	410585b3          	sub	a1,a1,a6
    9274:	00b715b3          	sll	a1,a4,a1
    9278:	00c5e5b3          	or	a1,a1,a2
    927c:	00b035b3          	snez	a1,a1
    9280:	00b6e6b3          	or	a3,a3,a1
    9284:	00000813          	li	a6,0
    9288:	f89ff06f          	j	9210 <__subdf3+0xfc>
    928c:	00c766b3          	or	a3,a4,a2
    9290:	00d036b3          	snez	a3,a3
    9294:	ff1ff06f          	j	9284 <__subdf3+0x170>
    9298:	0c080263          	beqz	a6,935c <__subdf3+0x248>
    929c:	409886b3          	sub	a3,a7,s1
    92a0:	02049263          	bnez	s1,92c4 <__subdf3+0x1b0>
    92a4:	00a7e833          	or	a6,a5,a0
    92a8:	00080863          	beqz	a6,92b8 <__subdf3+0x1a4>
    92ac:	fff68813          	addi	a6,a3,-1 # 7fffff <__neorv32_ram_size+0x7effff>
    92b0:	ee080ee3          	beqz	a6,91ac <__subdf3+0x98>
    92b4:	02b69063          	bne	a3,a1,92d4 <__subdf3+0x1c0>
    92b8:	00070793          	mv	a5,a4
    92bc:	00068493          	mv	s1,a3
    92c0:	0e40006f          	j	93a4 <__subdf3+0x290>
    92c4:	58b88663          	beq	a7,a1,9850 <__subdf3+0x73c>
    92c8:	008005b7          	lui	a1,0x800
    92cc:	00b7e7b3          	or	a5,a5,a1
    92d0:	00068813          	mv	a6,a3
    92d4:	03800693          	li	a3,56
    92d8:	0706cc63          	blt	a3,a6,9350 <__subdf3+0x23c>
    92dc:	01f00693          	li	a3,31
    92e0:	02000313          	li	t1,32
    92e4:	0306ce63          	blt	a3,a6,9320 <__subdf3+0x20c>
    92e8:	41030333          	sub	t1,t1,a6
    92ec:	006796b3          	sll	a3,a5,t1
    92f0:	010555b3          	srl	a1,a0,a6
    92f4:	00651333          	sll	t1,a0,t1
    92f8:	00b6e6b3          	or	a3,a3,a1
    92fc:	00603333          	snez	t1,t1
    9300:	0066e6b3          	or	a3,a3,t1
    9304:	0107d833          	srl	a6,a5,a6
    9308:	00c68633          	add	a2,a3,a2
    930c:	00e80833          	add	a6,a6,a4
    9310:	00d636b3          	sltu	a3,a2,a3
    9314:	00d807b3          	add	a5,a6,a3
    9318:	00088493          	mv	s1,a7
    931c:	f05ff06f          	j	9220 <__subdf3+0x10c>
    9320:	fe080693          	addi	a3,a6,-32
    9324:	00d7d6b3          	srl	a3,a5,a3
    9328:	00000593          	li	a1,0
    932c:	00680863          	beq	a6,t1,933c <__subdf3+0x228>
    9330:	04000593          	li	a1,64
    9334:	410585b3          	sub	a1,a1,a6
    9338:	00b795b3          	sll	a1,a5,a1
    933c:	00a5e5b3          	or	a1,a1,a0
    9340:	00b035b3          	snez	a1,a1
    9344:	00b6e6b3          	or	a3,a3,a1
    9348:	00000813          	li	a6,0
    934c:	fbdff06f          	j	9308 <__subdf3+0x1f4>
    9350:	00a7e6b3          	or	a3,a5,a0
    9354:	00d036b3          	snez	a3,a3
    9358:	ff1ff06f          	j	9348 <__subdf3+0x234>
    935c:	00148693          	addi	a3,s1,1
    9360:	7fe6f813          	andi	a6,a3,2046
    9364:	0c081263          	bnez	a6,9428 <__subdf3+0x314>
    9368:	00a7e6b3          	or	a3,a5,a0
    936c:	0a049463          	bnez	s1,9414 <__subdf3+0x300>
    9370:	4a068863          	beqz	a3,9820 <__subdf3+0x70c>
    9374:	00c766b3          	or	a3,a4,a2
    9378:	4a068863          	beqz	a3,9828 <__subdf3+0x714>
    937c:	00c50633          	add	a2,a0,a2
    9380:	00e787b3          	add	a5,a5,a4
    9384:	00a63533          	sltu	a0,a2,a0
    9388:	00a787b3          	add	a5,a5,a0
    938c:	00879713          	slli	a4,a5,0x8
    9390:	32075a63          	bgez	a4,96c4 <__subdf3+0x5b0>
    9394:	ff800737          	lui	a4,0xff800
    9398:	fff70713          	addi	a4,a4,-1 # ff7fffff <__crt0_stack_top+0x7f7effff>
    939c:	00e7f7b3          	and	a5,a5,a4
    93a0:	00100493          	li	s1,1
  FP_PACK_SEMIRAW_D (r, R);
    93a4:	01d79693          	slli	a3,a5,0x1d
    93a8:	00365613          	srli	a2,a2,0x3
    93ac:	7ff00713          	li	a4,2047
    93b0:	00c6e6b3          	or	a3,a3,a2
    93b4:	0037d793          	srli	a5,a5,0x3
    93b8:	00e49e63          	bne	s1,a4,93d4 <__subdf3+0x2c0>
    93bc:	00f6e6b3          	or	a3,a3,a5
    93c0:	00000793          	li	a5,0
    93c4:	00068863          	beqz	a3,93d4 <__subdf3+0x2c0>
    93c8:	000807b7          	lui	a5,0x80
    93cc:	00000693          	li	a3,0
    93d0:	00000913          	li	s2,0
    93d4:	7ff4f713          	andi	a4,s1,2047
    93d8:	00c79793          	slli	a5,a5,0xc
  FP_HANDLE_EXCEPTIONS;

  return r;
}
    93dc:	01c12083          	lw	ra,28(sp)
    93e0:	01812403          	lw	s0,24(sp)
  FP_PACK_SEMIRAW_D (r, R);
    93e4:	00c7d793          	srli	a5,a5,0xc
    93e8:	01471713          	slli	a4,a4,0x14
    93ec:	01f91593          	slli	a1,s2,0x1f
    93f0:	00f76733          	or	a4,a4,a5
    93f4:	00b767b3          	or	a5,a4,a1
}
    93f8:	01412483          	lw	s1,20(sp)
    93fc:	01012903          	lw	s2,16(sp)
    9400:	00c12983          	lw	s3,12(sp)
    9404:	00068513          	mv	a0,a3
    9408:	00078593          	mv	a1,a5
    940c:	02010113          	addi	sp,sp,32
    9410:	00008067          	ret
  FP_SUB_D (R, A, B);
    9414:	40068e63          	beqz	a3,9830 <__subdf3+0x71c>
    9418:	00c76733          	or	a4,a4,a2
    941c:	2c071c63          	bnez	a4,96f4 <__subdf3+0x5e0>
    9420:	00050613          	mv	a2,a0
    9424:	4100006f          	j	9834 <__subdf3+0x720>
    9428:	40b68a63          	beq	a3,a1,983c <__subdf3+0x728>
    942c:	00c50633          	add	a2,a0,a2
    9430:	00e787b3          	add	a5,a5,a4
    9434:	00a63533          	sltu	a0,a2,a0
    9438:	00a787b3          	add	a5,a5,a0
    943c:	01f79713          	slli	a4,a5,0x1f
    9440:	00165613          	srli	a2,a2,0x1
    9444:	00c76633          	or	a2,a4,a2
    9448:	0017d793          	srli	a5,a5,0x1
    944c:	00068493          	mv	s1,a3
  FP_PACK_SEMIRAW_D (r, R);
    9450:	00767713          	andi	a4,a2,7
    9454:	02070063          	beqz	a4,9474 <__subdf3+0x360>
    9458:	00f67713          	andi	a4,a2,15
    945c:	00400693          	li	a3,4
    9460:	00d70a63          	beq	a4,a3,9474 <__subdf3+0x360>
    9464:	00d60733          	add	a4,a2,a3
    9468:	00c736b3          	sltu	a3,a4,a2
    946c:	00d787b3          	add	a5,a5,a3
    9470:	00070613          	mv	a2,a4
    9474:	00879713          	slli	a4,a5,0x8
    9478:	f20756e3          	bgez	a4,93a4 <__subdf3+0x290>
    947c:	00148493          	addi	s1,s1,1
    9480:	7ff00713          	li	a4,2047
    9484:	3ae48e63          	beq	s1,a4,9840 <__subdf3+0x72c>
    9488:	ff800737          	lui	a4,0xff800
    948c:	fff70713          	addi	a4,a4,-1 # ff7fffff <__crt0_stack_top+0x7f7effff>
    9490:	00e7f7b3          	and	a5,a5,a4
    9494:	f11ff06f          	j	93a4 <__subdf3+0x290>
  FP_SUB_D (R, A, B);
    9498:	0f005063          	blez	a6,9578 <__subdf3+0x464>
    949c:	08089863          	bnez	a7,952c <__subdf3+0x418>
    94a0:	00c766b3          	or	a3,a4,a2
    94a4:	d20682e3          	beqz	a3,91c8 <__subdf3+0xb4>
    94a8:	fff48813          	addi	a6,s1,-1
    94ac:	00081e63          	bnez	a6,94c8 <__subdf3+0x3b4>
    94b0:	40c50633          	sub	a2,a0,a2
    94b4:	40e787b3          	sub	a5,a5,a4
    94b8:	00c53533          	sltu	a0,a0,a2
    94bc:	40a787b3          	sub	a5,a5,a0
    94c0:	00100493          	li	s1,1
    94c4:	04c0006f          	j	9510 <__subdf3+0x3fc>
    94c8:	d0b480e3          	beq	s1,a1,91c8 <__subdf3+0xb4>
    94cc:	03800693          	li	a3,56
    94d0:	0906ce63          	blt	a3,a6,956c <__subdf3+0x458>
    94d4:	01f00693          	li	a3,31
    94d8:	02000893          	li	a7,32
    94dc:	0706c063          	blt	a3,a6,953c <__subdf3+0x428>
    94e0:	410888b3          	sub	a7,a7,a6
    94e4:	011716b3          	sll	a3,a4,a7
    94e8:	010655b3          	srl	a1,a2,a6
    94ec:	011618b3          	sll	a7,a2,a7
    94f0:	00b6e6b3          	or	a3,a3,a1
    94f4:	011038b3          	snez	a7,a7
    94f8:	0116e6b3          	or	a3,a3,a7
    94fc:	01075833          	srl	a6,a4,a6
    9500:	40d50633          	sub	a2,a0,a3
    9504:	41078833          	sub	a6,a5,a6
    9508:	00c53533          	sltu	a0,a0,a2
    950c:	40a807b3          	sub	a5,a6,a0
    9510:	00879713          	slli	a4,a5,0x8
    9514:	f2075ee3          	bgez	a4,9450 <__subdf3+0x33c>
    9518:	00800437          	lui	s0,0x800
    951c:	fff40413          	addi	s0,s0,-1 # 7fffff <__neorv32_ram_size+0x7effff>
    9520:	0087f433          	and	s0,a5,s0
    9524:	00060993          	mv	s3,a2
    9528:	2140006f          	j	973c <__subdf3+0x628>
    952c:	c8b48ee3          	beq	s1,a1,91c8 <__subdf3+0xb4>
    9530:	008006b7          	lui	a3,0x800
    9534:	00d76733          	or	a4,a4,a3
    9538:	f95ff06f          	j	94cc <__subdf3+0x3b8>
    953c:	fe080693          	addi	a3,a6,-32
    9540:	00d756b3          	srl	a3,a4,a3
    9544:	00000593          	li	a1,0
    9548:	01180863          	beq	a6,a7,9558 <__subdf3+0x444>
    954c:	04000593          	li	a1,64
    9550:	410585b3          	sub	a1,a1,a6
    9554:	00b715b3          	sll	a1,a4,a1
    9558:	00c5e5b3          	or	a1,a1,a2
    955c:	00b035b3          	snez	a1,a1
    9560:	00b6e6b3          	or	a3,a3,a1
    9564:	00000813          	li	a6,0
    9568:	f99ff06f          	j	9500 <__subdf3+0x3ec>
    956c:	00c766b3          	or	a3,a4,a2
    9570:	00d036b3          	snez	a3,a3
    9574:	ff1ff06f          	j	9564 <__subdf3+0x450>
    9578:	0e080663          	beqz	a6,9664 <__subdf3+0x550>
    957c:	40988333          	sub	t1,a7,s1
    9580:	04049263          	bnez	s1,95c4 <__subdf3+0x4b0>
    9584:	00a7e833          	or	a6,a5,a0
    9588:	02080663          	beqz	a6,95b4 <__subdf3+0x4a0>
    958c:	fff30813          	addi	a6,t1,-1
    9590:	02081063          	bnez	a6,95b0 <__subdf3+0x49c>
    9594:	40a60533          	sub	a0,a2,a0
    9598:	00a635b3          	sltu	a1,a2,a0
    959c:	40f707b3          	sub	a5,a4,a5
    95a0:	00050613          	mv	a2,a0
    95a4:	40b787b3          	sub	a5,a5,a1
    95a8:	00068913          	mv	s2,a3
    95ac:	f15ff06f          	j	94c0 <__subdf3+0x3ac>
    95b0:	02b31263          	bne	t1,a1,95d4 <__subdf3+0x4c0>
    95b4:	00068913          	mv	s2,a3
    95b8:	00070793          	mv	a5,a4
    95bc:	00030493          	mv	s1,t1
    95c0:	de5ff06f          	j	93a4 <__subdf3+0x290>
    95c4:	28b88463          	beq	a7,a1,984c <__subdf3+0x738>
    95c8:	008005b7          	lui	a1,0x800
    95cc:	00b7e7b3          	or	a5,a5,a1
    95d0:	00030813          	mv	a6,t1
    95d4:	03800593          	li	a1,56
    95d8:	0905c063          	blt	a1,a6,9658 <__subdf3+0x544>
    95dc:	01f00593          	li	a1,31
    95e0:	02000e13          	li	t3,32
    95e4:	0505c263          	blt	a1,a6,9628 <__subdf3+0x514>
    95e8:	410e0e33          	sub	t3,t3,a6
    95ec:	01c795b3          	sll	a1,a5,t3
    95f0:	01055333          	srl	t1,a0,a6
    95f4:	01c51e33          	sll	t3,a0,t3
    95f8:	0065e5b3          	or	a1,a1,t1
    95fc:	01c03e33          	snez	t3,t3
    9600:	01c5e5b3          	or	a1,a1,t3
    9604:	0107d833          	srl	a6,a5,a6
    9608:	40b605b3          	sub	a1,a2,a1
    960c:	00b637b3          	sltu	a5,a2,a1
    9610:	41070833          	sub	a6,a4,a6
    9614:	00058613          	mv	a2,a1
    9618:	40f807b3          	sub	a5,a6,a5
    961c:	00088493          	mv	s1,a7
    9620:	00068913          	mv	s2,a3
    9624:	eedff06f          	j	9510 <__subdf3+0x3fc>
    9628:	fe080593          	addi	a1,a6,-32
    962c:	00b7d5b3          	srl	a1,a5,a1
    9630:	00000313          	li	t1,0
    9634:	01c80863          	beq	a6,t3,9644 <__subdf3+0x530>
    9638:	04000313          	li	t1,64
    963c:	41030333          	sub	t1,t1,a6
    9640:	00679333          	sll	t1,a5,t1
    9644:	00a36333          	or	t1,t1,a0
    9648:	00603333          	snez	t1,t1
    964c:	0065e5b3          	or	a1,a1,t1
    9650:	00000813          	li	a6,0
    9654:	fb5ff06f          	j	9608 <__subdf3+0x4f4>
    9658:	00a7e5b3          	or	a1,a5,a0
    965c:	00b035b3          	snez	a1,a1
    9660:	ff1ff06f          	j	9650 <__subdf3+0x53c>
    9664:	00148813          	addi	a6,s1,1
    9668:	7fe87813          	andi	a6,a6,2046
    966c:	0a081063          	bnez	a6,970c <__subdf3+0x5f8>
    9670:	00c76833          	or	a6,a4,a2
    9674:	00a7e8b3          	or	a7,a5,a0
    9678:	06049863          	bnez	s1,96e8 <__subdf3+0x5d4>
    967c:	00089a63          	bnez	a7,9690 <__subdf3+0x57c>
    9680:	00070793          	mv	a5,a4
    9684:	02081e63          	bnez	a6,96c0 <__subdf3+0x5ac>
    9688:	00000913          	li	s2,0
    968c:	1b40006f          	j	9840 <__subdf3+0x72c>
    9690:	18080c63          	beqz	a6,9828 <__subdf3+0x714>
    9694:	40c50833          	sub	a6,a0,a2
    9698:	010538b3          	sltu	a7,a0,a6
    969c:	40e785b3          	sub	a1,a5,a4
    96a0:	411585b3          	sub	a1,a1,a7
    96a4:	00859893          	slli	a7,a1,0x8
    96a8:	0208d663          	bgez	a7,96d4 <__subdf3+0x5c0>
    96ac:	40a60533          	sub	a0,a2,a0
    96b0:	00a635b3          	sltu	a1,a2,a0
    96b4:	40f707b3          	sub	a5,a4,a5
    96b8:	00050613          	mv	a2,a0
    96bc:	40b787b3          	sub	a5,a5,a1
    96c0:	00068913          	mv	s2,a3
  FP_PACK_SEMIRAW_D (r, R);
    96c4:	00f66733          	or	a4,a2,a5
    96c8:	1a070063          	beqz	a4,9868 <__subdf3+0x754>
    96cc:	00000493          	li	s1,0
    96d0:	d81ff06f          	j	9450 <__subdf3+0x33c>
  FP_SUB_D (R, A, B);
    96d4:	00b86633          	or	a2,a6,a1
    96d8:	18060263          	beqz	a2,985c <__subdf3+0x748>
    96dc:	00058793          	mv	a5,a1
    96e0:	00080613          	mv	a2,a6
    96e4:	fe1ff06f          	j	96c4 <__subdf3+0x5b0>
    96e8:	00089e63          	bnez	a7,9704 <__subdf3+0x5f0>
    96ec:	00068913          	mv	s2,a3
    96f0:	14081063          	bnez	a6,9830 <__subdf3+0x71c>
    96f4:	00000913          	li	s2,0
    96f8:	004007b7          	lui	a5,0x400
    96fc:	00000613          	li	a2,0
    9700:	1340006f          	j	9834 <__subdf3+0x720>
    9704:	d0080ee3          	beqz	a6,9420 <__subdf3+0x30c>
    9708:	fedff06f          	j	96f4 <__subdf3+0x5e0>
    970c:	40c505b3          	sub	a1,a0,a2
    9710:	00b53833          	sltu	a6,a0,a1
    9714:	40e78433          	sub	s0,a5,a4
    9718:	41040433          	sub	s0,s0,a6
    971c:	00841813          	slli	a6,s0,0x8
    9720:	00058993          	mv	s3,a1
    9724:	06085e63          	bgez	a6,97a0 <__subdf3+0x68c>
    9728:	40a609b3          	sub	s3,a2,a0
    972c:	40f70433          	sub	s0,a4,a5
    9730:	01363633          	sltu	a2,a2,s3
    9734:	40c40433          	sub	s0,s0,a2
    9738:	00068913          	mv	s2,a3
    973c:	06040e63          	beqz	s0,97b8 <__subdf3+0x6a4>
    9740:	00040513          	mv	a0,s0
    9744:	5a0000ef          	jal	9ce4 <__clzsi2>
    9748:	ff850713          	addi	a4,a0,-8
    974c:	02000793          	li	a5,32
    9750:	40e787b3          	sub	a5,a5,a4
    9754:	00e41433          	sll	s0,s0,a4
    9758:	00f9d7b3          	srl	a5,s3,a5
    975c:	0087e7b3          	or	a5,a5,s0
    9760:	00e99633          	sll	a2,s3,a4
    9764:	0a974463          	blt	a4,s1,980c <__subdf3+0x6f8>
    9768:	40970733          	sub	a4,a4,s1
    976c:	00170513          	addi	a0,a4,1
    9770:	01f00693          	li	a3,31
    9774:	02000593          	li	a1,32
    9778:	06a6c263          	blt	a3,a0,97dc <__subdf3+0x6c8>
    977c:	40a585b3          	sub	a1,a1,a0
    9780:	00b79733          	sll	a4,a5,a1
    9784:	00a656b3          	srl	a3,a2,a0
    9788:	00b615b3          	sll	a1,a2,a1
    978c:	00d76733          	or	a4,a4,a3
    9790:	00b035b3          	snez	a1,a1
    9794:	00b76633          	or	a2,a4,a1
    9798:	00a7d7b3          	srl	a5,a5,a0
    979c:	f29ff06f          	j	96c4 <__subdf3+0x5b0>
    97a0:	0085e633          	or	a2,a1,s0
    97a4:	f8061ce3          	bnez	a2,973c <__subdf3+0x628>
    97a8:	00000913          	li	s2,0
    97ac:	00000793          	li	a5,0
    97b0:	00000493          	li	s1,0
    97b4:	bf1ff06f          	j	93a4 <__subdf3+0x290>
    97b8:	00098513          	mv	a0,s3
    97bc:	528000ef          	jal	9ce4 <__clzsi2>
    97c0:	01850713          	addi	a4,a0,24
    97c4:	01f00793          	li	a5,31
    97c8:	f8e7d2e3          	bge	a5,a4,974c <__subdf3+0x638>
    97cc:	ff850793          	addi	a5,a0,-8
    97d0:	00f997b3          	sll	a5,s3,a5
    97d4:	00000613          	li	a2,0
    97d8:	f8dff06f          	j	9764 <__subdf3+0x650>
    97dc:	fe170713          	addi	a4,a4,-31
    97e0:	00e7d733          	srl	a4,a5,a4
    97e4:	00000693          	li	a3,0
    97e8:	00b50863          	beq	a0,a1,97f8 <__subdf3+0x6e4>
    97ec:	04000693          	li	a3,64
    97f0:	40a686b3          	sub	a3,a3,a0
    97f4:	00d796b3          	sll	a3,a5,a3
    97f8:	00d666b3          	or	a3,a2,a3
    97fc:	00d036b3          	snez	a3,a3
    9800:	00d76633          	or	a2,a4,a3
    9804:	00000793          	li	a5,0
    9808:	ebdff06f          	j	96c4 <__subdf3+0x5b0>
    980c:	40e484b3          	sub	s1,s1,a4
    9810:	ff800737          	lui	a4,0xff800
    9814:	fff70713          	addi	a4,a4,-1 # ff7fffff <__crt0_stack_top+0x7f7effff>
    9818:	00e7f7b3          	and	a5,a5,a4
    981c:	c35ff06f          	j	9450 <__subdf3+0x33c>
    9820:	00070793          	mv	a5,a4
    9824:	ea1ff06f          	j	96c4 <__subdf3+0x5b0>
    9828:	00050613          	mv	a2,a0
    982c:	e99ff06f          	j	96c4 <__subdf3+0x5b0>
    9830:	00070793          	mv	a5,a4
    9834:	00058493          	mv	s1,a1
    9838:	b6dff06f          	j	93a4 <__subdf3+0x290>
    983c:	00068493          	mv	s1,a3
    9840:	00000793          	li	a5,0
    9844:	00000613          	li	a2,0
    9848:	b5dff06f          	j	93a4 <__subdf3+0x290>
    984c:	00068913          	mv	s2,a3
    9850:	00070793          	mv	a5,a4
    9854:	00088493          	mv	s1,a7
    9858:	b4dff06f          	j	93a4 <__subdf3+0x290>
    985c:	00000913          	li	s2,0
    9860:	00000793          	li	a5,0
    9864:	b41ff06f          	j	93a4 <__subdf3+0x290>
    9868:	00000793          	li	a5,0
    986c:	00000613          	li	a2,0
    9870:	f41ff06f          	j	97b0 <__subdf3+0x69c>

00009874 <__fixdfsi>:
  FP_DECL_EX;
  FP_DECL_D (A);
  USItype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_D (A, a);
    9874:	0145d713          	srli	a4,a1,0x14
    9878:	001006b7          	lui	a3,0x100
    987c:	fff68793          	addi	a5,a3,-1 # fffff <__neorv32_ram_size+0xeffff>
    9880:	7ff77713          	andi	a4,a4,2047
  FP_TO_INT_D (r, A, SI_BITS, 1);
    9884:	3fe00613          	li	a2,1022
  FP_UNPACK_RAW_D (A, a);
    9888:	00b7f7b3          	and	a5,a5,a1
    988c:	01f5d593          	srli	a1,a1,0x1f
  FP_TO_INT_D (r, A, SI_BITS, 1);
    9890:	04e65c63          	bge	a2,a4,98e8 <__fixdfsi+0x74>
    9894:	41d00613          	li	a2,1053
    9898:	00e65a63          	bge	a2,a4,98ac <__fixdfsi+0x38>
    989c:	80000537          	lui	a0,0x80000
    98a0:	fff50513          	addi	a0,a0,-1 # 7fffffff <__neorv32_ram_size+0x7ffeffff>
    98a4:	00a58533          	add	a0,a1,a0
    98a8:	00008067          	ret
    98ac:	00d7e7b3          	or	a5,a5,a3
    98b0:	41300693          	li	a3,1043
    98b4:	02e6d463          	bge	a3,a4,98dc <__fixdfsi+0x68>
    98b8:	bed70693          	addi	a3,a4,-1043
    98bc:	00d797b3          	sll	a5,a5,a3
    98c0:	43300693          	li	a3,1075
    98c4:	40e68733          	sub	a4,a3,a4
    98c8:	00e55533          	srl	a0,a0,a4
    98cc:	00a7e533          	or	a0,a5,a0
    98d0:	00058e63          	beqz	a1,98ec <__fixdfsi+0x78>
    98d4:	40a00533          	neg	a0,a0
    98d8:	00008067          	ret
    98dc:	40e686b3          	sub	a3,a3,a4
    98e0:	00d7d533          	srl	a0,a5,a3
    98e4:	fedff06f          	j	98d0 <__fixdfsi+0x5c>
    98e8:	00000513          	li	a0,0
  FP_HANDLE_EXCEPTIONS;

  return r;
}
    98ec:	00008067          	ret

000098f0 <__fixunsdfsi>:
  FP_DECL_EX;
  FP_DECL_D (A);
  USItype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_D (A, a);
    98f0:	0145d713          	srli	a4,a1,0x14
    98f4:	00100837          	lui	a6,0x100
    98f8:	fff80793          	addi	a5,a6,-1 # fffff <__neorv32_ram_size+0xeffff>
    98fc:	7ff77713          	andi	a4,a4,2047
  FP_TO_INT_D (r, A, SI_BITS, 0);
    9900:	3fe00693          	li	a3,1022
  FP_UNPACK_RAW_D (A, a);
    9904:	00b7f7b3          	and	a5,a5,a1
{
    9908:	00050613          	mv	a2,a0
  FP_UNPACK_RAW_D (A, a);
    990c:	01f5d593          	srli	a1,a1,0x1f
  FP_TO_INT_D (r, A, SI_BITS, 0);
    9910:	04e6d863          	bge	a3,a4,9960 <__fixunsdfsi+0x70>
    9914:	41f00693          	li	a3,1055
    9918:	40b686b3          	sub	a3,a3,a1
    991c:	fff58513          	addi	a0,a1,-1 # 7fffff <__neorv32_ram_size+0x7effff>
    9920:	04d75263          	bge	a4,a3,9964 <__fixunsdfsi+0x74>
    9924:	00000513          	li	a0,0
    9928:	02059e63          	bnez	a1,9964 <__fixunsdfsi+0x74>
    992c:	41300693          	li	a3,1043
    9930:	0107e7b3          	or	a5,a5,a6
    9934:	02e6d063          	bge	a3,a4,9954 <__fixunsdfsi+0x64>
    9938:	bed70693          	addi	a3,a4,-1043
    993c:	00d797b3          	sll	a5,a5,a3
    9940:	43300693          	li	a3,1075
    9944:	40e68733          	sub	a4,a3,a4
    9948:	00e65633          	srl	a2,a2,a4
    994c:	00c7e533          	or	a0,a5,a2
    9950:	00008067          	ret
    9954:	40e686b3          	sub	a3,a3,a4
    9958:	00d7d533          	srl	a0,a5,a3
    995c:	00008067          	ret
    9960:	00000513          	li	a0,0
  FP_HANDLE_EXCEPTIONS;

  return r;
}
    9964:	00008067          	ret

00009968 <__floatunsidf>:
#include "soft-fp.h"
#include "double.h"

DFtype
__floatunsidf (USItype i)
{
    9968:	ff010113          	addi	sp,sp,-16
    996c:	00812423          	sw	s0,8(sp)
    9970:	00112623          	sw	ra,12(sp)
    9974:	00050413          	mv	s0,a0
  FP_DECL_D (A);
  DFtype a;

  FP_FROM_INT_D (A, i, SI_BITS, USItype);
    9978:	06050063          	beqz	a0,99d8 <__floatunsidf+0x70>
    997c:	368000ef          	jal	9ce4 <__clzsi2>
    9980:	41e00713          	li	a4,1054
    9984:	00a00793          	li	a5,10
    9988:	40a70733          	sub	a4,a4,a0
    998c:	02a7ce63          	blt	a5,a0,99c8 <__floatunsidf+0x60>
    9990:	00b00793          	li	a5,11
    9994:	40a787b3          	sub	a5,a5,a0
    9998:	01550513          	addi	a0,a0,21
    999c:	00f457b3          	srl	a5,s0,a5
    99a0:	00a41433          	sll	s0,s0,a0
  FP_PACK_RAW_D (a, A);

  return a;
}
    99a4:	00c12083          	lw	ra,12(sp)
    99a8:	00040513          	mv	a0,s0
    99ac:	00812403          	lw	s0,8(sp)
  FP_PACK_RAW_D (a, A);
    99b0:	00c79793          	slli	a5,a5,0xc
    99b4:	01471713          	slli	a4,a4,0x14
    99b8:	00c7d793          	srli	a5,a5,0xc
}
    99bc:	00f765b3          	or	a1,a4,a5
    99c0:	01010113          	addi	sp,sp,16
    99c4:	00008067          	ret
  FP_FROM_INT_D (A, i, SI_BITS, USItype);
    99c8:	ff550513          	addi	a0,a0,-11
    99cc:	00a417b3          	sll	a5,s0,a0
    99d0:	00000413          	li	s0,0
    99d4:	fd1ff06f          	j	99a4 <__floatunsidf+0x3c>
    99d8:	00000793          	li	a5,0
    99dc:	00000713          	li	a4,0
    99e0:	fc5ff06f          	j	99a4 <__floatunsidf+0x3c>

000099e4 <__floatundidf>:
#include "soft-fp.h"
#include "double.h"

DFtype
__floatundidf (UDItype i)
{
    99e4:	fe010113          	addi	sp,sp,-32
    99e8:	00112e23          	sw	ra,28(sp)
    99ec:	00812c23          	sw	s0,24(sp)
    99f0:	00912a23          	sw	s1,20(sp)
    99f4:	01212823          	sw	s2,16(sp)
    99f8:	01312623          	sw	s3,12(sp)
    99fc:	01412423          	sw	s4,8(sp)
  FP_DECL_EX;
  FP_DECL_D (A);
  DFtype a;

  FP_INIT_ROUNDMODE;
  FP_FROM_INT_D (A, i, DI_BITS, UDItype);
    9a00:	00b56733          	or	a4,a0,a1
    9a04:	18070263          	beqz	a4,9b88 <__floatundidf+0x1a4>
    9a08:	00050913          	mv	s2,a0
    9a0c:	00058493          	mv	s1,a1
    9a10:	00058413          	mv	s0,a1
    9a14:	0a058e63          	beqz	a1,9ad0 <__floatundidf+0xec>
    9a18:	00058513          	mv	a0,a1
    9a1c:	2c8000ef          	jal	9ce4 <__clzsi2>
    9a20:	43e00a13          	li	s4,1086
    9a24:	00a00793          	li	a5,10
    9a28:	00050993          	mv	s3,a0
    9a2c:	40aa0a33          	sub	s4,s4,a0
    9a30:	10a7c463          	blt	a5,a0,9b38 <__floatundidf+0x154>
    9a34:	00700793          	li	a5,7
    9a38:	12a7c263          	blt	a5,a0,9b5c <__floatundidf+0x178>
    9a3c:	03850613          	addi	a2,a0,56
    9a40:	00048593          	mv	a1,s1
    9a44:	00090513          	mv	a0,s2
    9a48:	260000ef          	jal	9ca8 <__ashldi3>
    9a4c:	00b56533          	or	a0,a0,a1
    9a50:	00800613          	li	a2,8
    9a54:	00a034b3          	snez	s1,a0
    9a58:	00040593          	mv	a1,s0
    9a5c:	41360633          	sub	a2,a2,s3
    9a60:	00090513          	mv	a0,s2
    9a64:	208000ef          	jal	9c6c <__lshrdi3>
    9a68:	00a4e7b3          	or	a5,s1,a0
    9a6c:	00058413          	mv	s0,a1
    9a70:	ff800737          	lui	a4,0xff800
    9a74:	fff70713          	addi	a4,a4,-1 # ff7fffff <__crt0_stack_top+0x7f7effff>
    9a78:	00e47433          	and	s0,s0,a4
    9a7c:	0077f713          	andi	a4,a5,7
    9a80:	02070e63          	beqz	a4,9abc <__floatundidf+0xd8>
    9a84:	00f7f713          	andi	a4,a5,15
    9a88:	00400693          	li	a3,4
    9a8c:	02d70863          	beq	a4,a3,9abc <__floatundidf+0xd8>
    9a90:	00d78733          	add	a4,a5,a3
    9a94:	00f736b3          	sltu	a3,a4,a5
    9a98:	00d40433          	add	s0,s0,a3
    9a9c:	00070793          	mv	a5,a4
    9aa0:	00841713          	slli	a4,s0,0x8
    9aa4:	00075c63          	bgez	a4,9abc <__floatundidf+0xd8>
    9aa8:	ff800737          	lui	a4,0xff800
    9aac:	fff70713          	addi	a4,a4,-1 # ff7fffff <__crt0_stack_top+0x7f7effff>
    9ab0:	43f00a13          	li	s4,1087
    9ab4:	00e47433          	and	s0,s0,a4
    9ab8:	413a0a33          	sub	s4,s4,s3
    9abc:	01d41713          	slli	a4,s0,0x1d
    9ac0:	0037d793          	srli	a5,a5,0x3
    9ac4:	00f76733          	or	a4,a4,a5
    9ac8:	00345413          	srli	s0,s0,0x3
    9acc:	0380006f          	j	9b04 <__floatundidf+0x120>
    9ad0:	214000ef          	jal	9ce4 <__clzsi2>
    9ad4:	02050993          	addi	s3,a0,32
    9ad8:	43e00a13          	li	s4,1086
    9adc:	02a00793          	li	a5,42
    9ae0:	413a0a33          	sub	s4,s4,s3
    9ae4:	0737c463          	blt	a5,s3,9b4c <__floatundidf+0x168>
    9ae8:	02b00413          	li	s0,43
    9aec:	ff598713          	addi	a4,s3,-11
    9af0:	41340433          	sub	s0,s0,s3
    9af4:	00e494b3          	sll	s1,s1,a4
    9af8:	00895433          	srl	s0,s2,s0
    9afc:	00946433          	or	s0,s0,s1
    9b00:	00e91733          	sll	a4,s2,a4
  FP_PACK_RAW_D (a, A);
    9b04:	00c41413          	slli	s0,s0,0xc
    9b08:	014a1a13          	slli	s4,s4,0x14
    9b0c:	00c45413          	srli	s0,s0,0xc
  FP_HANDLE_EXCEPTIONS;

  return a;
}
    9b10:	008a65b3          	or	a1,s4,s0
    9b14:	01c12083          	lw	ra,28(sp)
    9b18:	01812403          	lw	s0,24(sp)
    9b1c:	01412483          	lw	s1,20(sp)
    9b20:	01012903          	lw	s2,16(sp)
    9b24:	00c12983          	lw	s3,12(sp)
    9b28:	00812a03          	lw	s4,8(sp)
    9b2c:	00070513          	mv	a0,a4
    9b30:	02010113          	addi	sp,sp,32
    9b34:	00008067          	ret
  FP_FROM_INT_D (A, i, DI_BITS, UDItype);
    9b38:	00b00793          	li	a5,11
    9b3c:	00090713          	mv	a4,s2
    9b40:	faf514e3          	bne	a0,a5,9ae8 <__floatundidf+0x104>
    9b44:	43300a13          	li	s4,1075
    9b48:	fbdff06f          	j	9b04 <__floatundidf+0x120>
    9b4c:	ff550413          	addi	s0,a0,-11
    9b50:	00000713          	li	a4,0
    9b54:	00891433          	sll	s0,s2,s0
    9b58:	fadff06f          	j	9b04 <__floatundidf+0x120>
    9b5c:	00800713          	li	a4,8
    9b60:	00090793          	mv	a5,s2
    9b64:	f0e506e3          	beq	a0,a4,9a70 <__floatundidf+0x8c>
    9b68:	02800413          	li	s0,40
    9b6c:	ff850713          	addi	a4,a0,-8
    9b70:	40a40433          	sub	s0,s0,a0
    9b74:	00895433          	srl	s0,s2,s0
    9b78:	00e494b3          	sll	s1,s1,a4
    9b7c:	00946433          	or	s0,s0,s1
    9b80:	00e917b3          	sll	a5,s2,a4
    9b84:	eedff06f          	j	9a70 <__floatundidf+0x8c>
    9b88:	00000413          	li	s0,0
    9b8c:	00000a13          	li	s4,0
    9b90:	f75ff06f          	j	9b04 <__floatundidf+0x120>

00009b94 <__mulsi3>:
/* Our RV64 64-bit routine is equivalent to our RV32 32-bit routine.  */
# define __muldi3 __mulsi3
#endif

FUNC_BEGIN (__muldi3)
  mv     a2, a0
    9b94:	00050613          	mv	a2,a0
  li     a0, 0
    9b98:	00000513          	li	a0,0
.L1:
  andi   a3, a1, 1
    9b9c:	0015f693          	andi	a3,a1,1
  beqz   a3, .L2
    9ba0:	00068463          	beqz	a3,9ba8 <__mulsi3+0x14>
  add    a0, a0, a2
    9ba4:	00c50533          	add	a0,a0,a2
.L2:
  srli   a1, a1, 1
    9ba8:	0015d593          	srli	a1,a1,0x1
  slli   a2, a2, 1
    9bac:	00161613          	slli	a2,a2,0x1
  bnez   a1, .L1
    9bb0:	fe0596e3          	bnez	a1,9b9c <__mulsi3+0x8>
  ret
    9bb4:	00008067          	ret

00009bb8 <__divsi3>:
  li    t0, -1
  beq   a1, t0, .L20
#endif

FUNC_BEGIN (__divdi3)
  bltz  a0, .L10
    9bb8:	06054063          	bltz	a0,9c18 <__umodsi3+0x10>
  bltz  a1, .L11
    9bbc:	0605c663          	bltz	a1,9c28 <__umodsi3+0x20>

00009bc0 <__hidden___udivsi3>:
  /* Since the quotient is positive, fall into __udivdi3.  */

FUNC_BEGIN (__udivdi3)
  mv    a2, a1
    9bc0:	00058613          	mv	a2,a1
  mv    a1, a0
    9bc4:	00050593          	mv	a1,a0
  li    a0, -1
    9bc8:	fff00513          	li	a0,-1
  beqz  a2, .L5
    9bcc:	02060c63          	beqz	a2,9c04 <__hidden___udivsi3+0x44>
  li    a3, 1
    9bd0:	00100693          	li	a3,1
  bgeu  a2, a1, .L2
    9bd4:	00b67a63          	bgeu	a2,a1,9be8 <__hidden___udivsi3+0x28>
.L1:
  blez  a2, .L2
    9bd8:	00c05863          	blez	a2,9be8 <__hidden___udivsi3+0x28>
  slli  a2, a2, 1
    9bdc:	00161613          	slli	a2,a2,0x1
  slli  a3, a3, 1
    9be0:	00169693          	slli	a3,a3,0x1
  bgtu  a1, a2, .L1
    9be4:	feb66ae3          	bltu	a2,a1,9bd8 <__hidden___udivsi3+0x18>
.L2:
  li    a0, 0
    9be8:	00000513          	li	a0,0
.L3:
  bltu  a1, a2, .L4
    9bec:	00c5e663          	bltu	a1,a2,9bf8 <__hidden___udivsi3+0x38>
  sub   a1, a1, a2
    9bf0:	40c585b3          	sub	a1,a1,a2
  or    a0, a0, a3
    9bf4:	00d56533          	or	a0,a0,a3
.L4:
  srli  a3, a3, 1
    9bf8:	0016d693          	srli	a3,a3,0x1
  srli  a2, a2, 1
    9bfc:	00165613          	srli	a2,a2,0x1
  bnez  a3, .L3
    9c00:	fe0696e3          	bnez	a3,9bec <__hidden___udivsi3+0x2c>
.L5:
  ret
    9c04:	00008067          	ret

00009c08 <__umodsi3>:
FUNC_END (__udivdi3)
HIDDEN_DEF (__udivdi3)

FUNC_BEGIN (__umoddi3)
  /* Call __udivdi3(a0, a1), then return the remainder, which is in a1.  */
  move  t0, ra
    9c08:	00008293          	mv	t0,ra
  jal   HIDDEN_JUMPTARGET(__udivdi3)
    9c0c:	fb5ff0ef          	jal	9bc0 <__hidden___udivsi3>
  move  a0, a1
    9c10:	00058513          	mv	a0,a1
  jr    t0
    9c14:	00028067          	jr	t0 # 52e4 <memset+0xb4>
FUNC_END (__umoddi3)

  /* Handle negative arguments to __divdi3.  */
.L10:
  neg   a0, a0
    9c18:	40a00533          	neg	a0,a0
  /* Zero is handled as a negative so that the result will not be inverted.  */
  bgtz  a1, .L12     /* Compute __udivdi3(-a0, a1), then negate the result.  */
    9c1c:	00b04863          	bgtz	a1,9c2c <__umodsi3+0x24>

  neg   a1, a1
    9c20:	40b005b3          	neg	a1,a1
  j     HIDDEN_JUMPTARGET(__udivdi3)     /* Compute __udivdi3(-a0, -a1).  */
    9c24:	f9dff06f          	j	9bc0 <__hidden___udivsi3>
.L11:                /* Compute __udivdi3(a0, -a1), then negate the result.  */
  neg   a1, a1
    9c28:	40b005b3          	neg	a1,a1
.L12:
  move  t0, ra
    9c2c:	00008293          	mv	t0,ra
  jal   HIDDEN_JUMPTARGET(__udivdi3)
    9c30:	f91ff0ef          	jal	9bc0 <__hidden___udivsi3>
  neg   a0, a0
    9c34:	40a00533          	neg	a0,a0
  jr    t0
    9c38:	00028067          	jr	t0

00009c3c <__modsi3>:
FUNC_END (__divdi3)

FUNC_BEGIN (__moddi3)
  move   t0, ra
    9c3c:	00008293          	mv	t0,ra
  bltz   a1, .L31
    9c40:	0005ca63          	bltz	a1,9c54 <__modsi3+0x18>
  bltz   a0, .L32
    9c44:	00054c63          	bltz	a0,9c5c <__modsi3+0x20>
.L30:
  jal    HIDDEN_JUMPTARGET(__udivdi3)    /* The dividend is not negative.  */
    9c48:	f79ff0ef          	jal	9bc0 <__hidden___udivsi3>
  move   a0, a1
    9c4c:	00058513          	mv	a0,a1
  jr     t0
    9c50:	00028067          	jr	t0
.L31:
  neg    a1, a1
    9c54:	40b005b3          	neg	a1,a1
  bgez   a0, .L30
    9c58:	fe0558e3          	bgez	a0,9c48 <__modsi3+0xc>
.L32:
  neg    a0, a0
    9c5c:	40a00533          	neg	a0,a0
  jal    HIDDEN_JUMPTARGET(__udivdi3)    /* The dividend is hella negative.  */
    9c60:	f61ff0ef          	jal	9bc0 <__hidden___udivsi3>
  neg    a0, a1
    9c64:	40b00533          	neg	a0,a1
  jr     t0
    9c68:	00028067          	jr	t0

00009c6c <__lshrdi3>:
  if (b == 0)
    9c6c:	00060e63          	beqz	a2,9c88 <__lshrdi3+0x1c>
  if (bm <= 0)
    9c70:	01f00793          	li	a5,31
    9c74:	00c7dc63          	bge	a5,a2,9c8c <__lshrdi3+0x20>
      w.s.low = (UWtype) uu.s.high >> -bm;
    9c78:	fe060613          	addi	a2,a2,-32 # ffe0 <__crt0_copy_data_src_begin+0x5020>
    9c7c:	00c5d533          	srl	a0,a1,a2
    9c80:	00000713          	li	a4,0
  return w.ll;
    9c84:	00070593          	mv	a1,a4
}
    9c88:	00008067          	ret
  const shift_count_type bm = W_TYPE_SIZE - b;
    9c8c:	02000793          	li	a5,32
    9c90:	40c787b3          	sub	a5,a5,a2
      w.s.high = (UWtype) uu.s.high >> b;
    9c94:	00c5d733          	srl	a4,a1,a2
      w.s.low = ((UWtype) uu.s.low >> b) | carries;
    9c98:	00c55533          	srl	a0,a0,a2
      const UWtype carries = (UWtype) uu.s.high << bm;
    9c9c:	00f595b3          	sll	a1,a1,a5
      w.s.low = ((UWtype) uu.s.low >> b) | carries;
    9ca0:	00a5e533          	or	a0,a1,a0
    9ca4:	fe1ff06f          	j	9c84 <__lshrdi3+0x18>

00009ca8 <__ashldi3>:
  if (b == 0)
    9ca8:	00060e63          	beqz	a2,9cc4 <__ashldi3+0x1c>
  if (bm <= 0)
    9cac:	01f00793          	li	a5,31
    9cb0:	00c7dc63          	bge	a5,a2,9cc8 <__ashldi3+0x20>
      w.s.high = (UWtype) uu.s.low << -bm;
    9cb4:	fe060613          	addi	a2,a2,-32
    9cb8:	00c515b3          	sll	a1,a0,a2
    9cbc:	00000713          	li	a4,0
  return w.ll;
    9cc0:	00070513          	mv	a0,a4
}
    9cc4:	00008067          	ret
  const shift_count_type bm = W_TYPE_SIZE - b;
    9cc8:	02000793          	li	a5,32
    9ccc:	40c787b3          	sub	a5,a5,a2
      w.s.low = (UWtype) uu.s.low << b;
    9cd0:	00c51733          	sll	a4,a0,a2
      w.s.high = ((UWtype) uu.s.high << b) | carries;
    9cd4:	00c595b3          	sll	a1,a1,a2
      const UWtype carries = (UWtype) uu.s.low >> bm;
    9cd8:	00f55533          	srl	a0,a0,a5
      w.s.high = ((UWtype) uu.s.high << b) | carries;
    9cdc:	00b565b3          	or	a1,a0,a1
    9ce0:	fe1ff06f          	j	9cc0 <__ashldi3+0x18>

00009ce4 <__clzsi2>:
  count_leading_zeros (ret, x);
    9ce4:	000107b7          	lui	a5,0x10
    9ce8:	02f57a63          	bgeu	a0,a5,9d1c <__clzsi2+0x38>
    9cec:	10053793          	sltiu	a5,a0,256
    9cf0:	0017b793          	seqz	a5,a5
    9cf4:	00379793          	slli	a5,a5,0x3
    9cf8:	0000b737          	lui	a4,0xb
    9cfc:	00f55533          	srl	a0,a0,a5
    9d00:	ea870713          	addi	a4,a4,-344 # aea8 <__clz_tab>
    9d04:	00a70733          	add	a4,a4,a0
    9d08:	00074503          	lbu	a0,0(a4)
    9d0c:	02000693          	li	a3,32
    9d10:	40f686b3          	sub	a3,a3,a5
}
    9d14:	40a68533          	sub	a0,a3,a0
    9d18:	00008067          	ret
  count_leading_zeros (ret, x);
    9d1c:	01000737          	lui	a4,0x1000
    9d20:	01800793          	li	a5,24
    9d24:	fce57ae3          	bgeu	a0,a4,9cf8 <__clzsi2+0x14>
    9d28:	01000793          	li	a5,16
    9d2c:	fcdff06f          	j	9cf8 <__clzsi2+0x14>
