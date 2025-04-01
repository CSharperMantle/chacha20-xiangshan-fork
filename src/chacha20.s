	.file	"chacha20.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zbb1p0_zbkb1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei_zbb_zbkb -O3 -std=c17 -ffreestanding -fno-stack-protector
	.text
	.align	1
	.globl	chacha20
	.type	chacha20, @function
chacha20:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-224	#,,
	.cfi_def_cfa_offset 224
	sd	s0,216(sp)	#,
	sd	s1,208(sp)	#,
	sd	s2,200(sp)	#,
	sd	s3,192(sp)	#,
	sd	s4,184(sp)	#,
	sd	s5,176(sp)	#,
	sd	s6,168(sp)	#,
	sd	s7,160(sp)	#,
	sd	s8,152(sp)	#,
	sd	s9,144(sp)	#,
	sd	s10,136(sp)	#,
	sd	s11,128(sp)	#,
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
	andi	a5,a1,7	#, tmp291, input
# src/chacha20.c:36: void chacha20(chacha_buf *output, const u32 input[16]) {
	sd	a0,48(sp)	# tmp534, %sfp
	bne	a5,zero,.L2	#, tmp291,,
# src/chacha20.c:40:     x[i] = input[i];
	ld	t1,8(a1)		# vect_vect__4.26_539.34, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 8B]
	ld	a7,16(a1)		# vect_vect__4.26_539.35, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 16B]
# src/chacha20.c:40:     x[i] = input[i];
	ld	a6,0(a1)		# MEM <vector(1) long unsigned int> [(const u32 *)input_99(D)], MEM <vector(1) long unsigned int> [(const u32 *)input_99(D)]
# src/chacha20.c:40:     x[i] = input[i];
	ld	a0,24(a1)		# vect_vect__4.26_539.36, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 24B]
	ld	a2,32(a1)		# vect_vect__4.26_539.37, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 32B]
	ld	a3,40(a1)		# vect_vect__4.26_539.38, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 40B]
	ld	a4,48(a1)		# vect_vect__4.26_539.39, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 48B]
	ld	a5,56(a1)		# vect_vect__4.26_539.40, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 56B]
# src/chacha20.c:40:     x[i] = input[i];
	sd	t1,72(sp)	# vect_vect__4.26_539.34, MEM <vector(1) long unsigned int> [(unsigned int *)&x + 8B]
	sd	a7,80(sp)	# vect_vect__4.26_539.35, MEM <vector(1) long unsigned int> [(unsigned int *)&x + 16B]
	sd	a6,64(sp)	# MEM <vector(1) long unsigned int> [(const u32 *)input_99(D)], MEM <vector(1) long unsigned int> [(unsigned int *)&x]
.L7:
	sd	a5,120(sp)	# tmp320,
	lw	a5,64(sp)		# x_I_lsm.6, x[0]
	sd	a4,112(sp)	# tmp316,
	sd	a3,104(sp)	# tmp312,
	sd	a5,0(sp)	# x_I_lsm.6, %sfp
	lw	a5,112(sp)		# x_I_lsm.8, x[12]
	sd	a2,96(sp)	# tmp308,
	sd	a0,88(sp)	# tmp304,
	sd	a5,40(sp)	# x_I_lsm.8, %sfp
	lw	a5,68(sp)		# x_I_lsm.10, x[1]
	lw	a4,124(sp)		# x_I_lsm.20, x[15]
	lw	a3,108(sp)		# x_I_lsm.21, x[11]
	sd	a5,16(sp)	# x_I_lsm.10, %sfp
	lw	a5,72(sp)		# x_I_lsm.14, x[2]
	lw	t5,80(sp)		# x_I_lsm.7, x[4]
	lw	s5,96(sp)		# x_I_lsm.9, x[8]
	sd	a5,32(sp)	# x_I_lsm.14, %sfp
	lw	a5,104(sp)		# x_I_lsm.17, x[10]
	lw	t3,84(sp)		# x_I_lsm.11, x[5]
	lw	t1,116(sp)		# x_I_lsm.12, x[13]
	sd	a5,8(sp)	# x_I_lsm.17, %sfp
	lw	s3,100(sp)		# x_I_lsm.13, x[9]
	lw	a0,88(sp)		# x_I_lsm.15, x[6]
	lw	a2,120(sp)		# x_I_lsm.16, x[14]
	lw	s1,76(sp)		# x_I_lsm.18, x[3]
	lw	a5,92(sp)		# x_I_lsm.19, x[7]
# src/chacha20.c:36: void chacha20(chacha_buf *output, const u32 input[16]) {
	sd	a1,56(sp)	# input, %sfp
	sd	a3,24(sp)	# x_I_lsm.21, %sfp
	li	s11,10		# ivtmp_108,
	mv	a1,a4	# x_I_lsm.20, x_I_lsm.20
.L4:
# src/chacha20.c:44:     QUARTERROUND(0, 4, 8, 12);
	ld	a4,0(sp)		# x_I_lsm.6, %sfp
	addw	s10,t5,a4	# x_I_lsm.6, tmp325, x_I_lsm.7
	ld	a4,40(sp)		# x_I_lsm.8, %sfp
	xor	t2,a4,s10	# tmp325, tmp329, x_I_lsm.8
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp329,
# 0 "" 2
# src/chacha20.c:44:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s4,t2,s5	# x_I_lsm.9, tmp330, result
	xor	t6,t5,s4	# tmp330, tmp334, x_I_lsm.7
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t6,t6,20	# result, tmp334,
# 0 "" 2
# src/chacha20.c:44:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s10,s10,t6	# result, tmp335, tmp325
	xor	t2,s10,t2	# result, tmp339, tmp335
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp339,
# 0 "" 2
# src/chacha20.c:44:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s4,s4,t2	# result, tmp340, tmp330
	xor	t6,s4,t6	# result, tmp344, tmp340
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t6,t6,25	# result, tmp344,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	ld	a4,16(sp)		# x_I_lsm.10, %sfp
	addw	s9,t3,a4	# x_I_lsm.10, tmp345, x_I_lsm.11
	xor	a7,t1,s9	# tmp345, tmp349, x_I_lsm.12
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,16	# result, tmp349,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s2,s3,a7	# result, tmp350, x_I_lsm.13
	xor	t4,t3,s2	# tmp350, tmp354, x_I_lsm.11
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,20	# result, tmp354,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s9,s9,t4	# result, tmp355, tmp345
	xor	a7,s9,a7	# result, tmp359, tmp355
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,24	# result, tmp359,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s2,s2,a7	# result, tmp360, tmp350
	xor	t4,s2,t4	# result, tmp364, tmp360
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp364,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	ld	a4,32(sp)		# x_I_lsm.14, %sfp
	addw	s8,a4,a0	# x_I_lsm.15, tmp365, x_I_lsm.14
	xor	a3,a2,s8	# tmp365, tmp369, x_I_lsm.16
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp369,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	ld	a4,8(sp)		# x_I_lsm.17, %sfp
	addw	s7,a3,a4	# x_I_lsm.17, tmp370, result
	xor	a6,a0,s7	# tmp370, tmp374, x_I_lsm.15
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a6,a6,20	# result, tmp374,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	s8,s8,a6	# result, tmp375, tmp365
	xor	a3,s8,a3	# result, tmp379, tmp375
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp379,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	s7,s7,a3	# result, tmp380, tmp370
	xor	a6,s7,a6	# result, tmp384, tmp380
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a6,a6,25	# result, tmp384,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,a5,s1	# x_I_lsm.18, tmp385, x_I_lsm.19
	xor	t0,a1,s0	# tmp385, tmp389, x_I_lsm.20
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t0,t0,16	# result, tmp389,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	ld	a4,24(sp)		# x_I_lsm.21, %sfp
	addw	s6,t0,a4	# x_I_lsm.21, tmp390, result
	xor	a4,a5,s6	# tmp390, tmp394, x_I_lsm.19
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,20	# result, tmp394,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,s0,a4	# result, tmp395, tmp385
	xor	t0,s0,t0	# result, tmp399, tmp395
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t0,t0,24	# result, tmp399,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s6,s6,t0	# result, tmp400, tmp390
	xor	a4,s6,a4	# result, tmp404, tmp400
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,25	# result, tmp404,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s10,s10,t4	# result, tmp405, tmp335
	xor	t0,s10,t0	# result, tmp409, tmp405
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t0,t0,16	# result, tmp409,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s7,s7,t0	# result, tmp410, tmp380
	xor	t4,s7,t4	# result, tmp414, tmp410
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,20	# result, tmp414,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s10,s10,t4	# result, tmp415, tmp405
	sext.w	a5,s10	# x_I_lsm.6, tmp415
	sd	a5,0(sp)	# x_I_lsm.6, %sfp
	xor	t0,s10,t0	# result, tmp419, tmp415
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t0,t0,24	# result, tmp419,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s7,s7,t0	# result, tmp420, tmp410
	sext.w	a5,s7	# x_I_lsm.17, tmp420
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	a1,t0	# x_I_lsm.20, result
# src/chacha20.c:48:     QUARTERROUND(0, 5, 10, 15);
	sd	a5,8(sp)	# x_I_lsm.17, %sfp
	xor	t4,s7,t4	# result, tmp424, tmp420
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp424,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s9,s9,a6	# result, tmp425, tmp355
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	t3,t4	# x_I_lsm.11, result
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
	xor	t2,s9,t2	# result, tmp429, tmp425
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp429,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s6,s6,t2	# result, tmp430, tmp400
	xor	a6,s6,a6	# result, tmp434, tmp430
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a6,a6,20	# result, tmp434,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s9,s9,a6	# result, tmp435, tmp425
	sext.w	a5,s9	# x_I_lsm.10, tmp435
	sd	a5,16(sp)	# x_I_lsm.10, %sfp
	xor	t2,s9,t2	# result, tmp439, tmp435
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp439,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s6,s6,t2	# result, tmp440, tmp430
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	a5,t2	# x_I_lsm.8, result
	sd	a5,40(sp)	# x_I_lsm.8, %sfp
# src/chacha20.c:49:     QUARTERROUND(1, 6, 11, 12);
	sext.w	a5,s6	# x_I_lsm.21, tmp440
	sd	a5,24(sp)	# x_I_lsm.21, %sfp
	xor	a6,s6,a6	# result, tmp444, tmp440
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a6,a6,25	# result, tmp444,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s8,s8,a4	# result, tmp445, tmp375
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	a0,a6	# x_I_lsm.15, result
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,s8,a7	# result, tmp449, tmp445
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,16	# result, tmp449,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s4,s4,a7	# result, tmp450, tmp340
	xor	a4,s4,a4	# result, tmp454, tmp450
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,20	# result, tmp454,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s8,s8,a4	# result, tmp455, tmp445
	sext.w	a5,s8	# x_I_lsm.14, tmp455
	sd	a5,32(sp)	# x_I_lsm.14, %sfp
	xor	a7,s8,a7	# result, tmp459, tmp455
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,24	# result, tmp459,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s4,s4,a7	# result, tmp460, tmp450
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	t1,a7	# x_I_lsm.12, result
# src/chacha20.c:50:     QUARTERROUND(2, 7, 8, 13);
	sext.w	s5,s4	# x_I_lsm.9, tmp460
	xor	a4,s4,a4	# result, tmp464, tmp460
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,25	# result, tmp464,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s0,s0,t6	# result, tmp465, tmp395
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	a5,a4	# x_I_lsm.19, result
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s0,a3	# result, tmp469, tmp465
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp469,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s2,s2,a3	# result, tmp470, tmp360
	xor	t6,s2,t6	# result, tmp474, tmp470
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t6,t6,20	# result, tmp474,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s0,s0,t6	# result, tmp475, tmp465
	sext.w	s1,s0	# x_I_lsm.18, tmp475
	xor	a3,s0,a3	# result, tmp479, tmp475
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp479,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s2,s2,a3	# result, tmp480, tmp470
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	a2,a3	# x_I_lsm.16, result
# src/chacha20.c:51:     QUARTERROUND(3, 4, 9, 14);
	sext.w	s3,s2	# x_I_lsm.13, tmp480
	xor	t6,s2,t6	# result, tmp484, tmp480
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t6,t6,25	# result, tmp484,
# 0 "" 2
# src/chacha20.c:43:   for (int i = 20; i > 0; i -= 2) {
#NO_APP
	addiw	s11,s11,-1	#, ivtmp_108, ivtmp_108
# src/chacha20.c:17:   __asm__ volatile("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
	sext.w	t5,t6	# x_I_lsm.7, result
# src/chacha20.c:43:   for (int i = 20; i > 0; i -= 2) {
	bne	s11,zero,.L4	#, ivtmp_108,,
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	ld	a1,56(sp)		# input, %sfp
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	ld	a2,48(sp)		# output, %sfp
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,0(a1)		# *input_99(D), *input_99(D)
	addw	s10,s10,a5	# *input_99(D), tmp486, tmp415
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	s10,0(a2)	# tmp486, output_100(D)->u[0]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,4(a1)		# MEM[(const u32 *)input_99(D) + 4B], MEM[(const u32 *)input_99(D) + 4B]
	addw	s9,s9,a5	# MEM[(const u32 *)input_99(D) + 4B], tmp489, tmp435
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	s9,4(a2)	# tmp489, output_100(D)->u[1]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,8(a1)		# MEM[(const u32 *)input_99(D) + 8B], MEM[(const u32 *)input_99(D) + 8B]
	addw	s8,s8,a5	# MEM[(const u32 *)input_99(D) + 8B], tmp492, tmp455
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	s8,8(a2)	# tmp492, output_100(D)->u[2]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,12(a1)		# MEM[(const u32 *)input_99(D) + 12B], MEM[(const u32 *)input_99(D) + 12B]
	addw	s0,s0,a5	# MEM[(const u32 *)input_99(D) + 12B], tmp495, tmp475
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	s0,12(a2)	# tmp495, output_100(D)->u[3]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,16(a1)		# MEM[(const u32 *)input_99(D) + 16B], MEM[(const u32 *)input_99(D) + 16B]
	addw	t6,t6,a5	# MEM[(const u32 *)input_99(D) + 16B], tmp498, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	t6,16(a2)	# tmp498, output_100(D)->u[4]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,20(a1)		# MEM[(const u32 *)input_99(D) + 20B], MEM[(const u32 *)input_99(D) + 20B]
	addw	t4,t4,a5	# MEM[(const u32 *)input_99(D) + 20B], tmp501, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	t4,20(a2)	# tmp501, output_100(D)->u[5]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,24(a1)		# MEM[(const u32 *)input_99(D) + 24B], MEM[(const u32 *)input_99(D) + 24B]
	addw	a6,a6,a5	# MEM[(const u32 *)input_99(D) + 24B], tmp504, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a6,24(a2)	# tmp504, output_100(D)->u[6]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,28(a1)		# MEM[(const u32 *)input_99(D) + 28B], MEM[(const u32 *)input_99(D) + 28B]
	addw	a4,a4,a5	# MEM[(const u32 *)input_99(D) + 28B], tmp507, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a4,28(a2)	# tmp507, output_100(D)->u[7]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,32(a1)		# MEM[(const u32 *)input_99(D) + 32B], MEM[(const u32 *)input_99(D) + 32B]
	addw	s4,s4,a5	# MEM[(const u32 *)input_99(D) + 32B], tmp510, tmp460
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	s4,32(a2)	# tmp510, output_100(D)->u[8]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,36(a1)		# MEM[(const u32 *)input_99(D) + 36B], MEM[(const u32 *)input_99(D) + 36B]
	addw	s2,s2,a5	# MEM[(const u32 *)input_99(D) + 36B], tmp513, tmp480
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	s2,36(a2)	# tmp513, output_100(D)->u[9]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,40(a1)		# MEM[(const u32 *)input_99(D) + 40B], MEM[(const u32 *)input_99(D) + 40B]
	addw	s7,s7,a5	# MEM[(const u32 *)input_99(D) + 40B], tmp516, tmp420
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	s7,40(a2)	# tmp516, output_100(D)->u[10]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,44(a1)		# MEM[(const u32 *)input_99(D) + 44B], MEM[(const u32 *)input_99(D) + 44B]
	addw	s6,s6,a5	# MEM[(const u32 *)input_99(D) + 44B], tmp519, tmp440
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	s6,44(a2)	# tmp519, output_100(D)->u[11]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,48(a1)		# MEM[(const u32 *)input_99(D) + 48B], MEM[(const u32 *)input_99(D) + 48B]
	addw	t2,t2,a5	# MEM[(const u32 *)input_99(D) + 48B], tmp522, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	t2,48(a2)	# tmp522, output_100(D)->u[12]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,52(a1)		# MEM[(const u32 *)input_99(D) + 52B], MEM[(const u32 *)input_99(D) + 52B]
	addw	a7,a7,a5	# MEM[(const u32 *)input_99(D) + 52B], tmp525, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a7,52(a2)	# tmp525, output_100(D)->u[13]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,56(a1)		# MEM[(const u32 *)input_99(D) + 56B], MEM[(const u32 *)input_99(D) + 56B]
	addw	a3,a3,a5	# MEM[(const u32 *)input_99(D) + 56B], tmp528, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	a3,56(a2)	# tmp528, output_100(D)->u[14]
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	lw	a5,60(a1)		# MEM[(const u32 *)input_99(D) + 60B], MEM[(const u32 *)input_99(D) + 60B]
# src/chacha20.c:57: }
	ld	s0,216(sp)		#,
	.cfi_remember_state
	.cfi_restore 8
	ld	s1,208(sp)		#,
	.cfi_restore 9
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	addw	t0,t0,a5	# MEM[(const u32 *)input_99(D) + 60B], tmp531, result
# src/chacha20.c:55:     output->u[i] = x[i] + input[i];
	sw	t0,60(a2)	# tmp531, output_100(D)->u[15]
# src/chacha20.c:57: }
	ld	s2,200(sp)		#,
	.cfi_restore 18
	ld	s3,192(sp)		#,
	.cfi_restore 19
	ld	s4,184(sp)		#,
	.cfi_restore 20
	ld	s5,176(sp)		#,
	.cfi_restore 21
	ld	s6,168(sp)		#,
	.cfi_restore 22
	ld	s7,160(sp)		#,
	.cfi_restore 23
	ld	s8,152(sp)		#,
	.cfi_restore 24
	ld	s9,144(sp)		#,
	.cfi_restore 25
	ld	s10,136(sp)		#,
	.cfi_restore 26
	ld	s11,128(sp)		#,
	.cfi_restore 27
	addi	sp,sp,224	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
.L2:
	.cfi_restore_state
	lwu	a7,12(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 8B], MEM <long unsigned int> [(const u32 *)input_99(D) + 8B]
	lwu	a6,20(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 16B], MEM <long unsigned int> [(const u32 *)input_99(D) + 16B]
# src/chacha20.c:40:     x[i] = input[i];
	lwu	t1,4(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D)], MEM <long unsigned int> [(const u32 *)input_99(D)]
	lwu	a0,28(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 24B], MEM <long unsigned int> [(const u32 *)input_99(D) + 24B]
	lwu	a2,36(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 32B], MEM <long unsigned int> [(const u32 *)input_99(D) + 32B]
	lwu	a3,44(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 40B], MEM <long unsigned int> [(const u32 *)input_99(D) + 40B]
	lwu	a4,52(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 48B], MEM <long unsigned int> [(const u32 *)input_99(D) + 48B]
	lwu	a5,60(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 56B], MEM <long unsigned int> [(const u32 *)input_99(D) + 56B]
	lwu	s1,8(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 8B], MEM <long unsigned int> [(const u32 *)input_99(D) + 8B]
	lwu	s0,16(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 16B], MEM <long unsigned int> [(const u32 *)input_99(D) + 16B]
	lwu	t3,0(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D)], MEM <long unsigned int> [(const u32 *)input_99(D)]
	lwu	t2,24(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 24B], MEM <long unsigned int> [(const u32 *)input_99(D) + 24B]
	lwu	t0,32(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 32B], MEM <long unsigned int> [(const u32 *)input_99(D) + 32B]
	lwu	t6,40(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 40B], MEM <long unsigned int> [(const u32 *)input_99(D) + 40B]
	lwu	t5,48(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 48B], MEM <long unsigned int> [(const u32 *)input_99(D) + 48B]
	lwu	t4,56(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 56B], MEM <long unsigned int> [(const u32 *)input_99(D) + 56B]
	slli	a7,a7,32	#, tmp295, MEM <long unsigned int> [(const u32 *)input_99(D) + 8B]
	slli	a6,a6,32	#, tmp299, MEM <long unsigned int> [(const u32 *)input_99(D) + 16B]
	slli	t1,t1,32	#, tmp323, MEM <long unsigned int> [(const u32 *)input_99(D)]
	slli	a0,a0,32	#, tmp303, MEM <long unsigned int> [(const u32 *)input_99(D) + 24B]
	slli	a2,a2,32	#, tmp307, MEM <long unsigned int> [(const u32 *)input_99(D) + 32B]
	slli	a3,a3,32	#, tmp311, MEM <long unsigned int> [(const u32 *)input_99(D) + 40B]
	slli	a4,a4,32	#, tmp315, MEM <long unsigned int> [(const u32 *)input_99(D) + 48B]
	slli	a5,a5,32	#, tmp319, MEM <long unsigned int> [(const u32 *)input_99(D) + 56B]
	or	a7,a7,s1	# MEM <long unsigned int> [(const u32 *)input_99(D) + 8B], tmp296, tmp295
	or	a6,a6,s0	# MEM <long unsigned int> [(const u32 *)input_99(D) + 16B], tmp300, tmp299
	or	t1,t1,t3	# MEM <long unsigned int> [(const u32 *)input_99(D)], tmp324, tmp323
	or	a0,a0,t2	# MEM <long unsigned int> [(const u32 *)input_99(D) + 24B], tmp304, tmp303
	or	a2,a2,t0	# MEM <long unsigned int> [(const u32 *)input_99(D) + 32B], tmp308, tmp307
	or	a3,a3,t6	# MEM <long unsigned int> [(const u32 *)input_99(D) + 40B], tmp312, tmp311
	or	a4,a4,t5	# MEM <long unsigned int> [(const u32 *)input_99(D) + 48B], tmp316, tmp315
	or	a5,a5,t4	# MEM <long unsigned int> [(const u32 *)input_99(D) + 56B], tmp320, tmp319
	sd	t1,64(sp)	# tmp324, MEM <vector(2) unsigned int> [(unsigned int *)&x]
	sd	a7,72(sp)	# tmp296, MEM <vector(2) unsigned int> [(unsigned int *)&x + 8B]
	sd	a6,80(sp)	# tmp300, MEM <vector(2) unsigned int> [(unsigned int *)&x + 16B]
	j	.L7		#
	.cfi_endproc
.LFE3:
	.size	chacha20, .-chacha20
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
