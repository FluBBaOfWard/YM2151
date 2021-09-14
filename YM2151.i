;@ ASM header for the YM2151 emulator
;@

	ymptr			.req r12

							;@ YM2151.s
	.struct 0
	ymRegisters:	.space 256
	ymRegIndex:		.byte 0
	ymPadding:		.space 3

	ymSize:

;@----------------------------------------------------------------------------

