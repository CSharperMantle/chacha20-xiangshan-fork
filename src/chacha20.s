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
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	andi	a5,a1,7	#, andmask_259, input
	sd	s0,120(sp)	#,
	sd	s1,112(sp)	#,
	sd	s2,104(sp)	#,
	sd	s3,96(sp)	#,
	sd	s4,88(sp)	#,
	sd	s5,80(sp)	#,
	sd	s6,72(sp)	#,
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	.cfi_offset 20, -40
	.cfi_offset 21, -48
	.cfi_offset 22, -56
	bne	a5,zero,.L2	#, andmask_259,,
# src/chacha20.c:40:     x[i] = input[i];
	ld	a6,24(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 24B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 24B]
	ld	t3,0(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D)], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D)]
	ld	t1,8(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 8B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 8B]
	ld	a7,16(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 16B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 16B]
	ld	a2,32(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 32B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 32B]
	ld	a3,40(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 40B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 40B]
	ld	a4,48(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 48B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 48B]
	ld	a5,56(a1)		# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 56B], MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 56B]
	sd	a6,24(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 24B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 24B]
	sd	t3,0(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D)], MEM <vector(2) unsigned int> [(unsigned int *)&x]
	lw	a6,0(a1)		# *input_99(D), *input_99(D)
	sd	t1,8(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 8B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 8B]
	sd	a7,16(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 16B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 16B]
	sd	a2,32(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 32B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 32B]
	sd	a3,40(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 40B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 40B]
	sd	a4,48(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 48B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 48B]
	sd	a5,56(sp)	# MEM <const vector(2) unsigned int> [(const u32 *)input_99(D) + 56B], MEM <vector(2) unsigned int> [(unsigned int *)&x + 56B]
.L3:
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	lw	a5,20(sp)		# _173, x[5]
	lw	s4,4(sp)		# x[1], x[1]
	lw	a2,52(sp)		# x[13], x[13]
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	lw	s1,36(sp)		# x[9], x[9]
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	lw	t4,16(sp)		# _157, x[4]
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	lw	a3,24(sp)		# _189, x[6]
	lw	t6,8(sp)		# x[2], x[2]
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	lw	a7,0(sp)		# x[0], x[0]
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	addw	s4,s4,a5	# _173, tmp1227, x[1]
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	lw	s5,28(sp)		# _205, x[7]
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	lw	t2,56(sp)		# x[14], x[14]
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	a2,a2,s4	# tmp1227, tmp1232, x[13]
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	lw	s0,12(sp)		# x[3], x[3]
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	lw	t1,48(sp)		# x[12], x[12]
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	lw	t0,40(sp)		# x[10], x[10]
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	lw	s6,32(sp)		# x[8], x[8]
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t6,t6,a3	# _189, tmp1256, x[2]
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	a7,a7,t4	# _157, tmp1198, x[0]
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	lw	a4,60(sp)		# x[15], x[15]
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	lw	s2,44(sp)		# x[11], x[11]
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	t2,t2,t6	# tmp1256, tmp1261, x[14]
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,16	# result, tmp1232,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,a2,s1	# x[9], tmp1236, result
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s0,s0,s5	# _205, tmp1285, x[3]
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	t1,t1,a7	# tmp1198, tmp1203, x[12]
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	a5,a5,s1	# tmp1236, tmp1240, _173
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a4,a4,s0	# tmp1285, tmp1290, x[15]
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,20	# result, tmp1240,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,s4,a5	# result, tmp1242, tmp1227
	xor	t3,s4,a2	# result, tmp1246, tmp1242
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,16	# result, tmp1203,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp1261,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s6,t1,s6	# x[8], tmp1207, result
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t2,t0	# x[10], tmp1265, result
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,24	# result, tmp1246,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t3	# result, tmp1248, tmp1236
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a2,t4,s6	# tmp1207, tmp1211, _157
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a3,a3,t0	# tmp1265, tmp1269, _189
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	a5,s1,a5	# result, tmp1252, tmp1248
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp1290,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp1269,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s2,a4,s2	# x[11], tmp1294, result
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t6,t6,a3	# result, tmp1271, tmp1256
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp1211,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	a7,a7,a2	# result, tmp1213, tmp1198
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	s5,s5,s2	# tmp1294, tmp1298, _205
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	t2,t6,t2	# result, tmp1275, tmp1271
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,a5,25	# result, tmp1252,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp1275,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s3,a7,t4	# result, tmp1312, tmp1213
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,a7,t1	# result, tmp1217, tmp1213
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,t2	# result, tmp1277, tmp1265
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	s5,s5,20	# result, tmp1298,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp1217,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,s0,s5	# result, tmp1300, tmp1285
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s6,s6,a5	# result, tmp1219, tmp1207
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a3,t0,a3	# result, tmp1281, tmp1277
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a4,s0,a4	# result, tmp1304, tmp1300
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a2,s6,a2	# result, tmp1223, tmp1219
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp1281,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp1304,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a3	# result, tmp1336, tmp1242
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s2,s2,a4	# result, tmp1306, tmp1294
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a4,s3,a4	# result, tmp1316, tmp1312
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp1223,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp1316,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s0,a2,s0	# tmp1300, tmp1384, result
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	t0,t0,a4	# result, tmp1318, tmp1277
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	s5,s2,s5	# result, tmp1310, tmp1306
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp1340, tmp1336
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	s5,s5,25	# result, tmp1310,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	xor	t4,t0,t4	# result, tmp1322, tmp1318
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	t6,t6,s5	# result, tmp1360, tmp1271
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	t2,s0,t2	# result, tmp1388, tmp1384
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,20	# result, tmp1322,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp1388,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s3,s3,t4	# result, tmp1324, tmp1312
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,t2	# result, tmp1390, tmp1248
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t3	# result, tmp1364, tmp1360
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp1340,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s2,s2,a5	# result, tmp1342, tmp1306
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a4,s3,a4	# result, tmp1328, tmp1324
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a2,s1,a2	# result, tmp1394, tmp1390
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a7,s2,a3	# result, tmp1346, tmp1342
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,a4,24	# result, tmp1328,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,16	# result, tmp1364,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,t1	# result, tmp1330, tmp1318
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	s6,s6,t3	# result, tmp1366, tmp1219
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp1346,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp1394,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a7	# result, tmp1348, tmp1336
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,s0,a2	# result, tmp1396, tmp1384
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a3,s6,s5	# result, tmp1370, tmp1366
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t4,t0,t4	# result, tmp1334, tmp1330
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,t2	# result, tmp1400, tmp1396
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp1352, tmp1348
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp1334,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp1352,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,t4,s4	# tmp1348, tmp1432, result
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp1354, tmp1342
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp1370,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp1400,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a3	# result, tmp1372, tmp1360
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a4	# result, tmp1402, tmp1390
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a7,s2,a7	# result, tmp1358, tmp1354
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t3	# result, tmp1376, tmp1372
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a2,s1,a2	# result, tmp1406, tmp1402
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp1358,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,24	# result, tmp1376,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,a7,t6	# tmp1372, tmp1456, result
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t3	# result, tmp1436, tmp1432
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	t3,s6,t3	# result, tmp1378, tmp1366
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp1436,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp1406,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t2	# result, tmp1438, tmp1402
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,a2	# result, tmp1408, tmp1324
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a3,t3,a3	# result, tmp1382, tmp1378
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp1460, tmp1456
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t4	# result, tmp1442, tmp1438
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp1412, tmp1408
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp1382,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp1460,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,a3,s0	# tmp1396, tmp1480, result
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp1462, tmp1330
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp1442,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp1412,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,s4,t5	# result, tmp1444, tmp1432
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s5,t3,a5	# result, tmp1414, tmp1378
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a7,t0,a7	# result, tmp1466, tmp1462
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t1,s0,t1	# result, tmp1484, tmp1480
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	s6,a7,20	# result, tmp1466,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	xor	a2,s5,a2	# result, tmp1418, tmp1414
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t6,t6,s6	# result, tmp1468, tmp1456
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t2	# result, tmp1448, tmp1444
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,16	# result, tmp1484,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp1448,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s2,s2,t1	# result, tmp1486, tmp1354
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	addw	s1,s1,t2	# result, tmp1450, tmp1438
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp1472, tmp1468
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a2,20	# result, tmp1418,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s3,s3,a7	# result, tmp1420, tmp1408
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a3,s2,a3	# result, tmp1490, tmp1486
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp1454, tmp1450
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,a3,20	# result, tmp1490,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	xor	a5,s3,a5	# result, tmp1424, tmp1420
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s0,s0,t4	# result, tmp1492, tmp1480
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp1472,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp1454,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t0,t0,a4	# result, tmp1474, tmp1462
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	s3,s3,t5	# result, tmp1504, tmp1420
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a3,s0,t1	# result, tmp1496, tmp1492
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,s6	# result, tmp1478, tmp1474
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp1424,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp1496,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s5,s5,a5	# result, tmp1426, tmp1414
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s2,s2,a3	# result, tmp1498, tmp1486
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp1508, tmp1504
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp1508,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,a3	# result, tmp1510, tmp1474
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a7,s5,a7	# result, tmp1430, tmp1426
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t4,s2,t4	# result, tmp1502, tmp1498
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp1430,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	xor	t5,t0,t5	# result, tmp1514, tmp1510
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,a7,s0	# tmp1492, tmp1576, result
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp1478,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp1514,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp1528, tmp1444
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	s3,s3,t5	# result, tmp1516, tmp1504
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp1580, tmp1576
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp1520, tmp1516
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp1532, tmp1528
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp1502,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp1532,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,t4	# result, tmp1552, tmp1468
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp1534, tmp1498
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp1580,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s1,s1,a4	# result, tmp1582, tmp1450
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t2	# result, tmp1556, tmp1552
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp1538, tmp1534
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,a3,24	# result, tmp1520,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,16	# result, tmp1556,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,t1	# result, tmp1522, tmp1510
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	s5,s5,t3	# result, tmp1558, tmp1426
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,a7	# result, tmp1586, tmp1582
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp1538,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp1586,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp1540, tmp1528
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,s0,a3	# result, tmp1588, tmp1576
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,s5,t4	# result, tmp1562, tmp1558
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t5,t0,t5	# result, tmp1526, tmp1522
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp1544, tmp1540
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp1592, tmp1588
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp1526,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp1544,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,t5,s4	# tmp1540, tmp1624, result
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp1546, tmp1534
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp1562,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp1592,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp1564, tmp1552
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a4	# result, tmp1594, tmp1582
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp1550, tmp1546
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t3	# result, tmp1568, tmp1564
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,a3	# result, tmp1598, tmp1594
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp1550,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,24	# result, tmp1568,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,a2,t6	# tmp1564, tmp1648, result
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t3	# result, tmp1628, tmp1624
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	t3,s5,t3	# result, tmp1570, tmp1558
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp1628,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp1598,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t2	# result, tmp1630, tmp1594
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,a3	# result, tmp1600, tmp1516
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,t3,a7	# result, tmp1574, tmp1570
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp1652, tmp1648
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp1634, tmp1630
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp1604, tmp1600
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp1574,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp1652,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,a7,s0	# tmp1588, tmp1672, result
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp1654, tmp1522
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp1634,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp1604,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,s4,t5	# result, tmp1636, tmp1624
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s5,t3,a5	# result, tmp1606, tmp1570
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t1,s0,t1	# result, tmp1676, tmp1672
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp1658, tmp1654
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a3,s5,a3	# result, tmp1610, tmp1606
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t2	# result, tmp1640, tmp1636
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,16	# result, tmp1676,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp1640,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s2,s2,t1	# result, tmp1678, tmp1546
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	addw	s1,s1,t2	# result, tmp1642, tmp1630
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,a3,20	# result, tmp1610,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp1658,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s3,s3,t4	# result, tmp1612, tmp1600
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t6,t6,a2	# result, tmp1660, tmp1648
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp1682, tmp1678
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp1646, tmp1642
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp1664, tmp1660
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp1616, tmp1612
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp1682,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp1664,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,s0,a7	# result, tmp1684, tmp1672
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp1666, tmp1654
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp1646,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s3,s3,t5	# result, tmp1696, tmp1612
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a3,s0,t1	# result, tmp1688, tmp1684
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp1670, tmp1666
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp1616,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp1688,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s5,s5,a5	# result, tmp1618, tmp1606
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s2,s2,a3	# result, tmp1690, tmp1678
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp1700, tmp1696
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp1700,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,a3	# result, tmp1702, tmp1666
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	t4,s5,t4	# result, tmp1622, tmp1618
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp1694, tmp1690
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp1622,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	xor	t5,t0,t5	# result, tmp1706, tmp1702
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,t4,s0	# tmp1684, tmp1768, result
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp1670,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp1706,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp1720, tmp1636
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	s3,s3,t5	# result, tmp1708, tmp1696
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp1772, tmp1768
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp1712, tmp1708
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp1724, tmp1720
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp1694,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp1724,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp1744, tmp1660
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp1726, tmp1690
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp1772,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s1,s1,a4	# result, tmp1774, tmp1642
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t2	# result, tmp1748, tmp1744
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp1730, tmp1726
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,a3,24	# result, tmp1712,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,16	# result, tmp1748,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,t1	# result, tmp1714, tmp1702
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	s5,s5,t3	# result, tmp1750, tmp1618
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,t4	# result, tmp1778, tmp1774
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp1730,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp1778,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp1732, tmp1720
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,s0,a3	# result, tmp1780, tmp1768
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t5,t0,t5	# result, tmp1718, tmp1714
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,s5,a7	# result, tmp1754, tmp1750
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp1736, tmp1732
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp1784, tmp1780
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp1718,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp1736,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,t5,s4	# tmp1732, tmp1816, result
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp1738, tmp1726
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp1754,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp1784,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp1756, tmp1744
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a4	# result, tmp1786, tmp1774
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp1742, tmp1738
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t3	# result, tmp1760, tmp1756
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,a3	# result, tmp1790, tmp1786
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp1742,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,24	# result, tmp1760,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,a2,t6	# tmp1756, tmp1840, result
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t3	# result, tmp1820, tmp1816
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	t3,s5,t3	# result, tmp1762, tmp1750
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp1820,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp1790,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t2	# result, tmp1822, tmp1786
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,a3	# result, tmp1792, tmp1708
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,t3,a7	# result, tmp1766, tmp1762
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp1844, tmp1840
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp1826, tmp1822
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp1796, tmp1792
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp1766,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp1844,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,a7,s0	# tmp1780, tmp1864, result
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp1846, tmp1714
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp1826,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp1796,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,s4,t5	# result, tmp1828, tmp1816
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s5,t3,a5	# result, tmp1798, tmp1762
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t1,s0,t1	# result, tmp1868, tmp1864
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp1850, tmp1846
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a3,s5,a3	# result, tmp1802, tmp1798
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t2	# result, tmp1832, tmp1828
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,16	# result, tmp1868,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp1832,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s2,s2,t1	# result, tmp1870, tmp1738
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	addw	s1,s1,t2	# result, tmp1834, tmp1822
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,a3,20	# result, tmp1802,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp1850,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s3,s3,t4	# result, tmp1804, tmp1792
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t6,t6,a2	# result, tmp1852, tmp1840
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp1874, tmp1870
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp1838, tmp1834
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp1856, tmp1852
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp1808, tmp1804
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp1874,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp1856,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,s0,a7	# result, tmp1876, tmp1864
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp1858, tmp1846
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp1838,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s3,s3,t5	# result, tmp1888, tmp1804
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a3,s0,t1	# result, tmp1880, tmp1876
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp1862, tmp1858
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp1808,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp1880,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s5,s5,a5	# result, tmp1810, tmp1798
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s2,s2,a3	# result, tmp1882, tmp1870
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp1892, tmp1888
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp1892,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,a3	# result, tmp1894, tmp1858
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	t4,s5,t4	# result, tmp1814, tmp1810
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp1886, tmp1882
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp1814,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	xor	t5,t0,t5	# result, tmp1898, tmp1894
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,t4,s0	# tmp1876, tmp1960, result
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp1862,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp1898,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp1912, tmp1828
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	s3,s3,t5	# result, tmp1900, tmp1888
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp1964, tmp1960
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp1904, tmp1900
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp1916, tmp1912
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp1886,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp1916,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp1936, tmp1852
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp1918, tmp1882
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp1964,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s1,s1,a4	# result, tmp1966, tmp1834
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t2	# result, tmp1940, tmp1936
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp1922, tmp1918
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,a3,24	# result, tmp1904,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,16	# result, tmp1940,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,t1	# result, tmp1906, tmp1894
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	s5,s5,t3	# result, tmp1942, tmp1810
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,t4	# result, tmp1970, tmp1966
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp1922,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp1970,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp1924, tmp1912
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,s0,a3	# result, tmp1972, tmp1960
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t5,t0,t5	# result, tmp1910, tmp1906
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,s5,a7	# result, tmp1946, tmp1942
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp1928, tmp1924
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp1976, tmp1972
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp1910,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp1928,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,t5,s4	# tmp1924, tmp2008, result
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp1930, tmp1918
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp1946,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp1976,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp1948, tmp1936
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a4	# result, tmp1978, tmp1966
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp1934, tmp1930
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t3	# result, tmp1952, tmp1948
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,a3	# result, tmp1982, tmp1978
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp1934,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,24	# result, tmp1952,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,a2,t6	# tmp1948, tmp2032, result
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t3	# result, tmp2012, tmp2008
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	t3,s5,t3	# result, tmp1954, tmp1942
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp2012,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp1982,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t2	# result, tmp2014, tmp1978
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,a3	# result, tmp1984, tmp1900
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,t3,a7	# result, tmp1958, tmp1954
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp2036, tmp2032
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp2018, tmp2014
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp1988, tmp1984
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp1958,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp2036,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,a7,s0	# tmp1972, tmp2056, result
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp2038, tmp1906
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp2018,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp1988,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,s4,t5	# result, tmp2020, tmp2008
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s5,t3,a5	# result, tmp1990, tmp1954
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t1,s0,t1	# result, tmp2060, tmp2056
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp2042, tmp2038
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a3,s5,a3	# result, tmp1994, tmp1990
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t2	# result, tmp2024, tmp2020
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,16	# result, tmp2060,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp2024,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s2,s2,t1	# result, tmp2062, tmp1930
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	addw	s1,s1,t2	# result, tmp2026, tmp2014
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,a3,20	# result, tmp1994,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp2042,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s3,s3,t4	# result, tmp1996, tmp1984
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t6,t6,a2	# result, tmp2044, tmp2032
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp2066, tmp2062
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp2030, tmp2026
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp2048, tmp2044
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp2000, tmp1996
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp2066,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp2048,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,s0,a7	# result, tmp2068, tmp2056
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp2050, tmp2038
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp2030,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s3,s3,t5	# result, tmp2080, tmp1996
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a3,s0,t1	# result, tmp2072, tmp2068
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp2054, tmp2050
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp2000,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp2072,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s5,s5,a5	# result, tmp2002, tmp1990
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s2,s2,a3	# result, tmp2074, tmp2062
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp2084, tmp2080
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp2084,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,a3	# result, tmp2086, tmp2050
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	t4,s5,t4	# result, tmp2006, tmp2002
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp2078, tmp2074
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp2006,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	xor	t5,t0,t5	# result, tmp2090, tmp2086
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,t4,s0	# tmp2068, tmp2152, result
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp2054,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp2090,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp2104, tmp2020
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	s3,s3,t5	# result, tmp2092, tmp2080
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp2156, tmp2152
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp2096, tmp2092
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp2108, tmp2104
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp2078,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp2108,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp2128, tmp2044
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp2110, tmp2074
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp2156,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s1,s1,a4	# result, tmp2158, tmp2026
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t2	# result, tmp2132, tmp2128
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp2114, tmp2110
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,a3,24	# result, tmp2096,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,16	# result, tmp2132,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,t1	# result, tmp2098, tmp2086
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	s5,s5,t3	# result, tmp2134, tmp2002
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,t4	# result, tmp2162, tmp2158
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp2114,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp2162,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp2116, tmp2104
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,s0,a3	# result, tmp2164, tmp2152
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t5,t0,t5	# result, tmp2102, tmp2098
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,s5,a7	# result, tmp2138, tmp2134
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp2120, tmp2116
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp2168, tmp2164
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp2102,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp2120,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,t5,s4	# tmp2116, tmp2200, result
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp2122, tmp2110
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp2138,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp2168,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp2140, tmp2128
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a4	# result, tmp2170, tmp2158
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp2126, tmp2122
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t3	# result, tmp2144, tmp2140
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,a3	# result, tmp2174, tmp2170
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp2126,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,24	# result, tmp2144,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,a2,t6	# tmp2140, tmp2224, result
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t3	# result, tmp2204, tmp2200
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	t3,s5,t3	# result, tmp2146, tmp2134
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp2204,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp2174,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t2	# result, tmp2206, tmp2170
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,a3	# result, tmp2176, tmp2092
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,t3,a7	# result, tmp2150, tmp2146
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp2228, tmp2224
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp2210, tmp2206
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp2180, tmp2176
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp2150,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp2228,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,a7,s0	# tmp2164, tmp2248, result
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp2230, tmp2098
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp2210,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp2180,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,s4,t5	# result, tmp2212, tmp2200
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s5,t3,a5	# result, tmp2182, tmp2146
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t1,s0,t1	# result, tmp2252, tmp2248
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp2234, tmp2230
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a3,s5,a3	# result, tmp2186, tmp2182
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t2	# result, tmp2216, tmp2212
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,16	# result, tmp2252,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp2216,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s2,s2,t1	# result, tmp2254, tmp2122
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	addw	s1,s1,t2	# result, tmp2218, tmp2206
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,a3,20	# result, tmp2186,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp2234,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s3,s3,t4	# result, tmp2188, tmp2176
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t6,t6,a2	# result, tmp2236, tmp2224
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp2258, tmp2254
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp2222, tmp2218
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp2240, tmp2236
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp2192, tmp2188
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp2258,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp2240,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,s0,a7	# result, tmp2260, tmp2248
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp2242, tmp2230
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp2222,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s3,s3,t5	# result, tmp2272, tmp2188
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a3,s0,t1	# result, tmp2264, tmp2260
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp2246, tmp2242
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp2192,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp2264,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s5,s5,a5	# result, tmp2194, tmp2182
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s2,s2,a3	# result, tmp2266, tmp2254
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp2276, tmp2272
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp2276,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,a3	# result, tmp2278, tmp2242
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	t4,s5,t4	# result, tmp2198, tmp2194
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp2270, tmp2266
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp2198,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	xor	t5,t0,t5	# result, tmp2282, tmp2278
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,t4,s0	# tmp2260, tmp2344, result
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp2246,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp2282,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp2296, tmp2212
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	s3,s3,t5	# result, tmp2284, tmp2272
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp2348, tmp2344
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp2288, tmp2284
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp2300, tmp2296
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp2270,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp2300,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp2320, tmp2236
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp2302, tmp2266
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp2348,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s1,s1,a4	# result, tmp2350, tmp2218
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t2	# result, tmp2324, tmp2320
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp2306, tmp2302
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,a3,24	# result, tmp2288,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,16	# result, tmp2324,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,t1	# result, tmp2290, tmp2278
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	s5,s5,t3	# result, tmp2326, tmp2194
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,t4	# result, tmp2354, tmp2350
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp2306,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp2354,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp2308, tmp2296
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,s0,a3	# result, tmp2356, tmp2344
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t5,t0,t5	# result, tmp2294, tmp2290
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,s5,a7	# result, tmp2330, tmp2326
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp2312, tmp2308
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp2360, tmp2356
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp2294,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp2312,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,t5,s4	# tmp2308, tmp2392, result
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp2314, tmp2302
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp2330,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp2360,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp2332, tmp2320
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a4	# result, tmp2362, tmp2350
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp2318, tmp2314
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t3	# result, tmp2336, tmp2332
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,a3	# result, tmp2366, tmp2362
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp2318,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t3,t3,24	# result, tmp2336,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,a2,t6	# tmp2332, tmp2416, result
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t3	# result, tmp2396, tmp2392
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	t3,s5,t3	# result, tmp2338, tmp2326
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp2396,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp2366,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t2	# result, tmp2398, tmp2362
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,a3	# result, tmp2368, tmp2284
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,t3,a7	# result, tmp2342, tmp2338
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp2420, tmp2416
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp2402, tmp2398
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp2372, tmp2368
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp2342,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp2420,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,a7,s0	# tmp2356, tmp2440, result
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp2422, tmp2290
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp2402,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp2372,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,s4,t5	# result, tmp2404, tmp2392
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s5,t3,a5	# result, tmp2374, tmp2338
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t1,s0,t1	# result, tmp2444, tmp2440
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp2426, tmp2422
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a3,s5,a3	# result, tmp2378, tmp2374
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t2	# result, tmp2408, tmp2404
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,t1,16	# result, tmp2444,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp2408,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s2,s2,t1	# result, tmp2446, tmp2314
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	addw	s1,s1,t2	# result, tmp2410, tmp2398
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,a3,20	# result, tmp2378,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp2426,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s3,s3,t4	# result, tmp2380, tmp2368
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t6,t6,a2	# result, tmp2428, tmp2416
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp2450, tmp2446
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp2414, tmp2410
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp2432, tmp2428
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp2384, tmp2380
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp2450,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp2432,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s0,s0,a7	# result, tmp2452, tmp2440
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp2434, tmp2422
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp2414,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s3,s3,t5	# result, tmp2464, tmp2380
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a3,s0,t1	# result, tmp2456, tmp2452
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp2438, tmp2434
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp2384,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp2456,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s5,s5,a5	# result, tmp2386, tmp2374
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s2,s2,a3	# result, tmp2458, tmp2446
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp2468, tmp2464
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp2438,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp2468,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp2488, tmp2404
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	t0,t0,a3	# result, tmp2470, tmp2434
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	t4,s5,t4	# result, tmp2390, tmp2386
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp2462, tmp2458
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp2390,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	xor	a5,s4,a5	# result, tmp2492, tmp2488
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,t4,s0	# tmp2452, tmp2536, result
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t5,t0,t5	# result, tmp2474, tmp2470
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp2462,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp2474,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp2512, tmp2428
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	s3,s3,t5	# result, tmp2476, tmp2464
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp2540, tmp2536
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp2492,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s2,s2,a5	# result, tmp2494, tmp2458
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t2	# result, tmp2516, tmp2512
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp2480, tmp2476
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp2498, tmp2494
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,a3,24	# result, tmp2480,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp2540,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,t1	# result, tmp2482, tmp2470
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a4	# result, tmp2542, tmp2410
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,16	# result, tmp2516,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp2498,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s5,s5,t3	# result, tmp2518, tmp2386
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s4,s4,a2	# result, tmp2500, tmp2488
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,t4	# result, tmp2546, tmp2542
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t5,t0,t5	# result, tmp2486, tmp2482
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp2504, tmp2500
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,s5,a7	# result, tmp2522, tmp2518
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp2546,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp2486,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s0,s0,a3	# result, tmp2548, tmp2536
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	addw	s4,t5,s4	# tmp2500, tmp2584, result
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp2522,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp2524, tmp2512
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp2552, tmp2548
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t3	# result, tmp2528, tmp2524
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp2504,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp2552,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s2,s2,a5	# result, tmp2506, tmp2494
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a4	# result, tmp2554, tmp2542
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,24	# result, tmp2528,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	xor	t2,s4,t3	# result, tmp2588, tmp2584
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	t3,s5,t3	# result, tmp2530, tmp2518
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp2510, tmp2506
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,a3	# result, tmp2558, tmp2554
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,t3,a7	# result, tmp2534, tmp2530
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp2510,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp2588,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,a2,t6	# tmp2524, tmp2608, result
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	addw	s1,s1,t2	# result, tmp2590, tmp2554
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp2558,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp2534,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s3,s3,a3	# result, tmp2560, tmp2476
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s0,a7,s0	# tmp2548, tmp2632, result
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp2612, tmp2608
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t5,s1,t5	# result, tmp2594, tmp2590
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp2564, tmp2560
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t1,s0,t1	# result, tmp2636, tmp2632
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,20	# result, tmp2594,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t1,t1,16	# result, tmp2636,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,s4,t5	# result, tmp2596, tmp2584
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s2,s2,t1	# result, tmp2638, tmp2506
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp2612,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp2564,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t0,t0,a4	# result, tmp2614, tmp2482
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s5,t3,a5	# result, tmp2566, tmp2530
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp2642, tmp2638
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t2,s4,t2	# result, tmp2600, tmp2596
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a3,s5,a3	# result, tmp2570, tmp2566
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp2618, tmp2614
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp2600,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t4,a3,20	# result, tmp2570,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t2	# result, tmp2602, tmp2590
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,t4	# result, tmp2572, tmp2560
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp2618,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,t6,a2	# result, tmp2620, tmp2608
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp2576, tmp2572
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	s6,a7,20	# result, tmp2642,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	xor	a4,t6,a4	# result, tmp2624, tmp2620
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s0,s0,s6	# result, tmp2644, tmp2632
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	a7,s1,t5	# result, tmp2606, tmp2602
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp2624,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp2606,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t0,t0,a4	# result, tmp2626, tmp2614
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	s3,s3,a7	# result, tmp2656, tmp2572
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a3,s0,t1	# result, tmp2648, tmp2644
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp2630, tmp2626
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp2576,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp2648,
# 0 "" 2
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s5,s5,a5	# result, tmp2578, tmp2566
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s2,s2,a3	# result, tmp2650, tmp2638
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp2660, tmp2656
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp2630,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp2660,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# result, tmp2680, tmp2596
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	t0,t0,a3	# result, tmp2662, tmp2626
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t5,s2,s6	# result, tmp2654, tmp2650
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	t4,s5,t4	# result, tmp2582, tmp2578
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp2684, tmp2680
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a7,t0,a7	# result, tmp2666, tmp2662
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp2582,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp2666,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s0,t4,s0	# tmp2644, tmp2728, result
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	addw	s3,s3,a7	# result, tmp2668, tmp2656
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,t5,25	# result, tmp2654,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp2684,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,t5	# result, tmp2704, tmp2620
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp2686, tmp2650
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a3,s3,a3	# result, tmp2672, tmp2668
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp2732, tmp2728
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t2	# result, tmp2708, tmp2704
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp2690, tmp2686
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t1,a3,24	# result, tmp2672,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp2732,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,t1	# result, tmp2674, tmp2662
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a4	# result, tmp2734, tmp2602
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,16	# result, tmp2708,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp2690,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s5,s5,t3	# result, tmp2710, tmp2578
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s4,s4,a2	# result, tmp2692, tmp2680
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,t4	# result, tmp2738, tmp2734
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t4,t0,a7	# result, tmp2678, tmp2674
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t5,s5,t5	# result, tmp2714, tmp2710
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp2696, tmp2692
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,t5,20	# result, tmp2714,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp2738,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a7	# result, tmp2716, tmp2704
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s0,s0,a3	# result, tmp2740, tmp2728
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp2678,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp2696,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,t4,s4	# tmp2692, tmp2776, result
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp2698, tmp2686
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a4,s0,a4	# result, tmp2744, tmp2740
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t3,t6,t3	# result, tmp2720, tmp2716
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a2,s2,a2	# result, tmp2702, tmp2698
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp2744,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp2702,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s1,s1,a4	# result, tmp2746, tmp2734
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t6,a2,t6	# tmp2716, tmp2800, result
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,24	# result, tmp2720,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	xor	t2,s4,t3	# result, tmp2780, tmp2776
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	t3,s5,t3	# result, tmp2722, tmp2710
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,a3	# result, tmp2750, tmp2746
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp2804, tmp2800
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,t3,a7	# result, tmp2726, tmp2722
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,16	# result, tmp2780,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp2750,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t2	# result, tmp2782, tmp2746
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,a3	# result, tmp2752, tmp2668
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp2726,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp2804,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	t5,a7,s0	# tmp2740, tmp2824, result
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# result, tmp2806, tmp2674
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t4,s1,t4	# result, tmp2786, tmp2782
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp2756, tmp2752
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t0,a2	# result, tmp2810, tmp2806
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t1,t5,t1	# result, tmp2828, tmp2824
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	s6,a2,20	# result, tmp2810,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	t1,t1,16	# result, tmp2828,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,t6,s6	# result, tmp2812, tmp2800
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	s2,s2,t1	# result, tmp2830, tmp2698
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,20	# result, tmp2786,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp2756,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s4,s4,t4	# result, tmp2788, tmp2776
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	t3,t3,a5	# result, tmp2758, tmp2722
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t6,a4	# result, tmp2816, tmp2812
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp2834, tmp2830
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a4,24	# result, tmp2816,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	xor	t2,s4,t2	# result, tmp2792, tmp2788
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a2	# result, tmp2818, tmp2806
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a3,t3,a3	# result, tmp2762, tmp2758
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp2792,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp2762,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,t2	# result, tmp2794, tmp2782
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,a3	# result, tmp2764, tmp2752
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	s0,t0,s6	# result, tmp2822, tmp2818
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,20	# result, tmp2834,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	t5,t5,a7	# result, tmp2836, tmp2824
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t4,s1,t4	# result, tmp2798, tmp2794
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp2768, tmp2764
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a4,t5,t1	# result, tmp2840, tmp2836
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp2798,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp2768,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s3,s3,t4	# result, tmp2848, tmp2764
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s5,t3,a5	# result, tmp2770, tmp2758
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,24	# result, tmp2840,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	s0,s0,25	# result, tmp2822,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s2,s2,a4	# result, tmp2842, tmp2830
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s4,s4,s0	# result, tmp2872, tmp2788
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a4,s3,a4	# result, tmp2852, tmp2848
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a3,s5,a3	# result, tmp2774, tmp2770
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a7,s2,a7	# result, tmp2846, tmp2842
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp2876, tmp2872
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,16	# result, tmp2852,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp2774,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,a4	# result, tmp2854, tmp2818
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	t1,a3,t5	# tmp2836, tmp2920, result
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp2876,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s2,s2,a5	# result, tmp2878, tmp2842
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t3,t0,t4	# result, tmp2858, tmp2854
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a2,t1,a2	# result, tmp2924, tmp2920
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t5,a7,25	# result, tmp2846,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	xor	s0,s2,s0	# result, tmp2882, tmp2878
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	t6,t6,t5	# result, tmp2896, tmp2812
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,20	# result, tmp2858,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,16	# result, tmp2924,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s3,s3,t3	# result, tmp2860, tmp2848
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a2	# result, tmp2926, tmp2794
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,t6,t2	# result, tmp2900, tmp2896
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	a4,s3,a4	# result, tmp2864, tmp2860
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,a3	# result, tmp2930, tmp2926
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,a4,24	# result, tmp2864,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a7,a7,16	# result, tmp2900,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,t2	# result, tmp2866, tmp2854
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,s0,20	# result, tmp2882,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp2930,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s0,s5,a7	# result, tmp2902, tmp2770
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s4,s4,a4	# result, tmp2884, tmp2872
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	t1,t1,a3	# result, tmp2932, tmp2920
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t3,t0,t3	# result, tmp2870, tmp2866
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t4,s0,t5	# result, tmp2906, tmp2902
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a5,s4,a5	# result, tmp2888, tmp2884
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a2,t1,a2	# result, tmp2936, tmp2932
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,25	# result, tmp2870,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,24	# result, tmp2888,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	t5,t3,s4	# tmp2884, tmp2968, result
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	addw	s2,s2,a5	# result, tmp2890, tmp2878
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,20	# result, tmp2906,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a2,a2,24	# result, tmp2936,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,t4	# result, tmp2908, tmp2896
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a2	# result, tmp2938, tmp2926
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a4,s2,a4	# result, tmp2894, tmp2890
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	a7,t6,a7	# result, tmp2912, tmp2908
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,s1,a3	# result, tmp2942, tmp2938
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,25	# result, tmp2894,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a7,a7,24	# result, tmp2912,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,a4,t6	# tmp2908, tmp2992, result
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	s4,t5,a7	# result, tmp2972, tmp2968
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	addw	a7,s0,a7	# result, tmp2914, tmp2902
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	s4,s4,16	# result, tmp2972,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,25	# result, tmp2942,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s1,s1,s4	# result, tmp2974, tmp2938
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,a3	# result, tmp2944, tmp2860
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a2,t6,a2	# result, tmp2996, tmp2992
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t4,a7,t4	# result, tmp2918, tmp2914
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	s0,a2,16	# result, tmp2996,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	xor	t3,s1,t3	# result, tmp2978, tmp2974
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,s0	# result, tmp2998, tmp2866
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a5,s3,a5	# result, tmp2948, tmp2944
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,25	# result, tmp2918,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a5,a5,16	# result, tmp2948,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	t1,t4,t1	# tmp2932, tmp3016, result
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	a7,a7,a5	# result, tmp2950, tmp2914
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t0,a4	# result, tmp3002, tmp2998
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,20	# result, tmp2978,
# 0 "" 2
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	t5,t5,t3	# result, tmp2980, tmp2968
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a2,t1,t2	# result, tmp3020, tmp3016
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a3,a7,a3	# result, tmp2954, tmp2950
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,16	# result, tmp3020,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	a3,a3,20	# result, tmp2954,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	t2,s2,a2	# result, tmp3022, tmp2890
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,a3	# result, tmp2956, tmp2944
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	s2,t5,s4	# result, tmp2984, tmp2980
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,20	# result, tmp3002,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	s2,s2,24	# result, tmp2984,
# 0 "" 2
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t6,t6,a4	# result, tmp3004, tmp2992
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	addw	s1,s1,s2	# result, tmp2986, tmp2974
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	s4,s3,a5	# result, tmp2960, tmp2956
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	t4,t2,t4	# result, tmp3026, tmp3022
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	s0,t6,s0	# result, tmp3008, tmp3004
# src/chacha20.c:46:     QUARTERROUND(1, 5, 9, 13);
	xor	t3,s1,t3	# result, tmp2990, tmp2986
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,t4,20	# result, tmp3026,
# 0 "" 2
# 17 "src/chacha20.c" 1
	roriw	s0,s0,24	# result, tmp3008,
# 0 "" 2
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	t1,t1,t4	# result, tmp3028, tmp3016
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,s0	# result, tmp3010, tmp2998
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,25	# result, tmp2990,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s3,s3,t3	# result, tmp3040, tmp2956
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a2,t1,a2	# result, tmp3032, tmp3028
# src/chacha20.c:47:     QUARTERROUND(2, 6, 10, 14);
	xor	a4,t0,a4	# result, tmp3014, tmp3010
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,24	# result, tmp3032,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	xor	s5,s3,a2	# result, tmp3044, tmp3040
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	addw	a2,t2,a2	# result, tmp3034, tmp3022
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	s5,s5,16	# result, tmp3044,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,s5	# result, tmp3046, tmp3010
# src/chacha20.c:48:     QUARTERROUND(3, 7, 11, 15);
	xor	a5,a2,t4	# result, tmp3038, tmp3034
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t3,t0,t3	# result, tmp3050, tmp3046
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t3,t3,20	# result, tmp3050,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t2,s3,t3	# result, tmp3052, tmp3040
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	addw	a6,a6,t2	# tmp3052, tmp3138, *input_99(D)
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
	xor	t2,t2,s5	# result, tmp3056, tmp3052
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a6,0(a0)	# tmp3138, output_100(D)->u[0]
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,25	# result, tmp3014,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	a6,t5,a4	# result, tmp3064, tmp2980
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	s3,4(a1)		# MEM[(const u32 *)input_99(D) + 4B], MEM[(const u32 *)input_99(D) + 4B]
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t4,s4,24	# result, tmp2960,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	xor	t5,a6,t4	# result, tmp3068, tmp3064
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	addw	t4,a7,t4	# result, tmp2962, tmp2950
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,t5,16	# result, tmp3068,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	t5,a2,a7	# result, tmp3070, tmp3034
# src/chacha20.c:45:     QUARTERROUND(0, 4, 8, 12);
	xor	a2,t4,a3	# result, tmp2966, tmp2962
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a4,t5,a4	# result, tmp3074, tmp3070
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,20	# result, tmp3074,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	a6,a6,a4	# result, tmp3076, tmp3064
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	addw	s3,s3,a6	# tmp3076, tmp3142, MEM[(const u32 *)input_99(D) + 4B]
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
	xor	a6,a6,a7	# result, tmp3080, tmp3076
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	s3,4(a0)	# tmp3142, output_100(D)->u[1]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a7,8(a1)		# MEM[(const u32 *)input_99(D) + 8B], MEM[(const u32 *)input_99(D) + 8B]
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,25	# result, tmp3038,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a5	# result, tmp3088, tmp3004
	xor	a3,t6,s2	# result, tmp3092, tmp3088
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,16	# result, tmp3092,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t4,t4,a3	# result, tmp3094, tmp2962
	xor	a5,t4,a5	# result, tmp3098, tmp3094
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,20	# result, tmp3098,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t6,a5	# result, tmp3100, tmp3088
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	addw	a7,a7,t6	# tmp3100, tmp3146, MEM[(const u32 *)input_99(D) + 8B]
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
	xor	t6,t6,a3	# result, tmp3104, tmp3100
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a7,8(a0)	# tmp3146, output_100(D)->u[2]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	s2,12(a1)		# MEM[(const u32 *)input_99(D) + 12B], MEM[(const u32 *)input_99(D) + 12B]
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp2966,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	a3,a2,t1	# tmp3028, tmp3112, result
	xor	a7,a3,s0	# result, tmp3116, tmp3112
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,16	# result, tmp3116,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s1,s1,a7	# result, tmp3118, tmp2986
	xor	a2,s1,a2	# result, tmp3122, tmp3118
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,20	# result, tmp3122,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	a3,a3,a2	# result, tmp3124, tmp3112
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	addw	t1,s2,a3	# tmp3124, tmp3150, MEM[(const u32 *)input_99(D) + 12B]
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
	xor	a3,a3,a7	# result, tmp3128, tmp3124
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	t1,12(a0)	# tmp3150, output_100(D)->u[3]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a7,16(a1)		# MEM[(const u32 *)input_99(D) + 16B], MEM[(const u32 *)input_99(D) + 16B]
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a3,a3,24	# result, tmp3128,
# 0 "" 2
# src/chacha20.c:52:     QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s1,s1,a3	# result, tmp3130, tmp3118
	xor	a2,s1,a2	# result, tmp3134, tmp3130
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a2,a2,25	# result, tmp3134,
# 0 "" 2
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
#NO_APP
	addw	a2,a2,a7	# MEM[(const u32 *)input_99(D) + 16B], tmp3154, result
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a2,16(a0)	# tmp3154, output_100(D)->u[4]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a2,20(a1)		# MEM[(const u32 *)input_99(D) + 20B], MEM[(const u32 *)input_99(D) + 20B]
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t2,t2,24	# result, tmp3056,
# 0 "" 2
# src/chacha20.c:49:     QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	t0,t0,t2	# result, tmp3058, tmp3046
	xor	a7,t0,t3	# result, tmp3062, tmp3058
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a7,a7,25	# result, tmp3062,
# 0 "" 2
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
#NO_APP
	addw	a7,a7,a2	# MEM[(const u32 *)input_99(D) + 20B], tmp3158, result
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a7,20(a0)	# tmp3158, output_100(D)->u[5]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a7,24(a1)		# MEM[(const u32 *)input_99(D) + 24B], MEM[(const u32 *)input_99(D) + 24B]
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a6,a6,24	# result, tmp3080,
# 0 "" 2
# src/chacha20.c:50:     QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	a2,t5,a6	# result, tmp3082, tmp3070
	xor	a4,a2,a4	# result, tmp3086, tmp3082
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a4,a4,25	# result, tmp3086,
# 0 "" 2
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
#NO_APP
	addw	a4,a4,a7	# MEM[(const u32 *)input_99(D) + 24B], tmp3162, result
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a4,24(a0)	# tmp3162, output_100(D)->u[6]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a4,28(a1)		# MEM[(const u32 *)input_99(D) + 28B], MEM[(const u32 *)input_99(D) + 28B]
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	t6,t6,24	# result, tmp3104,
# 0 "" 2
# src/chacha20.c:51:     QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t4,t4,t6	# result, tmp3106, tmp3094
	xor	a5,t4,a5	# result, tmp3110, tmp3106
# src/chacha20.c:17:   __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
#APP
# 17 "src/chacha20.c" 1
	roriw	a5,a5,25	# result, tmp3110,
# 0 "" 2
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
#NO_APP
	addw	a5,a5,a4	# MEM[(const u32 *)input_99(D) + 28B], tmp3166, result
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a5,28(a0)	# tmp3166, output_100(D)->u[7]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a5,32(a1)		# MEM[(const u32 *)input_99(D) + 32B], MEM[(const u32 *)input_99(D) + 32B]
	addw	a5,a5,t4	# tmp3106, tmp3170, MEM[(const u32 *)input_99(D) + 32B]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a5,32(a0)	# tmp3170, output_100(D)->u[8]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a5,36(a1)		# MEM[(const u32 *)input_99(D) + 36B], MEM[(const u32 *)input_99(D) + 36B]
# src/chacha20.c:58: }
	ld	s0,120(sp)		#,
	.cfi_remember_state
	.cfi_restore 8
	ld	s2,104(sp)		#,
	.cfi_restore 18
	ld	s3,96(sp)		#,
	.cfi_restore 19
	ld	s4,88(sp)		#,
	.cfi_restore 20
	ld	s5,80(sp)		#,
	.cfi_restore 21
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	addw	a5,a5,s1	# tmp3130, tmp3174, MEM[(const u32 *)input_99(D) + 36B]
# src/chacha20.c:58: }
	ld	s6,72(sp)		#,
	.cfi_restore 22
	ld	s1,112(sp)		#,
	.cfi_restore 9
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a5,36(a0)	# tmp3174, output_100(D)->u[9]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a5,40(a1)		# MEM[(const u32 *)input_99(D) + 40B], MEM[(const u32 *)input_99(D) + 40B]
	addw	a5,a5,t0	# tmp3058, tmp3178, MEM[(const u32 *)input_99(D) + 40B]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a5,40(a0)	# tmp3178, output_100(D)->u[10]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a5,44(a1)		# MEM[(const u32 *)input_99(D) + 44B], MEM[(const u32 *)input_99(D) + 44B]
	addw	a5,a5,a2	# tmp3082, tmp3182, MEM[(const u32 *)input_99(D) + 44B]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a5,44(a0)	# tmp3182, output_100(D)->u[11]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a5,48(a1)		# MEM[(const u32 *)input_99(D) + 48B], MEM[(const u32 *)input_99(D) + 48B]
	addw	a6,a6,a5	# MEM[(const u32 *)input_99(D) + 48B], tmp3186, result
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a6,48(a0)	# tmp3186, output_100(D)->u[12]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a5,52(a1)		# MEM[(const u32 *)input_99(D) + 52B], MEM[(const u32 *)input_99(D) + 52B]
	addw	t6,t6,a5	# MEM[(const u32 *)input_99(D) + 52B], tmp3190, result
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	t6,52(a0)	# tmp3190, output_100(D)->u[13]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a5,56(a1)		# MEM[(const u32 *)input_99(D) + 56B], MEM[(const u32 *)input_99(D) + 56B]
	addw	a3,a3,a5	# MEM[(const u32 *)input_99(D) + 56B], tmp3194, result
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	a3,56(a0)	# tmp3194, output_100(D)->u[14]
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	lw	a5,60(a1)		# MEM[(const u32 *)input_99(D) + 60B], MEM[(const u32 *)input_99(D) + 60B]
	addw	t2,t2,a5	# MEM[(const u32 *)input_99(D) + 60B], tmp3198, result
# src/chacha20.c:56:     output->u[i] = x[i] + input[i];
	sw	t2,60(a0)	# tmp3198, output_100(D)->u[15]
# src/chacha20.c:58: }
	addi	sp,sp,128	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
.L2:
	.cfi_restore_state
# src/chacha20.c:40:     x[i] = input[i];
	lw	t3,4(a1)		# MEM[(const u32 *)input_99(D) + 4B], MEM[(const u32 *)input_99(D) + 4B]
	lw	t1,8(a1)		# MEM[(const u32 *)input_99(D) + 8B], MEM[(const u32 *)input_99(D) + 8B]
	lw	a7,12(a1)		# MEM[(const u32 *)input_99(D) + 12B], MEM[(const u32 *)input_99(D) + 12B]
	lw	a2,16(a1)		# MEM[(const u32 *)input_99(D) + 16B], MEM[(const u32 *)input_99(D) + 16B]
	lw	a3,20(a1)		# MEM[(const u32 *)input_99(D) + 20B], MEM[(const u32 *)input_99(D) + 20B]
	lw	a4,24(a1)		# MEM[(const u32 *)input_99(D) + 24B], MEM[(const u32 *)input_99(D) + 24B]
	lw	a5,28(a1)		# MEM[(const u32 *)input_99(D) + 28B], MEM[(const u32 *)input_99(D) + 28B]
	lw	a6,0(a1)		# *input_99(D), *input_99(D)
	sw	t3,4(sp)	# MEM[(const u32 *)input_99(D) + 4B], x[1]
	sw	t1,8(sp)	# MEM[(const u32 *)input_99(D) + 8B], x[2]
	lw	t4,32(a1)		# MEM[(const u32 *)input_99(D) + 32B], MEM[(const u32 *)input_99(D) + 32B]
	lw	t3,36(a1)		# MEM[(const u32 *)input_99(D) + 36B], MEM[(const u32 *)input_99(D) + 36B]
	sw	a7,12(sp)	# MEM[(const u32 *)input_99(D) + 12B], x[3]
	sw	a2,16(sp)	# MEM[(const u32 *)input_99(D) + 16B], x[4]
	lw	t1,40(a1)		# MEM[(const u32 *)input_99(D) + 40B], MEM[(const u32 *)input_99(D) + 40B]
	lw	a7,44(a1)		# MEM[(const u32 *)input_99(D) + 44B], MEM[(const u32 *)input_99(D) + 44B]
	sw	a3,20(sp)	# MEM[(const u32 *)input_99(D) + 20B], x[5]
	sw	a4,24(sp)	# MEM[(const u32 *)input_99(D) + 24B], x[6]
	lw	a2,48(a1)		# MEM[(const u32 *)input_99(D) + 48B], MEM[(const u32 *)input_99(D) + 48B]
	lw	a3,52(a1)		# MEM[(const u32 *)input_99(D) + 52B], MEM[(const u32 *)input_99(D) + 52B]
	sw	a5,28(sp)	# MEM[(const u32 *)input_99(D) + 28B], x[7]
	sw	a6,0(sp)	# *input_99(D), x[0]
	lw	a4,56(a1)		# MEM[(const u32 *)input_99(D) + 56B], MEM[(const u32 *)input_99(D) + 56B]
	lw	a5,60(a1)		# MEM[(const u32 *)input_99(D) + 60B], MEM[(const u32 *)input_99(D) + 60B]
	sw	t4,32(sp)	# MEM[(const u32 *)input_99(D) + 32B], x[8]
	sw	t3,36(sp)	# MEM[(const u32 *)input_99(D) + 36B], x[9]
	sw	t1,40(sp)	# MEM[(const u32 *)input_99(D) + 40B], x[10]
	sw	a7,44(sp)	# MEM[(const u32 *)input_99(D) + 44B], x[11]
	sw	a2,48(sp)	# MEM[(const u32 *)input_99(D) + 48B], x[12]
	sw	a3,52(sp)	# MEM[(const u32 *)input_99(D) + 52B], x[13]
	sw	a4,56(sp)	# MEM[(const u32 *)input_99(D) + 56B], x[14]
	sw	a5,60(sp)	# MEM[(const u32 *)input_99(D) + 60B], x[15]
	j	.L3		#
	.cfi_endproc
.LFE3:
	.size	chacha20, .-chacha20
	.ident	"GCC: (g04696df09) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
