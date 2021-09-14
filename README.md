# YM2151
YM2151 sound chip emulator shell for ARM32

First alloc chip struct, call init then set in/out function pointers.
Call YM2151Mixer with chip struct, length and destination.
Produces 16bit nono.
