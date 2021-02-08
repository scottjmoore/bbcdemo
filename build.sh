#!/bin/sh

vasm6502_mot -Fbin -L demo.lst -o demo demo.asm && cat demo.lst
