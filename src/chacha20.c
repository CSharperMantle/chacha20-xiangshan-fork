#include <chacha20.h>

static inline u32 ROL32(u32 v, u8 n) {
  u32 result;
  __asm__("rolw\t%0,%1,%2" : "=r"(result) : "r"(v), "r"(n));
  return result;
}

static inline u32 ROR32(u32 v, u8 n) {
  u32 result;
  __asm__("rorw\t%0,%1,%2" : "=r"(result) : "r"(v), "r"(n));
  return result;
}

static inline u32 RORC32(u32 v, const u8 n) {
  u32 result;
  __asm__("roriw\t%0,%1,%2" : "=r"(result) : "r"(v), "I"(n));
  return result;
}

/* QUARTERROUND updates a, b, c, d with a ChaCha "quarter" round. */
#define QUARTERROUND(a, b, c, d)                                                                   \
  do {                                                                                             \
    x[a] += x[b];                                                                                  \
    x[d] = RORC32((x[d] ^ x[a]), 16);                                                              \
    x[c] += x[d];                                                                                  \
    x[b] = RORC32((x[b] ^ x[c]), 20);                                                              \
    x[a] += x[b];                                                                                  \
    x[d] = RORC32((x[d] ^ x[a]), 24);                                                              \
    x[c] += x[d];                                                                                  \
    x[b] = RORC32((x[b] ^ x[c]), 25);                                                              \
  } while (0)

/* chacha_core performs 20 rounds of ChaCha on the input words in
 * |input| and writes the 64 output bytes to |output|. */
void chacha20(chacha_buf *output, const u32 input[16]) {
  u32 x[16];

  for (int i = 0; i < 16; i++) {
    x[i] = input[i];
  }

#pragma GCC unroll 10
  for (int i = 0; i < 10; i++) {
    QUARTERROUND(0, 4, 8, 12);
    QUARTERROUND(1, 5, 9, 13);
    QUARTERROUND(2, 6, 10, 14);
    QUARTERROUND(3, 7, 11, 15);
    QUARTERROUND(0, 5, 10, 15);
    QUARTERROUND(1, 6, 11, 12);
    QUARTERROUND(2, 7, 8, 13);
    QUARTERROUND(3, 4, 9, 14);
  }

  for (int i = 0; i < 16; ++i) {
    output->u[i] = x[i] + input[i];
  }
}
