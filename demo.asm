start
    org $2000

    ldx #$3f
    ldy #$04
inline
    dec $3000,x
    dex
    bpl inline
    ldx #$3f
    lda inline+1
    adc #$80
    sta inline+1
    lda inline+2
    adc #$02
    sta inline+2
    dey
    bne inline
    rts
    
