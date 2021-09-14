;@ YM2151 sound chip shell.
#ifdef __arm__

#include "YM2151.i"

	.global YM2151Reset
	.global YM2151Mixer
	.global YM2151IndexW
	.global YM2151DataW
	.global YM2151DataR

	.syntax unified
	.arm

	.section .text
	.align 2

;@----------------------------------------------------------------------------
YM2151Mixer:				;@ r0=len, r1=dest, ymptr=r12=pointer to struct
;@----------------------------------------------------------------------------
	bx lr

;@----------------------------------------------------------------------------
YM2151Reset:				;@ r0 = chiptype, ymptr=r12=pointer to struct
;@----------------------------------------------------------------------------
	mov r0,#0
	strb r0,[ymptr,#ymRegIndex]
	bx lr

;@----------------------------------------------------------------------------
YM2151IndexW:
	strb r0,[ymptr,#ymRegIndex]
	bx lr
;@----------------------------------------------------------------------------
YM2151DataW:
	ldrb r1,[ymptr,#ymRegIndex]
	bx lr
;@----------------------------------------------------------------------------
YM2151DataR:
	ldr r0,status
	add r0,r0,#1
	str r0,status
	bx lr
;@----------------------------------------------------------------------------
status:
	.long 0
;@----------------------------------------------------------------------------
	.end
#endif // #ifdef __arm__
