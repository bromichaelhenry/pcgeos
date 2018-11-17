COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) GeoWorks 1992 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		Library/AnsiC
FILE:		bcc_rtl.asm

AUTHOR:		Marcus Groeber, Jun 30 2000

ROUTINES:
	Name			Description
	----			-----------
	
REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	mgroeb	6/30/00		Initial revision

DESCRIPTION:
	Contains the routines required by Borland C for large model programs.

        C/C++ Run Time Library - Version 5.0
  
        Copyright (c) 1987, 1992 by Borland International
        All Rights Reserved.
 
	$Id: $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

BCC_TEXT        SEGMENT BYTE PUBLIC 'CODE'
                ASSUME  CS:BCC_TEXT

        public  F_LDIV@
        public  F_LMOD@
        public  F_LUDIV@
        public  F_LUMOD@
        public  F_LXLSH@
        public  F_LXMUL@
        public  F_LXRSH@
        public  F_LXURSH@
        public  F_PADA@
        public  F_PADD@
        public  F_PCMP@
        public  F_PDEA@
        public  F_PINA@
        public  F_PSBA@
        public  F_PSBP@
        public  F_PSUB@
        public  F_SCOPY@
        public  F_SPUSH@
if 0
        public  LDIV@
        public  LMOD@
        public  LUDIV@
        public  LUMOD@
        public  LXLSH@
        public  LXMUL@
        public  LXRSH@
        public  LXURSH@
        public  PADA@
        public  PADD@
        public  PCMP@
        public  PDEA@
        public  PINA@
        public  PSBA@
        public  PSBP@
        public  PSUB@
        public  SCOPY@
        public  SPUSH@
endif

;[]-----------------------------------------------------------------[]
;|      F_LXMUL.ASM -- long multiply routine                         |
;[]-----------------------------------------------------------------[]

; calls to this routine are generated by the compiler to perform
; long multiplications.

; There is no check for overflow.  Consequently, the same routine
; is used for both signed and unsigned long multiplies.
;
; in:
;       (dx:ax) - 32bit arg1
;       (cx:bx) - 32bit arg2
; out:
;       (dx:ax) - 32bit product
;
; reg use: bx,cx destroyed, all others preserved or contain result.
;
; hi(result) := lo(hi(arg1) * lo(arg2)) +
;               lo(hi(arg2) * lo(arg1)) +
;               hi(lo(arg1) * lo(arg2))
; lo(result) := lo(lo(arg1) * lo(arg2))
;
;
LXMUL@	proc	far
	.fall_thru
LXMUL@	endp
F_LXMUL@	proc	far
                push    si
                xchg    si,ax           ; save lo1
                xchg    ax,dx
                test    ax,ax           ; skip mul if hi1==0
                jz      nohi1
                mul     bx              ; hi1 * lo2

nohi1:          ; if we jumped here, ax==0 so the following swap works
                jcxz    nohi2           ; skip mul if hi2==0
                xchg    cx, ax          ; result <-> hi2
                mul     si              ; lo1 * hi2
                add     ax, cx          ; ax = hi1*lo2 + hi2*lo1
nohi2:
                xchg    ax,si
                mul     bx              ; lo1 * lo2
                add     dx,si           ; hi order result += partials
                pop     si
                ret
F_LXMUL@	endp

;[]-----------------------------------------------------------------[]
;|      F_PCMP.ASM -- long pointer comparison                        |
;[]-----------------------------------------------------------------[]

;       PCMP@ - compares two pointers on the stack, sets the condition codes
;
;       ax,dx   left hand pointer
;       bx,cx   right hand pointer

PCMP@ proc far
	.fall_thru
PCMP@ endp
F_PCMP@	proc	far
                push    cx
                mov     ch,al
                mov     cl,4
                shr     ax,cl
                add     dx,ax
                mov     al,ch
                mov     ah,bl
                shr     bx,cl
                pop     cx
                add     cx,bx           ; right hand pointer segment
                mov     bl,ah
                and     ax,0fh
                and     bx,0fh
                cmp     dx,cx           ; compare segments
                jne     PCMPend
                cmp     ax,bx           ; compare offsets
PCMPend:
                ret
F_PCMP@		endp

;[]-----------------------------------------------------------------[]
;|      F_SCOPY.ASM -- far struct copy routine                       |
;[]-----------------------------------------------------------------[]

; calls to this routine are generated by the compiler to copy
; one "struct" value to another
;
; On entry:
;
;       CX      = Number of bytes to copy

SCOPY@ proc far
	.fall_thru
SCOPY@ endp
F_SCOPY@ proc far
                push    bp
                mov     bp,sp
                push    si
                push    di
                push    ds
                lds     si,dword ptr 6[bp]
                les     di,dword ptr 10[bp]
                cld
                shr     cx, 1
                rep     movsw
                adc     cx, cx
                rep     movsb
                pop     ds
                pop     di
                pop     si
                pop     bp
                ret    8
F_SCOPY@ endp

;[]-----------------------------------------------------------------[]
;|      H_LDIV.ASM -- long division routine                          |
;[]-----------------------------------------------------------------[]

LDIV@ proc far
	.fall_thru
LDIV@ endp
F_LDIV@ proc far
        xor     cx,cx                   ; signed divide
        jmp     short common
F_LDIV@ endp

LUDIV@ proc far
	.fall_thru
LUDIV@ endp

F_LUDIV@ proc far
        mov     cx,1                    ; unsigned divide
        jmp     short common
F_LUDIV@ endp

LMOD@ proc far
	.fall_thru
LMOD@ endp

F_LMOD@ proc far
        mov     cx,2                    ; signed remainder
        jmp     short   common
F_LMOD@ endp

LUMOD@ proc far
	.fall_thru
LUMOD@ endp

F_LUMOD@ proc far
        mov     cx,3                    ; unsigned remainder

;
;       di now contains a two bit control value.  The low order
;       bit (test mask of 1) is on if the operation is unsigned,
;       signed otherwise.  The next bit (test mask of 2) is on if
;       the operation returns the remainder, quotient otherwise.
;
common	label near
        push    bp
        push    si
        push    di
        mov     bp,sp                   ; set up frame
        mov     di,cx
;
;       dividend is pushed last, therefore the first in the args
;       divisor next.
;
        mov     ax,10[bp]               ; get the first low word
        mov     dx,12[bp]               ; get the first high word
        mov     bx,14[bp]               ; get the second low word
        mov     cx,16[bp]               ; get the second high word

        or      cx,cx
        jnz     slow@ldiv               ; both high words are zero

        or      dx,dx
        jz      quick@ldiv

        or      bx,bx
        jz      quick@ldiv              ; if cx:bx == 0 force a zero divide
                                        ; we don't expect this to actually
                                        ; work

slow@ldiv:

        test    di,1                    ; signed divide?
        jnz     positive                ; no: skip
;
;               Signed division should be done.  Convert negative
;               values to positive and do an unsigned division.
;               Store the sign value in the next higher bit of
;               di (test mask of 4).  Thus when we are done, testing
;               that bit will determine the sign of the result.
;
        or      dx,dx                   ; test sign of dividend
        jns     onepos
        neg     dx
        neg     ax
        sbb     dx,0                    ; negate dividend
        or      di,0Ch
onepos:
        or      cx,cx                   ; test sign of divisor
        jns     positive
        neg     cx
        neg     bx
        sbb     cx,0                    ; negate divisor
        xor     di,4
positive:
        mov     bp,cx
        mov     cx,32                   ; shift counter
        push    di                      ; save the flags
;
;       Now the stack looks something like this:
;
;               16[bp]: divisor (high word)
;               14[bp]: divisor (low word)
;               12[bp]: dividend (high word)
;               10[bp]: dividend (low word)
;                8[bp]: return CS
;                6[bp]: return IP
;                4[bp]: previous BP
;                2[bp]: previous SI
;                 [bp]: previous DI
;               -2[bp]: control bits
;                       01 - Unsigned divide
;                       02 - Remainder wanted
;                       04 - Negative quotient
;                       08 - Negative remainder
;
        xor     di,di                   ; fake a 64 bit dividend
        xor     si,si                   ;
xloop:
        shl     ax,1                    ; shift dividend left one bit
        rcl     dx,1
        rcl     si,1
        rcl     di,1
        cmp     di,bp                   ; dividend larger?
        jb      nosub
        ja      subtract
        cmp     si,bx                   ; maybe
        jb      nosub
subtract:
        sub     si,bx
        sbb     di,bp                   ; subtract the divisor
        inc     ax                      ; build quotient
nosub:
        loop    xloop
;
;       When done with the loop the four register value look like:
;
;       |     di     |     si     |     dx     |     ax     |
;       |        remainder        |         quotient        |
;
        pop     bx                      ; get control bits
        test    bx,2                    ; remainder?
        jz      usequo
        mov     ax,si
        mov     dx,di                   ; use remainder
        shr     bx,1                    ; shift in the remainder sign bit
usequo:
        test    bx,4                    ; needs negative
        jz      finish
        neg     dx
        neg     ax
        sbb     dx,0                    ; negate
finish:
        pop     di
        pop     si
        pop     bp
        retf    8

quick@ldiv:
        div     bx                      ; unsigned divide
                                        ; DX = remainder AX = quotient
        test    di,2                    ; want remainder?
        jz      quick@quo
        xchg    ax,dx

quick@quo:

        xor     dx,dx
        jmp     short finish

F_LUMOD@ endp

;[]-----------------------------------------------------------------[]
;|      H_LLSH.ASM -- long shift left                                |
;[]-----------------------------------------------------------------[]

LXLSH@ proc far
	.fall_thru
LXLSH@ endp

F_LXLSH@ proc far
        cmp     cl,16
        jae     llsh@small
        mov     bx,ax                   ; save the low bits
        shl     ax,cl                   ; now shift each half
        shl     dx,cl
;
;                       We now have a hole in DX where the upper bits of
;                       AX should have been shifted.  So we must take our
;                       copy of AX and do a reverse shift to get the proper
;                       bits to be or'ed into DX.
;
        neg     cl
        add     cl,16
        shr     bx,cl
        or      dx,bx
        retf
llsh@small:
        sub     cl,16                   ; for shifts more than 15, do this
                                        ; short sequence.
        xchg    ax,dx
        xor     ax,ax                   ; We have now done a shift by 16.
        shl     dx,cl                   ; Now shift the remainder.
        ret
F_LXLSH@ endp

;[]-----------------------------------------------------------------[]
;|      H_LRSH.ASM -- long shift right                               |
;[]-----------------------------------------------------------------[]

LXRSH@ proc far
	.fall_thru
LXRSH@ endp

F_LXRSH@ proc far
        cmp     cl,16
        jae     lrsh@small
        mov     bx,dx                   ; save the high bits
        shr     ax,cl                   ; now shift each half
        sar     dx,cl
;
;                       We now have a hole in AX where the lower bits of
;                       DX should have been shifted.  So we must take our
;                       copy of DX and do a reverse shift to get the proper
;                       bits to be or'ed into AX.
;
        neg     cl
        add     cl,16
        shl     bx,cl
        or      ax,bx
        ret
lrsh@small:
        sub     cl,16                   ; for shifts more than 15, do this
                                        ; short sequence.
        xchg    ax,dx                   ;
        cwd                             ; We have now done a shift by 16.
        sar     ax,cl                   ; Now shift the remainder.
        ret
F_LXRSH@ endp

;[]-----------------------------------------------------------------[]
;|      H_LURSH.ASM -- long shift right                              |
;[]-----------------------------------------------------------------[]

LXURSH@ proc far
	.fall_thru
LXURSH@ endp

F_LXURSH@ proc far
        cmp     cl,16
        jae     lsh@small
        mov     bx,dx                   ; save the high bits
        shr     ax,cl                   ; now shift each half
        shr     dx,cl
;
;                       We now have a hole in AX where the lower bits of
;                       DX should have been shifted.  So we must take our
;                       copy of DX and do a reverse shift to get the proper
;                       bits to be or'ed into AX.
;
        neg     cl
        add     cl,16
        shl     bx,cl
        or      ax,bx
        ret
lsh@small:
        sub     cl,16                   ; for shifts more than 15, do this
                                        ; short sequence.
        xchg    ax,dx
        xor     dx,dx                   ; We have now done a shift by 16.
        shr     ax,cl                   ; Now shift the remainder.
        ret
F_LXURSH@ endp

;[]-----------------------------------------------------------------[]
;|      H_PADA.ASM -- long pointer routines                          |
;[]-----------------------------------------------------------------[]

; calls to these routines are generated by the compiler to perform
; arithmetic operations on long pointers.

PADA@		proc far
		.fall_thru
PADA@		endp

F_PADA@		proc far
                mov     es,dx
                xchg    ax,bx
;
;               Pointer to memory cell to increment is in es:bx
;               Increment amount is ax:cx
;
                mov     dx, es:2[bx]    ; DX <- Selector
                push    bx
                mov     bx, es:[bx]     ; BX <- Offset
                or      cx,cx           ; Is increment negative?
                jge     ada1            ; No, ...
                not     ax              ; Yes, ...
                not     cx
                add     ax,1
                adc     cx,0
                jmp     sba1
ada1 label near
                add     bx,ax           ; Add offsets
                jnc     adaok
                add     dx,1000h
adaok:
                mov     ah,cl
                mov     cl,4
                shl     ah,cl
                xor     al,al
                add     dx,ax
                mov     ch,bl
                shr     bx,cl
                add     dx,bx
                mov     al,ch
                and     ax,0fh
                pop     bx
                mov     es:[bx], ax
                mov     es:2[bx], dx
                ret
F_PADA@		endp

PSBA@		proc	far
		.fall_thru
PSBA@		endp

F_PSBA@		proc	far
                mov     es,dx
                xchg    ax,bx
;
;               Pointer to memory cell to increment is in es:bx
;               Increment amount is ax:cx
;
                mov     dx,es:2[bx]
                push    bx
                mov     bx,es:[bx]
                or      cx,cx
                jge     sba1
                not     ax
                not     cx
                add     ax,1
                adc     cx,0
                jmp     ada1
sba1 label near
                sub     bx,ax
                jnc     sbaok
                sub     dx,1000h
sbaok:
                mov     ah,cl
                mov     cl,4
                shl     ah,cl
                xor     al,al
                sub     dx,ax
                mov     ch,bl
                shr     bx,cl
                add     dx,bx
                mov     al,ch
                and     ax,0fh
                pop     bx
                mov     es:[bx],ax
                mov     es:2[bx],dx
                ret
F_PSBA@		endp

;[]-----------------------------------------------------------------[]
;|      H_PADD.ASM -- long pointer routines                          |
;[]-----------------------------------------------------------------[]

; calls to these routines are generated by the compiler to perform
; arithmetic operations on huge pointers.

PADD@		proc	far
		.fall_thru
PADD@		endp

F_PADD@		proc	far
                or      cx,cx
                jge     add1
                not     bx
                not     cx
                add     bx,1
                adc     cx,0
                jmp     sub1
add1 label near
                add     ax,bx
                jnc     addok
                add     dx,1000h
addok:
                mov     ch,cl
                mov     cl,4
                shl     ch,cl
                add     dh,ch
                mov     ch,al
                shr     ax,cl
                add     dx,ax
                mov     al,ch
                and     ax,0fh
                ret
F_PADD@		endp

PSUB@		proc	far
		.fall_thru
PSUB@		endp

F_PSUB@		proc	far
                or      cx,cx
                jge     sub1
                not     bx
                not     cx
                add     bx,1
                adc     cx,0
                jmp     add1
sub1 label near
                sub     ax,bx
                jnc     subok
                sub     dx,1000h
subok:
                mov     bh,cl
                mov     cl,4
                shl     bh,cl
                xor     bl,bl
                sub     dx,bx
                mov     ch,al
                shr     ax,cl
                add     dx,ax
                mov     al,ch
                and     ax,0fh
                ret
F_PSUB@		endp

;[]-----------------------------------------------------------------[]
;|      H_PINA.ASM -- long pointer routines                          |
;[]-----------------------------------------------------------------[]

; calls to these routines are generated by the compiler to perform
; arithmetic operations on long pointers.
PINA@		proc	far
		.fall_thru
PINA@		endp
F_PINA@		proc	far
;
;               Pointer to memory cell to increment is in es:bx
;               Increment amount is ax
;               This routine trashes cl

                mov     cl,4
                add     ax,es:[bx]
                mov     dx,ax
                jc      inacarry
                shr     dx,cl
                add     dx,es:2[bx]
                and     ax,0fh
                xchg    es:[bx],ax
                xchg    es:2[bx],dx
                ret
inacarry:
                shr     dx,cl
                add     dx,es:2[bx]
                add     dx,1000H
                and     ax,0fh
                xchg    es:[bx],ax
                xchg    es:2[bx],dx
                ret
F_PINA@		endp

PDEA@		proc	far
		.fall_thru
PDEA@		endp
F_PDEA@		proc	far
;
;               Pointer to memory cell to increment is in es:bx
;               Decrement amount is ax
;               This routine trashes cl

                mov     cl,4
                mov     dx,es:[bx]
                sub     dx,ax
                mov     ax,dx
                jc      deacarry
                shr     dx,cl
                add     dx,es:2[bx]
                and     ax,0fh
                xchg    es:[bx],ax
                xchg    es:2[bx],dx
                ret
deacarry:
                shr     dx,cl
                add     dx,es:2[bx]
                sub     dx,1000H
                and     ax,0fh
                xchg    es:[bx],ax
                xchg    es:2[bx],dx
                ret
F_PDEA@		endp

;[]-----------------------------------------------------------------[]
;|      H_PSBP.ASM -- long pointer routines                          |
;[]-----------------------------------------------------------------[]

; calls to these routines are generated by the compiler to perform
; arithmetic operations on long pointers.
;
;       ax:dx   left hand pointer
;       bx:cx   right hand pointer
;
;               To subtract, first convert both pointers to longs.
;               then do a simple signed long subtraction.  Actually
;               we only store 24 bit ints until the subtraction is
;               done.
;
PSBP@		proc	far
		.fall_thru
PSBP@		endp

F_PSBP@		proc	far
                push    di
                mov     di,cx
                mov     ch,dh
                mov     cl,4
                shl     dx,cl
                shr     ch,cl           ; dx:ch has the left hand long
                add     dx,ax
                adc     ch,0
                mov     ax,di
                shl     di,cl
                shr     ah,cl
                add     bx,di
                adc     ah,0            ; bx:ah has the right hand long
                sub     dx,bx
                sbb     ch,ah
                mov     al,ch
                cbw                     ; sign extend the upper part
                xchg    ax,dx
                pop     di
                ret
F_PSBP@		endp

;[]-----------------------------------------------------------------[]
;|      H_SPUSH.ASM -- struct argument routine                       |
;[]-----------------------------------------------------------------[]

; calls to this routine are generated by the compiler to copy
; a "struct" argument to the stack
;
; DX:AX = address of struct to copy to stack
; CX    = size of struct, in bytes
;
SPUSH@		proc	far
		.fall_thru
SPUSH@		endp

F_SPUSH@	proc	far
                pop     bx              ;fetch return address off stack
                pop     es
                sub     sp,cx           ;make room on stack for struct
                push    es              ;save return address back on stack
                push    bx

                push    di              ;save regs
                push    ds

                mov     di,sp           ;set up di for move
                add     di,8
                mov     bx,ss           ;es = ss for move
                mov     es,bx
                mov     ds,dx           ;set up ds for move
                xchg    ax,si           ;set up si for move (also saves si)

                cld
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb

                xchg    si,ax           ;restore si
                pop     ds
                pop     di
                ret
F_SPUSH@	endp


BCC_TEXT        ENDS
