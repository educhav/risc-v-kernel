.option norvc
.section .data

.section .text.init
.global _start

# start boot sequence here
_start:
    # pause other threads during boot sequence
    csrr t0, mhartid
    bnez t0, _wait

    # TODO: boot sequence
    wfi

_wait:
    wfi
