  ; OR delete this line and open device manually

name "traffic"

    ; turn all lights red at start
    mov ax, all_red
    out 4, ax

    mov si, offset situation   ; point to first state

next_state:
    mov ax, [si]               ; load current pattern
    out 4, ax                  ; send to Traffic_Lights device (port 4)

    ; -------- delay ~1 second (no overflow) --------
    mov cx, 000Fh              ; 000F4240h = 1,000,000 microseconds
    mov dx, 4240h
    mov ah, 86h
    int 15h
    ; ----------------------------------------------

    add si, 2                  ; next 16-bit entry
    cmp si, sit_end            ; end of table?
    jb  next_state
    mov si, offset situation   ; restart from first
    jmp next_state             ; loop forever


;================= STATE TABLE =================
;            FEDC_BA98_7654_3210
situation   dw 0000_0011_0000_1100b   ; state 0
s1          dw 0000_0110_1001_1010b   ; state 1
s2          dw 0000_1000_0110_0001b   ; state 2
s3          dw 0000_1000_0110_0001b   ; state 3
s4          dw 0000_0100_1101_0011b   ; state 4
sit_end = $

all_red     equ 0000_0010_0100_1001b
