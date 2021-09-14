/*
*/

#ifndef ARMYM2151_HEADER
#define ARMYM2151_HEADER

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
	u8 registers[256];
	u8 regIndex;
	u8 padding[3];
} ym2151;


void YM2151Reset(ym2151 *chip, int chiptype);
void YM2151Mixer(ym2151 *chip, int len, void *dest);
void YM2151IndexW(ym2151 *chip, u8 value);
void YM2151DataW(ym2151 *chip, u8 value);
void YM2151DataR(ym2151 *chip, u8 value);


#ifdef __cplusplus
}
#endif

#endif // ARMYM2151_HEADER
