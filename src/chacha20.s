	.file	"chacha20.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zbb1p0_zbkb1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (g04696df09) version 14.2.0 (riscv64-unknown-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mcpu=xiangshan-nanhu -mtune=xiangshan-nanhu -mabi=lp64d -misa-spec=20191213 -mtls-dialect=trad -march=rv64imafdc_zicsr_zifencei_zbb_zbkb -O3 -std=c17 -ffreestanding -fno-stack-protector
	.text
	.align	1
	.globl	chacha20
	.type	chacha20, @function
chacha20:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-176	#,,
	.cfi_def_cfa_offset 176
	andi	a5,a1,7	#, andmask_104, input
	sd	s0,168(sp)	#,
	sd	s1,160(sp)	#,
	sd	s2,152(sp)	#,
	sd	s3,144(sp)	#,
	sd	s4,136(sp)	#,
	sd	s5,128(sp)	#,
	sd	s6,120(sp)	#,
	sd	s7,112(sp)	#,
	sd	s8,104(sp)	#,
	sd	s9,96(sp)	#,
	sd	s10,88(sp)	#,
	sd	s11,80(sp)	#,
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	.cfi_offset 20, -40
	.cfi_offset 21, -48
	.cfi_offset 22, -56
	.cfi_offset 23, -64
	.cfi_offset 24, -72
	.cfi_offset 25, -80
	.cfi_offset 26, -88
	.cfi_offset 27, -96
	bne	a5,zero,.L2	#, andmask_104,,
# src/chacha20.c:40:     x[i] = input[i];
	ld	t3,0(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D)], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D)]
	ld	t1,8(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 8B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 8B]
	ld	a7,16(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 16B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 16B]
	ld	a6,24(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 24B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 24B]
	ld	a2,32(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 32B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 32B]
	ld	a3,40(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 40B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 40B]
	ld	a4,48(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 48B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 48B]
	ld	a5,56(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 56B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 56B]
	sd	t3,16(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D)], MEM <vector(2) unsigned int> [(unsigned int *)&x]
	sd	t1,24(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 8B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 8B]
	lw	s0,0(a1)		# *input_99(D), *input_99(D)
	sd	a7,32(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 16B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 16B]
	sd	a6,40(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 24B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 24B]
	sd	a2,48(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 32B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 32B]
	sd	a3,56(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 40B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 40B]
	sd	a4,64(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 48B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 48B]
	sd	a5,72(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 56B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 56B]
	sd	s0,8(sp)	# *input_99(D), %sfp
.L3:
	lw	s2,16(sp)		# x_I_lsm.6, x[0]
	lw	t3,32(sp)		# x_I_lsm.7, x[4]
# src/chacha20.c:36: void chacha20(chacha_buf *output, const u32 input[16]) {
	li	s6,10		# ivtmp_108,
	lw	s9,64(sp)		# x_I_lsm.8, x[12]
	lw	t0,48(sp)		# x_I_lsm.9, x[8]
	lw	s1,20(sp)		# x_I_lsm.10, x[1]
	lw	s5,36(sp)		# x_I_lsm.11, x[5]
	lw	s8,68(sp)		# x_I_lsm.12, x[13]
	lw	t6,52(sp)		# x_I_lsm.13, x[9]
	lw	s0,24(sp)		# x_I_lsm.14, x[2]
	lw	s4,40(sp)		# x_I_lsm.15, x[6]
	lw	s10,72(sp)		# x_I_lsm.16, x[14]
	lw	t5,56(sp)		# x_I_lsm.17, x[10]
	lw	t2,28(sp)		# x_I_lsm.18, x[3]
	lw	s3,44(sp)		# x_I_lsm.19, x[7]
	lw	s7,76(sp)		# x_I_lsm.20, x[15]
	lw	t4,60(sp)		# x_I_lsm.21, x[11]
.L4:
# src/chacha20.c:44:     QUARTERROUND(0, 4, 8, 12);
	addw	s2,t3,s2	# x_I_lsm.6, tmp317, x_I_lsm.7
	xor	a2,s2,s9	# x_I_lsm.8, tmp321, tmp317
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,16	# result, tmp321,
# 0 "" 2
# src/chacha20.c:44:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	t0,a2,t0	# x_I_lsm.9, tmp323, result
	xor	t3,t0,t3	# x_I_lsm.7, tmp327, tmp323
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,20	# result, tmp327,
# 0 "" 2
# src/chacha20.c:44:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s2,s2,t3	# result, tmp329, tmp317
	xor	a2,s2,a2	# result, tmp333, tmp329
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,24	# result, tmp333,
# 0 "" 2
# src/chacha20.c:44:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	t0,t0,a2	# result, tmp335, tmp323
	xor	t3,t0,t3	# result, tmp339, tmp335
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,25	# result, tmp339,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s5,s1	# x_I_lsm.10, tmp341, x_I_lsm.11
	xor	a3,s1,s8	# x_I_lsm.12, tmp345, tmp341
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp345,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	t6,t6,a3	# result, tmp347, x_I_lsm.13
	xor	t1,t6,s5	# x_I_lsm.11, tmp351, tmp347
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,20	# result, tmp351,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t1	# result, tmp353, tmp341
	xor	a3,s1,a3	# result, tmp357, tmp353
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp357,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	t6,t6,a3	# result, tmp359, tmp347
	xor	t1,t6,t1	# result, tmp363, tmp359
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,25	# result, tmp363,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	s0,s0,s4	# x_I_lsm.15, tmp365, x_I_lsm.14
	xor	a4,s0,s10	# x_I_lsm.16, tmp369, tmp365
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp369,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t5,a4,t5	# x_I_lsm.17, tmp371, result
	xor	a7,t5,s4	# x_I_lsm.15, tmp375, tmp371
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp375,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	s0,s0,a7	# result, tmp377, tmp365
	xor	a4,s0,a4	# result, tmp381, tmp377
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp381,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t5,t5,a4	# result, tmp383, tmp371
	xor	a7,t5,a7	# result, tmp387, tmp383
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp387,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	t2,s3,t2	# x_I_lsm.18, tmp389, x_I_lsm.19
	xor	a5,t2,s7	# x_I_lsm.20, tmp393, tmp389
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp393,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	t4,a5,t4	# x_I_lsm.21, tmp395, result
	xor	a6,t4,s3	# x_I_lsm.19, tmp399, tmp395
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a6,a6,20	# result, tmp399,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	t2,t2,a6	# result, tmp401, tmp389
	xor	a5,t2,a5	# result, tmp405, tmp401
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp405,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	t4,t4,a5	# result, tmp407, tmp395
	xor	a6,t4,a6	# result, tmp411, tmp407
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a6,a6,25	# result, tmp411,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s2,s2,t1	# result, tmp413, tmp329
	xor	a5,s2,a5	# result, tmp417, tmp413
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp417,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t5,t5,a5	# result, tmp419, tmp383
	xor	t1,t5,t1	# result, tmp423, tmp419
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,20	# result, tmp423,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s2,s2,t1	# result, x_I_lsm.6, tmp413
	xor	a5,s2,a5	# result, tmp429, x_I_lsm.6
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp429,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t5,t5,a5	# result, x_I_lsm.17, tmp419
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	s7,a5	# x_I_lsm.20, result
# src/chacha20.c:48:     QUARTERROUND(0, 5, 10, 15);
	xor	t1,t5,t1	# result, tmp435, x_I_lsm.17
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,25	# result, tmp435,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s1,s1,a7	# result, tmp437, tmp353
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	s5,t1	# x_I_lsm.11, result
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s1,a2	# result, tmp441, tmp437
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,16	# result, tmp441,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	t4,t4,a2	# result, tmp443, tmp407
	xor	a7,t4,a7	# result, tmp447, tmp443
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp447,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s1,s1,a7	# result, x_I_lsm.10, tmp437
	xor	a2,s1,a2	# result, tmp453, x_I_lsm.10
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,24	# result, tmp453,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	t4,t4,a2	# result, x_I_lsm.21, tmp443
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	s9,a2	# x_I_lsm.8, result
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
	xor	a7,t4,a7	# result, tmp459, x_I_lsm.21
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp459,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s0,s0,a6	# result, tmp461, tmp377
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	s4,a7	# x_I_lsm.15, result
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
	xor	a3,s0,a3	# result, tmp465, tmp461
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp465,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t0,t0,a3	# result, tmp467, tmp335
	xor	a6,t0,a6	# result, tmp471, tmp467
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a6,a6,20	# result, tmp471,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s0,s0,a6	# result, x_I_lsm.14, tmp461
	xor	a3,s0,a3	# result, tmp477, x_I_lsm.14
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp477,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t0,t0,a3	# result, x_I_lsm.9, tmp467
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	s8,a3	# x_I_lsm.12, result
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
	xor	a6,t0,a6	# result, tmp483, x_I_lsm.9
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a6,a6,25	# result, tmp483,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	t2,t2,t3	# result, tmp485, tmp401
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	s3,a6	# x_I_lsm.19, result
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,t2,a4	# result, tmp489, tmp485
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp489,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	t6,t6,a4	# result, tmp491, tmp359
	xor	t3,t6,t3	# result, tmp495, tmp491
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,20	# result, tmp495,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	t2,t2,t3	# result, x_I_lsm.18, tmp485
	xor	a4,t2,a4	# result, tmp501, x_I_lsm.18
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp501,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	t6,t6,a4	# result, x_I_lsm.13, tmp491
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	s10,a4	# x_I_lsm.16, result
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
	xor	t3,t6,t3	# result, tmp507, x_I_lsm.13
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	s11,t3,25	# result, tmp507,
# 0 "" 2
# src/chacha20.c:43:   for (int i = 20; i > 0; i -= 2) {
#NO_APP
	addiw	s6,s6,-1	#, ivtmp_108, ivtmp_108
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	t3,s11	# x_I_lsm.7, result
# src/chacha20.c:43:   for (int i = 20; i > 0; i -= 2) {
	bne	s6,zero,.L4	#, ivtmp_108,,
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	ld	t3,8(sp)		# *input_99(D), %sfp
	addw	t3,t3,s2	# x_I_lsm.6, tmp513, *input_99(D)
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	t3,0(a0)	# tmp513, output_100(D)->u[0]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	t3,4(a1)		# MEM[(const u32 *)input_99(D) + 4B], MEM[(const u32 *)input_99(D) + 4B]
	addw	t3,t3,s1	# x_I_lsm.10, tmp517, MEM[(const u32 *)input_99(D) + 4B]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	t3,4(a0)	# tmp517, output_100(D)->u[1]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	t3,8(a1)		# MEM[(const u32 *)input_99(D) + 8B], MEM[(const u32 *)input_99(D) + 8B]
	addw	t3,t3,s0	# x_I_lsm.14, tmp521, MEM[(const u32 *)input_99(D) + 8B]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	t3,8(a0)	# tmp521, output_100(D)->u[2]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	t3,12(a1)		# MEM[(const u32 *)input_99(D) + 12B], MEM[(const u32 *)input_99(D) + 12B]
	addw	t3,t3,t2	# x_I_lsm.18, tmp525, MEM[(const u32 *)input_99(D) + 12B]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	t3,12(a0)	# tmp525, output_100(D)->u[3]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	t3,16(a1)		# MEM[(const u32 *)input_99(D) + 16B], MEM[(const u32 *)input_99(D) + 16B]
	addw	s11,s11,t3	# MEM[(const u32 *)input_99(D) + 16B], tmp529, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	s11,16(a0)	# tmp529, output_100(D)->u[4]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	t3,20(a1)		# MEM[(const u32 *)input_99(D) + 20B], MEM[(const u32 *)input_99(D) + 20B]
	addw	t1,t1,t3	# MEM[(const u32 *)input_99(D) + 20B], tmp533, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	t1,20(a0)	# tmp533, output_100(D)->u[5]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	t1,24(a1)		# MEM[(const u32 *)input_99(D) + 24B], MEM[(const u32 *)input_99(D) + 24B]
	addw	a7,a7,t1	# MEM[(const u32 *)input_99(D) + 24B], tmp537, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a7,24(a0)	# tmp537, output_100(D)->u[6]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a7,28(a1)		# MEM[(const u32 *)input_99(D) + 28B], MEM[(const u32 *)input_99(D) + 28B]
	addw	a6,a6,a7	# MEM[(const u32 *)input_99(D) + 28B], tmp541, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a6,28(a0)	# tmp541, output_100(D)->u[7]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a6,32(a1)		# MEM[(const u32 *)input_99(D) + 32B], MEM[(const u32 *)input_99(D) + 32B]
	addw	a6,a6,t0	# x_I_lsm.9, tmp545, MEM[(const u32 *)input_99(D) + 32B]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a6,32(a0)	# tmp545, output_100(D)->u[8]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a6,36(a1)		# MEM[(const u32 *)input_99(D) + 36B], MEM[(const u32 *)input_99(D) + 36B]
	addw	a6,a6,t6	# x_I_lsm.13, tmp549, MEM[(const u32 *)input_99(D) + 36B]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a6,36(a0)	# tmp549, output_100(D)->u[9]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a6,40(a1)		# MEM[(const u32 *)input_99(D) + 40B], MEM[(const u32 *)input_99(D) + 40B]
	addw	a6,a6,t5	# x_I_lsm.17, tmp553, MEM[(const u32 *)input_99(D) + 40B]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a6,40(a0)	# tmp553, output_100(D)->u[10]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a6,44(a1)		# MEM[(const u32 *)input_99(D) + 44B], MEM[(const u32 *)input_99(D) + 44B]
	addw	a6,a6,t4	# x_I_lsm.21, tmp557, MEM[(const u32 *)input_99(D) + 44B]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a6,44(a0)	# tmp557, output_100(D)->u[11]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a6,48(a1)		# MEM[(const u32 *)input_99(D) + 48B], MEM[(const u32 *)input_99(D) + 48B]
	addw	a2,a2,a6	# MEM[(const u32 *)input_99(D) + 48B], tmp561, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a2,48(a0)	# tmp561, output_100(D)->u[12]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a2,52(a1)		# MEM[(const u32 *)input_99(D) + 52B], MEM[(const u32 *)input_99(D) + 52B]
	addw	a3,a3,a2	# MEM[(const u32 *)input_99(D) + 52B], tmp565, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a3,52(a0)	# tmp565, output_100(D)->u[13]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a3,56(a1)		# MEM[(const u32 *)input_99(D) + 56B], MEM[(const u32 *)input_99(D) + 56B]
	addw	a4,a4,a3	# MEM[(const u32 *)input_99(D) + 56B], tmp569, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a4,56(a0)	# tmp569, output_100(D)->u[14]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a4,60(a1)		# MEM[(const u32 *)input_99(D) + 60B], MEM[(const u32 *)input_99(D) + 60B]
	addw	a5,a5,a4	# MEM[(const u32 *)input_99(D) + 60B], tmp573, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a5,60(a0)	# tmp573, output_100(D)->u[15]
# src/chacha20.c:57: }
	ld	s0,168(sp)		#,
	.cfi_remember_state
	.cfi_restore 8
	ld	s1,160(sp)		#,
	.cfi_restore 9
	ld	s2,152(sp)		#,
	.cfi_restore 18
	ld	s3,144(sp)		#,
	.cfi_restore 19
	ld	s4,136(sp)		#,
	.cfi_restore 20
	ld	s5,128(sp)		#,
	.cfi_restore 21
	ld	s6,120(sp)		#,
	.cfi_restore 22
	ld	s7,112(sp)		#,
	.cfi_restore 23
	ld	s8,104(sp)		#,
	.cfi_restore 24
	ld	s9,96(sp)		#,
	.cfi_restore 25
	ld	s10,88(sp)		#,
	.cfi_restore 26
	ld	s11,80(sp)		#,
	.cfi_restore 27
	addi	sp,sp,176	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
.L2:
	.cfi_restore_state
# src/chacha20.c:40:     x[i] = input[i];
	lw	a5,0(a1)		# *input_99(D), *input_99(D)
	lw	t1,4(a1)		# MEM[(const u32 *)input_99(D) + 4B], MEM[(const u32 *)input_99(D) + 4B]
	lw	a7,8(a1)		# MEM[(const u32 *)input_99(D) + 8B], MEM[(const u32 *)input_99(D) + 8B]
	lw	a6,12(a1)		# MEM[(const u32 *)input_99(D) + 12B], MEM[(const u32 *)input_99(D) + 12B]
	lw	a2,16(a1)		# MEM[(const u32 *)input_99(D) + 16B], MEM[(const u32 *)input_99(D) + 16B]
	lw	a3,20(a1)		# MEM[(const u32 *)input_99(D) + 20B], MEM[(const u32 *)input_99(D) + 20B]
	lw	a4,24(a1)		# MEM[(const u32 *)input_99(D) + 24B], MEM[(const u32 *)input_99(D) + 24B]
	mv	s0,a5	# *input_99(D), *input_99(D)
	sd	a5,8(sp)	# *input_99(D), %sfp
	lw	a5,28(a1)		# MEM[(const u32 *)input_99(D) + 28B], MEM[(const u32 *)input_99(D) + 28B]
	sw	t1,20(sp)	# MEM[(const u32 *)input_99(D) + 4B], x[1]
	lw	t3,32(a1)		# MEM[(const u32 *)input_99(D) + 32B], MEM[(const u32 *)input_99(D) + 32B]
	lw	t1,36(a1)		# MEM[(const u32 *)input_99(D) + 36B], MEM[(const u32 *)input_99(D) + 36B]
	sw	a7,24(sp)	# MEM[(const u32 *)input_99(D) + 8B], x[2]
	sw	a6,28(sp)	# MEM[(const u32 *)input_99(D) + 12B], x[3]
	lw	a7,40(a1)		# MEM[(const u32 *)input_99(D) + 40B], MEM[(const u32 *)input_99(D) + 40B]
	lw	a6,44(a1)		# MEM[(const u32 *)input_99(D) + 44B], MEM[(const u32 *)input_99(D) + 44B]
	sw	a2,32(sp)	# MEM[(const u32 *)input_99(D) + 16B], x[4]
	sw	a3,36(sp)	# MEM[(const u32 *)input_99(D) + 20B], x[5]
	lw	a2,48(a1)		# MEM[(const u32 *)input_99(D) + 48B], MEM[(const u32 *)input_99(D) + 48B]
	lw	a3,52(a1)		# MEM[(const u32 *)input_99(D) + 52B], MEM[(const u32 *)input_99(D) + 52B]
	sw	a4,40(sp)	# MEM[(const u32 *)input_99(D) + 24B], x[6]
	sw	a5,44(sp)	# MEM[(const u32 *)input_99(D) + 28B], x[7]
	lw	a4,56(a1)		# MEM[(const u32 *)input_99(D) + 56B], MEM[(const u32 *)input_99(D) + 56B]
	lw	a5,60(a1)		# MEM[(const u32 *)input_99(D) + 60B], MEM[(const u32 *)input_99(D) + 60B]
	sw	s0,16(sp)	# *input_99(D), x[0]
	sw	t3,48(sp)	# MEM[(const u32 *)input_99(D) + 32B], x[8]
	sw	t1,52(sp)	# MEM[(const u32 *)input_99(D) + 36B], x[9]
	sw	a7,56(sp)	# MEM[(const u32 *)input_99(D) + 40B], x[10]
	sw	a6,60(sp)	# MEM[(const u32 *)input_99(D) + 44B], x[11]
	sw	a2,64(sp)	# MEM[(const u32 *)input_99(D) + 48B], x[12]
	sw	a3,68(sp)	# MEM[(const u32 *)input_99(D) + 52B], x[13]
	sw	a4,72(sp)	# MEM[(const u32 *)input_99(D) + 56B], x[14]
	sw	a5,76(sp)	# MEM[(const u32 *)input_99(D) + 60B], x[15]
	j	.L3		#
	.cfi_endproc
.LFE3:
	.size	chacha20, .-chacha20
	.ident	"GCC: (g04696df09) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
