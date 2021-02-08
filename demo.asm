start
    org $2000

    ldx #$7f
    ldy #$08
inline
    dec $3000,x
    dex
    bpl inline
    ldx #$7f
    lda inline+1
    adc #$80
    sta inline+1
    lda inline+2
    adc #$02
    sta inline+2
    dey
    bne inline
    rts
    
