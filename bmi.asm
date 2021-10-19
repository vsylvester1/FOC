.LC0:
        .string "Please Enter your weight in Pounds : "
.LC1:
        .string "Please Enter your Height in Inches : "
.LC3:
        .string "Your BMI is : "
.LC5:
        .string "Overweight"
.LC7:
        .string "Optimal"
.LC8:
        .string "Underweight"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        lea     rax, [rbp-8]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:_ZSt3cin
        call    std::basic_istream<char, std::char_traits<char> >::operator>>(float&)
        mov     esi, OFFSET FLAT:.LC1
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        lea     rax, [rbp-12]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:_ZSt3cin
        call    std::basic_istream<char, std::char_traits<char> >::operator>>(float&)
        movss   xmm1, DWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR .LC2[rip]
        mulss   xmm0, xmm1
        movss   xmm2, DWORD PTR [rbp-12]
        movss   xmm1, DWORD PTR [rbp-12]
        mulss   xmm1, xmm2
        divss   xmm0, xmm1
        movss   DWORD PTR [rbp-4], xmm0
        mov     esi, OFFSET FLAT:.LC3
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-4]
        mov     DWORD PTR [rbp-20], eax
        movss   xmm0, DWORD PTR [rbp-20]
        mov     rdi, rdx
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(float)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        movss   xmm0, DWORD PTR [rbp-4]
        ucomiss xmm0, DWORD PTR .LC4[rip]
        jbe     .L14
        mov     esi, OFFSET FLAT:.LC5
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        jmp     .L4
.L14:
        movss   xmm0, DWORD PTR .LC4[rip]
        ucomiss xmm0, DWORD PTR [rbp-4]
        jbe     .L5
        movss   xmm0, DWORD PTR [rbp-4]
        ucomiss xmm0, DWORD PTR .LC6[rip]
        jbe     .L5
        mov     esi, OFFSET FLAT:.LC7
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        jmp     .L4
.L5:
        mov     esi, OFFSET FLAT:.LC8
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
.L4:
        mov     eax, 0
        jmp     .L15
        mov     rdi, rax
        call    _Unwind_Resume
.L15:
        leave
        ret
__static_initialization_and_destruction_0(int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     DWORD PTR [rbp-8], esi
        cmp     DWORD PTR [rbp-4], 1
        jne     .L16
        cmp     DWORD PTR [rbp-8], 65535
        jne     .L16
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
.L16:
        leave
        ret
_GLOBAL__sub_I_main:
        push    rbp
        mov     rbp, rsp
        mov     esi, 65535
        mov     edi, 1
        call    __static_initialization_and_destruction_0(int, int)
        pop     rbp
        ret
.LC2:
        .long   1143980032
.LC4:
        .long   1103626240
.LC6:
        .long   1100218368