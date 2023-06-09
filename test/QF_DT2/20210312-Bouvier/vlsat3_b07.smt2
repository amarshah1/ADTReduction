(set-info :smt-lib-version 2.6)
(set-logic QF_DT)
(set-info :source |
Generated by: Pierre Bouvier
Generated on: 2021-03-12
Application: Automatic decomposition of Petri Nets into Automata Networks
Target solver: CVC4, Z3
Publications:

[1] Pierre Bouvier, Hubert Garavel, and Hernan Ponce de Leon.
    "Automatic Decomposition of Petri Nets into Automata Networks -
    A Synthetic Account". Proceedings PETRI NETS 2020, LNCS 12152,
    Springer. https://doi.org/10.1007/978-3-030-51831-8_1

[2] Hubert Garavel. "Nested-Unit Petri Nets". Journal of Logical
    and Algebraic Methods in Programming, vol. 104, Elsevier, 2019. 
    https://doi.org/10.1016/j.jlamp.2018.11.005

In [1], several methods for decomposing an ordinary, safe Petri net
into a flat, unit-safe NUPN [2], have been proposed. These methods
are implemented in a complete tool chain involving SAT solvers, SMT
solvers, and tools for graph coloring and finding maximal cliques.
From a data set of 12,000+ NUPN models, 51,000+ SMT formulas have
been generated, out of which a subset of 1200 interesting formulas
to be used as SMT-LIB 2.6 benchmarks was carefully selected.

Original filename: vlsat3_b07.smt2

Specific parameters for the present benchmark:
- number of places: 48
- number of units: 21
- number of edges in the concurrency graph: 1065
- number of variables: 48
- number of uninterpreted functions: 0
- number of asserts: 1085
- total number of operators in asserts: 3673
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)

(declare-datatypes ((Unit 0)) (((u0) (u1) (u2) (u3) (u4) (u5) (u6) (u7) (u8) (u9) (u10) (u11) (u12) (u13) (u14) (u15) (u16) (u17) (u18) (u19) (u20))))
(declare-fun p1 () Unit)
(declare-fun p2 () Unit)
(declare-fun p3 () Unit)
(declare-fun p4 () Unit)
(declare-fun p5 () Unit)
(declare-fun p6 () Unit)
(declare-fun p7 () Unit)
(declare-fun p8 () Unit)
(declare-fun p9 () Unit)
(declare-fun p10 () Unit)
(declare-fun p11 () Unit)
(declare-fun p12 () Unit)
(declare-fun p13 () Unit)
(declare-fun p14 () Unit)
(declare-fun p15 () Unit)
(declare-fun p16 () Unit)
(declare-fun p22 () Unit)
(declare-fun p23 () Unit)
(declare-fun p24 () Unit)
(declare-fun p25 () Unit)
(declare-fun p26 () Unit)
(declare-fun p27 () Unit)
(declare-fun p28 () Unit)
(declare-fun p29 () Unit)
(declare-fun p30 () Unit)
(declare-fun p31 () Unit)
(declare-fun p32 () Unit)
(declare-fun p33 () Unit)
(declare-fun p34 () Unit)
(declare-fun p35 () Unit)
(declare-fun p36 () Unit)
(declare-fun p37 () Unit)
(declare-fun p43 () Unit)
(declare-fun p49 () Unit)
(declare-fun p50 () Unit)
(declare-fun p51 () Unit)
(declare-fun p52 () Unit)
(declare-fun p53 () Unit)
(declare-fun p54 () Unit)
(declare-fun p55 () Unit)
(declare-fun p56 () Unit)
(declare-fun p57 () Unit)
(declare-fun p58 () Unit)
(declare-fun p59 () Unit)
(declare-fun p60 () Unit)
(declare-fun p61 () Unit)
(declare-fun p62 () Unit)
(declare-fun p63 () Unit)
(assert (= p1 u0))
(assert (or (= p2 u0) (= p2 u1)))
(assert (or (= p3 u0) (= p3 u1) (= p3 u2)))
(assert (or (= p4 u0) (= p4 u1) (= p4 u2) (= p4 u3)))
(assert (or (= p5 u0) (= p5 u1) (= p5 u2) (= p5 u3) (= p5 u4)))
(assert (or (= p6 u0) (= p6 u1) (= p6 u2) (= p6 u3) (= p6 u4) (= p6 u5)))
(assert (or (= p7 u0) (= p7 u1) (= p7 u2) (= p7 u3) (= p7 u4) (= p7 u5) (= p7 u6)))
(assert (or (= p8 u0) (= p8 u1) (= p8 u2) (= p8 u3) (= p8 u4) (= p8 u5) (= p8 u6) (= p8 u7)))
(assert (or (= p9 u0) (= p9 u1) (= p9 u2) (= p9 u3) (= p9 u4) (= p9 u5) (= p9 u6) (= p9 u7) (= p9 u8)))
(assert (or (= p10 u0) (= p10 u1) (= p10 u2) (= p10 u3) (= p10 u4) (= p10 u5) (= p10 u6) (= p10 u7) (= p10 u8) (= p10 u9)))
(assert (or (= p11 u0) (= p11 u1) (= p11 u2) (= p11 u3) (= p11 u4) (= p11 u5) (= p11 u6) (= p11 u7) (= p11 u8) (= p11 u9) (= p11 u10)))
(assert (or (= p12 u0) (= p12 u1) (= p12 u2) (= p12 u3) (= p12 u4) (= p12 u5) (= p12 u6) (= p12 u7) (= p12 u8) (= p12 u9) (= p12 u10) (= p12 u11)))
(assert (or (= p13 u0) (= p13 u1) (= p13 u2) (= p13 u3) (= p13 u4) (= p13 u5) (= p13 u6) (= p13 u7) (= p13 u8) (= p13 u9) (= p13 u10) (= p13 u11) (= p13 u12)))
(assert (or (= p14 u0) (= p14 u1) (= p14 u2) (= p14 u3) (= p14 u4) (= p14 u5) (= p14 u6) (= p14 u7) (= p14 u8) (= p14 u9) (= p14 u10) (= p14 u11) (= p14 u12) (= p14 u13)))
(assert (or (= p15 u0) (= p15 u1) (= p15 u2) (= p15 u3) (= p15 u4) (= p15 u5) (= p15 u6) (= p15 u7) (= p15 u8) (= p15 u9) (= p15 u10) (= p15 u11) (= p15 u12) (= p15 u13) (= p15 u14)))
(assert (or (= p16 u0) (= p16 u1) (= p16 u2) (= p16 u3) (= p16 u4) (= p16 u5) (= p16 u6) (= p16 u7) (= p16 u8) (= p16 u9) (= p16 u10) (= p16 u11) (= p16 u12) (= p16 u13) (= p16 u14) (= p16 u15)))
(assert (or (= p22 u0) (= p22 u1) (= p22 u2) (= p22 u3) (= p22 u4) (= p22 u5) (= p22 u6) (= p22 u7) (= p22 u8) (= p22 u9) (= p22 u10) (= p22 u11) (= p22 u12) (= p22 u13) (= p22 u14) (= p22 u15) (= p22 u16)))
(assert (or (= p23 u0) (= p23 u1) (= p23 u2) (= p23 u3) (= p23 u4) (= p23 u5) (= p23 u6) (= p23 u7) (= p23 u8) (= p23 u9) (= p23 u10) (= p23 u11) (= p23 u12) (= p23 u13) (= p23 u14) (= p23 u15) (= p23 u16) (= p23 u17)))
(assert (or (= p24 u0) (= p24 u1) (= p24 u2) (= p24 u3) (= p24 u4) (= p24 u5) (= p24 u6) (= p24 u7) (= p24 u8) (= p24 u9) (= p24 u10) (= p24 u11) (= p24 u12) (= p24 u13) (= p24 u14) (= p24 u15) (= p24 u16) (= p24 u17) (= p24 u18)))
(assert (or (= p25 u0) (= p25 u1) (= p25 u2) (= p25 u3) (= p25 u4) (= p25 u5) (= p25 u6) (= p25 u7) (= p25 u8) (= p25 u9) (= p25 u10) (= p25 u11) (= p25 u12) (= p25 u13) (= p25 u14) (= p25 u15) (= p25 u16) (= p25 u17) (= p25 u18) (= p25 u19)))
(assert (distinct p32 p54))
(assert (distinct p22 p57))
(assert (distinct p5 p31))
(assert (distinct p29 p50))
(assert (distinct p3 p35))
(assert (distinct p33 p55))
(assert (distinct p23 p60))
(assert (distinct p6 p28))
(assert (distinct p4 p36))
(assert (distinct p54 p58))
(assert (distinct p34 p52))
(assert (distinct p8 p63))
(assert (distinct p7 p25))
(assert (distinct p5 p57))
(assert (distinct p9 p62))
(assert (distinct p23 p26))
(assert (distinct p6 p54))
(assert (distinct p30 p51))
(assert (distinct p10 p61))
(assert (distinct p7 p55))
(assert (distinct p13 p32))
(assert (distinct p14 p31))
(assert (distinct p12 p59))
(assert (distinct p15 p30))
(assert (distinct p13 p58))
(assert (distinct p11 p22))
(assert (distinct p1 p28))
(assert (distinct p49 p58))
(assert (distinct p2 p27))
(assert (distinct p24 p52))
(assert (distinct p14 p43))
(assert (distinct p1 p54))
(assert (distinct p25 p49))
(assert (distinct p15 p34))
(assert (distinct p51 p60))
(assert (distinct p4 p5))
(assert (distinct p2 p53))
(assert (distinct p26 p54))
(assert (distinct p52 p63))
(assert (distinct p56 p58))
(assert (distinct p5 p24))
(assert (distinct p53 p62))
(assert (distinct p23 p53))
(assert (distinct p6 p23))
(assert (distinct p57 p59))
(assert (distinct p4 p35))
(assert (distinct p28 p32))
(assert (distinct p54 p61))
(assert (distinct p7 p22))
(assert (distinct p32 p35))
(assert (distinct p5 p34))
(assert (distinct p29 p37))
(assert (distinct p59 p61))
(assert (distinct p33 p34))
(assert (distinct p30 p58))
(assert (distinct p10 p36))
(assert (distinct p8 p12))
(assert (distinct p31 p51))
(assert (distinct p61 p63))
(assert (distinct p35 p52))
(assert (distinct p16 p60))
(assert (distinct p12 p50))
(assert (distinct p36 p55))
(assert (distinct p10 p14))
(assert (distinct p13 p51))
(assert (distinct p37 p54))
(assert (distinct p11 p15))
(assert (distinct p49 p51))
(assert (distinct p50 p56))
(assert (distinct p24 p59))
(assert (distinct p14 p50))
(assert (distinct p3 p11))
(assert (distinct p25 p58))
(assert (distinct p15 p43))
(assert (distinct p4 p12))
(assert (distinct p2 p12))
(assert (distinct p26 p49))
(assert (distinct p24 p33))
(assert (distinct p27 p60))
(assert (distinct p1 p33))
(assert (distinct p23 p50))
(assert (distinct p6 p14))
(assert (distinct p57 p60))
(assert (distinct p28 p63))
(assert (distinct p58 p59))
(assert (distinct p7 p15))
(assert (distinct p32 p58))
(assert (distinct p5 p43))
(assert (distinct p29 p62))
(assert (distinct p3 p55))
(assert (distinct p33 p59))
(assert (distinct p16 p29))
(assert (distinct p6 p32))
(assert (distinct p30 p61))
(assert (distinct p8 p51))
(assert (distinct p7 p37))
(assert (distinct p31 p56))
(assert (distinct p5 p53))
(assert (distinct p35 p61))
(assert (distinct p9 p50))
(assert (distinct p16 p51))
(assert (distinct p6 p58))
(assert (distinct p36 p62))
(assert (distinct p8 p25))
(assert (distinct p37 p63))
(assert (distinct p24 p28))
(assert (distinct p49 p52))
(assert (distinct p11 p26))
(assert (distinct p26 p30))
(assert (distinct p50 p51))
(assert (distinct p14 p53))
(assert (distinct p12 p29))
(assert (distinct p27 p31))
(assert (distinct p4 p11))
(assert (distinct p2 p7))
(assert (distinct p26 p56))
(assert (distinct p5 p10))
(assert (distinct p3 p22))
(assert (distinct p27 p53))
(assert (distinct p1 p58))
(assert (distinct p25 p37))
(assert (distinct p28 p54))
(assert (distinct p2 p33))
(assert (distinct p26 p34))
(assert (distinct p32 p49))
(assert (distinct p29 p55))
(assert (distinct p3 p60))
(assert (distinct p27 p43))
(assert (distinct p33 p60))
(assert (distinct p23 p33))
(assert (distinct p6 p27))
(assert (distinct p30 p36))
(assert (distinct p4 p63))
(assert (distinct p34 p59))
(assert (distinct p8 p58))
(assert (distinct p7 p34))
(assert (distinct p31 p33))
(assert (distinct p5 p62))
(assert (distinct p9 p59))
(assert (distinct p23 p31))
(assert (distinct p6 p61))
(assert (distinct p12 p32))
(assert (distinct p36 p37))
(assert (distinct p7 p56))
(assert (distinct p13 p37))
(assert (distinct p37 p56))
(assert (distinct p11 p61))
(assert (distinct p9 p29))
(assert (distinct p14 p26))
(assert (distinct p12 p62))
(assert (distinct p10 p26))
(assert (distinct p13 p63))
(assert (distinct p14 p60))
(assert (distinct p1 p25))
(assert (distinct p15 p57))
(assert (distinct p13 p25))
(assert (distinct p2 p30))
(assert (distinct p3 p31))
(assert (distinct p1 p51))
(assert (distinct p51 p57))
(assert (distinct p4 p24))
(assert (distinct p2 p56))
(assert (distinct p22 p63))
(assert (distinct p5 p29))
(assert (distinct p3 p37))
(assert (distinct p27 p32))
(assert (distinct p33 p53))
(assert (distinct p23 p62))
(assert (distinct p54 p56))
(assert (distinct p28 p43))
(assert (distinct p34 p50))
(assert (distinct p8 p33))
(assert (distinct p7 p27))
(assert (distinct p55 p61))
(assert (distinct p35 p43))
(assert (distinct p9 p60))
(assert (distinct p16 p33))
(assert (distinct p6 p52))
(assert (distinct p30 p49))
(assert (distinct p10 p59))
(assert (distinct p7 p49))
(assert (distinct p31 p52))
(assert (distinct p11 p50))
(assert (distinct p35 p49))
(assert (distinct p14 p29))
(assert (distinct p12 p53))
(assert (distinct p15 p24))
(assert (distinct p13 p56))
(assert (distinct p49 p56))
(assert (distinct p2 p25))
(assert (distinct p50 p63))
(assert (distinct p24 p54))
(assert (distinct p3 p4))
(assert (distinct p1 p52))
(assert (distinct p25 p55))
(assert (distinct p51 p62))
(assert (distinct p4 p7))
(assert (distinct p2 p51))
(assert (distinct p26 p52))
(assert (distinct p52 p57))
(assert (distinct p22 p54))
(assert (distinct p5 p6))
(assert (distinct p56 p60))
(assert (distinct p53 p60))
(assert (distinct p27 p57))
(assert (distinct p23 p55))
(assert (distinct p28 p34))
(assert (distinct p58 p62))
(assert (distinct p7 p16))
(assert (distinct p32 p37))
(assert (distinct p5 p32))
(assert (distinct p29 p35))
(assert (distinct p9 p37))
(assert (distinct p59 p63))
(assert (distinct p16 p24))
(assert (distinct p30 p56))
(assert (distinct p36 p43))
(assert (distinct p10 p34))
(assert (distinct p8 p14))
(assert (distinct p31 p61))
(assert (distinct p11 p43))
(assert (distinct p35 p54))
(assert (distinct p9 p15))
(assert (distinct p16 p62))
(assert (distinct p36 p49))
(assert (distinct p10 p12))
(assert (distinct p13 p49))
(assert (distinct p37 p52))
(assert (distinct p10 p22))
(assert (distinct p2 p16))
(assert (distinct p50 p54))
(assert (distinct p24 p61))
(assert (distinct p3 p13))
(assert (distinct p25 p56))
(assert (distinct p15 p53))
(assert (distinct p4 p14))
(assert (distinct p2 p10))
(assert (distinct p26 p63))
(assert (distinct p24 p35))
(assert (distinct p5 p15))
(assert (distinct p27 p62))
(assert (distinct p25 p34))
(assert (distinct p6 p12))
(assert (distinct p28 p57))
(assert (distinct p2 p36))
(assert (distinct p7 p9))
(assert (distinct p32 p60))
(assert (distinct p29 p60))
(assert (distinct p3 p57))
(assert (distinct p33 p57))
(assert (distinct p16 p31))
(assert (distinct p30 p35))
(assert (distinct p4 p50))
(assert (distinct p34 p62))
(assert (distinct p8 p53))
(assert (distinct p31 p58))
(assert (distinct p5 p51))
(assert (distinct p11 p32))
(assert (distinct p35 p63))
(assert (distinct p16 p53))
(assert (distinct p6 p56))
(assert (distinct p12 p43))
(assert (distinct p36 p56))
(assert (distinct p10 p55))
(assert (distinct p8 p27))
(assert (distinct p7 p61))
(assert (distinct p37 p61))
(assert (distinct p9 p26))
(assert (distinct p24 p30))
(assert (distinct p25 p31))
(assert (distinct p11 p28))
(assert (distinct p26 p28))
(assert (distinct p14 p59))
(assert (distinct p12 p31))
(assert (distinct p15 p50))
(assert (distinct p13 p30))
(assert (distinct p2 p5))
(assert (distinct p5 p8))
(assert (distinct p3 p24))
(assert (distinct p27 p55))
(assert (distinct p1 p56))
(assert (distinct p25 p43))
(assert (distinct p6 p7))
(assert (distinct p52 p53))
(assert (distinct p26 p32))
(assert (distinct p32 p51))
(assert (distinct p22 p58))
(assert (distinct p2 p63))
(assert (distinct p29 p53))
(assert (distinct p3 p62))
(assert (distinct p33 p50))
(assert (distinct p16 p22))
(assert (distinct p6 p25))
(assert (distinct p23 p35))
(assert (distinct p4 p57))
(assert (distinct p34 p57))
(assert (distinct p8 p60))
(assert (distinct p7 p28))
(assert (distinct p31 p35))
(assert (distinct p5 p60))
(assert (distinct p35 p36))
(assert (distinct p9 p57))
(assert (distinct p23 p25))
(assert (distinct p6 p51))
(assert (distinct p12 p34))
(assert (distinct p10 p62))
(assert (distinct p7 p58))
(assert (distinct p13 p35))
(assert (distinct p11 p63))
(assert (distinct p14 p24))
(assert (distinct p12 p56))
(assert (distinct p10 p24))
(assert (distinct p15 p29))
(assert (distinct p13 p61))
(assert (distinct p12 p22))
(assert (distinct p1 p31))
(assert (distinct p15 p59))
(assert (distinct p13 p23))
(assert (distinct p2 p28))
(assert (distinct p24 p49))
(assert (distinct p14 p36))
(assert (distinct p1 p49))
(assert (distinct p51 p59))
(assert (distinct p15 p33))
(assert (distinct p4 p26))
(assert (distinct p2 p54))
(assert (distinct p26 p43))
(assert (distinct p52 p60))
(assert (distinct p22 p61))
(assert (distinct p5 p27))
(assert (distinct p27 p34))
(assert (distinct p1 p43))
(assert (distinct p23 p56))
(assert (distinct p6 p16))
(assert (distinct p4 p32))
(assert (distinct p28 p37))
(assert (distinct p54 p62))
(assert (distinct p8 p35))
(assert (distinct p5 p37))
(assert (distinct p55 p63))
(assert (distinct p9 p34))
(assert (distinct p16 p35))
(assert (distinct p30 p55))
(assert (distinct p10 p57))
(assert (distinct p7 p51))
(assert (distinct p31 p54))
(assert (distinct p11 p52))
(assert (distinct p35 p51))
(assert (distinct p16 p57))
(assert (distinct p12 p55))
(assert (distinct p36 p52))
(assert (distinct p15 p26))
(assert (distinct p13 p54))
(assert (distinct p12 p13))
(assert (distinct p49 p62))
(assert (distinct p2 p23))
(assert (distinct p50 p61))
(assert (distinct p24 p56))
(assert (distinct p3 p6))
(assert (distinct p25 p53))
(assert (distinct p2 p49))
(assert (distinct p26 p50))
(assert (distinct p52 p59))
(assert (distinct p22 p52))
(assert (distinct p56 p62))
(assert (distinct p53 p58))
(assert (distinct p27 p59))
(assert (distinct p23 p49))
(assert (distinct p6 p11))
(assert (distinct p57 p63))
(assert (distinct p28 p60))
(assert (distinct p2 p43))
(assert (distinct p58 p60))
(assert (distinct p29 p33))
(assert (distinct p3 p50))
(assert (distinct p9 p43))
(assert (distinct p16 p26))
(assert (distinct p30 p62))
(assert (distinct p4 p53))
(assert (distinct p10 p32))
(assert (distinct p31 p63))
(assert (distinct p35 p56))
(assert (distinct p9 p13))
(assert (distinct p36 p51))
(assert (distinct p8 p22))
(assert (distinct p37 p50))
(assert (distinct p9 p23))
(assert (distinct p24 p25))
(assert (distinct p49 p55))
(assert (distinct p11 p25))
(assert (distinct p50 p52))
(assert (distinct p24 p63))
(assert (distinct p14 p54))
(assert (distinct p3 p15))
(assert (distinct p25 p62))
(assert (distinct p15 p55))
(assert (distinct p4 p8))
(assert (distinct p28 p29))
(assert (distinct p2 p8))
(assert (distinct p26 p61))
(assert (distinct p24 p37))
(assert (distinct p5 p13))
(assert (distinct p1 p37))
(assert (distinct p25 p32))
(assert (distinct p30 p31))
(assert (distinct p4 p22))
(assert (distinct p28 p59))
(assert (distinct p2 p34))
(assert (distinct p7 p11))
(assert (distinct p32 p62))
(assert (distinct p5 p23))
(assert (distinct p29 p58))
(assert (distinct p3 p59))
(assert (distinct p33 p63))
(assert (distinct p23 p36))
(assert (distinct p6 p36))
(assert (distinct p30 p33))
(assert (distinct p4 p60))
(assert (distinct p10 p43))
(assert (distinct p34 p60))
(assert (distinct p8 p55))
(assert (distinct p7 p33))
(assert (distinct p31 p36))
(assert (distinct p5 p49))
(assert (distinct p11 p34))
(assert (distinct p9 p54))
(assert (distinct p16 p55))
(assert (distinct p6 p62))
(assert (distinct p12 p37))
(assert (distinct p36 p58))
(assert (distinct p10 p53))
(assert (distinct p8 p29))
(assert (distinct p7 p63))
(assert (distinct p37 p59))
(assert (distinct p11 p56))
(assert (distinct p9 p24))
(assert (distinct p14 p23))
(assert (distinct p10 p31))
(assert (distinct p25 p29))
(assert (distinct p15 p22))
(assert (distinct p11 p30))
(assert (distinct p14 p57))
(assert (distinct p12 p25))
(assert (distinct p15 p60))
(assert (distinct p13 p28))
(assert (distinct p2 p3))
(assert (distinct p14 p35))
(assert (distinct p3 p26))
(assert (distinct p51 p52))
(assert (distinct p1 p62))
(assert (distinct p4 p29))
(assert (distinct p28 p50))
(assert (distinct p52 p55))
(assert (distinct p2 p61))
(assert (distinct p32 p53))
(assert (distinct p22 p56))
(assert (distinct p5 p16))
(assert (distinct p29 p51))
(assert (distinct p3 p32))
(assert (distinct p53 p54))
(assert (distinct p23 p61))
(assert (distinct p6 p31))
(assert (distinct p4 p59))
(assert (distinct p34 p55))
(assert (distinct p8 p62))
(assert (distinct p7 p30))
(assert (distinct p32 p43))
(assert (distinct p5 p58))
(assert (distinct p9 p63))
(assert (distinct p23 p27))
(assert (distinct p6 p49))
(assert (distinct p30 p50))
(assert (distinct p10 p60))
(assert (distinct p7 p52))
(assert (distinct p13 p33))
(assert (distinct p11 p49))
(assert (distinct p14 p30))
(assert (distinct p12 p58))
(assert (distinct p15 p31))
(assert (distinct p13 p59))
(assert (distinct p11 p23))
(assert (distinct p12 p16))
(assert (distinct p1 p29))
(assert (distinct p49 p59))
(assert (distinct p2 p26))
(assert (distinct p24 p51))
(assert (distinct p1 p55))
(assert (distinct p25 p50))
(assert (distinct p15 p35))
(assert (distinct p51 p61))
(assert (distinct p2 p52))
(assert (distinct p52 p62))
(assert (distinct p22 p51))
(assert (distinct p5 p25))
(assert (distinct p56 p57))
(assert (distinct p53 p63))
(assert (distinct p27 p36))
(assert (distinct p23 p58))
(assert (distinct p6 p22))
(assert (distinct p4 p34))
(assert (distinct p54 p60))
(assert (distinct p8 p37))
(assert (distinct p7 p23))
(assert (distinct p32 p34))
(assert (distinct p5 p35))
(assert (distinct p9 p32))
(assert (distinct p33 p35))
(assert (distinct p16 p37))
(assert (distinct p30 p53))
(assert (distinct p11 p54))
(assert (distinct p35 p53))
(assert (distinct p9 p10))
(assert (distinct p16 p59))
(assert (distinct p12 p49))
(assert (distinct p36 p54))
(assert (distinct p62 p63))
(assert (distinct p13 p52))
(assert (distinct p37 p55))
(assert (distinct p11 p12))
(assert (distinct p12 p15))
(assert (distinct p1 p22))
(assert (distinct p49 p60))
(assert (distinct p50 p59))
(assert (distinct p24 p58))
(assert (distinct p3 p8))
(assert (distinct p25 p59))
(assert (distinct p2 p15))
(assert (distinct p24 p32))
(assert (distinct p53 p56))
(assert (distinct p27 p61))
(assert (distinct p1 p34))
(assert (distinct p23 p51))
(assert (distinct p6 p9))
(assert (distinct p57 p61))
(assert (distinct p54 p55))
(assert (distinct p28 p62))
(assert (distinct p7 p12))
(assert (distinct p32 p57))
(assert (distinct p29 p63))
(assert (distinct p3 p52))
(assert (distinct p33 p36))
(assert (distinct p16 p28))
(assert (distinct p6 p35))
(assert (distinct p30 p60))
(assert (distinct p4 p55))
(assert (distinct p8 p50))
(assert (distinct p31 p57))
(assert (distinct p5 p54))
(assert (distinct p35 p58))
(assert (distinct p9 p51))
(assert (distinct p16 p50))
(assert (distinct p36 p61))
(assert (distinct p8 p24))
(assert (distinct p24 p27))
(assert (distinct p25 p26))
(assert (distinct p49 p53))
(assert (distinct p11 p27))
(assert (distinct p14 p52))
(assert (distinct p12 p28))
(assert (distinct p27 p28))
(assert (distinct p25 p60))
(assert (distinct p15 p49))
(assert (distinct p4 p10))
(assert (distinct p28 p31))
(assert (distinct p2 p6))
(assert (distinct p26 p59))
(assert (distinct p5 p11))
(assert (distinct p3 p23))
(assert (distinct p27 p50))
(assert (distinct p1 p59))
(assert (distinct p4 p16))
(assert (distinct p28 p53))
(assert (distinct p2 p32))
(assert (distinct p26 p37))
(assert (distinct p29 p56))
(assert (distinct p3 p61))
(assert (distinct p33 p61))
(assert (distinct p6 p26))
(assert (distinct p4 p62))
(assert (distinct p34 p58))
(assert (distinct p8 p57))
(assert (distinct p7 p35))
(assert (distinct p5 p63))
(assert (distinct p11 p36))
(assert (distinct p9 p52))
(assert (distinct p23 p28))
(assert (distinct p6 p60))
(assert (distinct p10 p51))
(assert (distinct p8 p31))
(assert (distinct p7 p57))
(assert (distinct p37 p57))
(assert (distinct p11 p58))
(assert (distinct p9 p30))
(assert (distinct p12 p61))
(assert (distinct p10 p29))
(assert (distinct p15 p16))
(assert (distinct p11 p16))
(assert (distinct p14 p63))
(assert (distinct p12 p27))
(assert (distinct p1 p26))
(assert (distinct p15 p62))
(assert (distinct p13 p26))
(assert (distinct p14 p33))
(assert (distinct p3 p28))
(assert (distinct p51 p54))
(assert (distinct p1 p60))
(assert (distinct p15 p36))
(assert (distinct p4 p31))
(assert (distinct p2 p59))
(assert (distinct p1 p61))
(assert (distinct p32 p55))
(assert (distinct p22 p62))
(assert (distinct p5 p30))
(assert (distinct p29 p49))
(assert (distinct p3 p34))
(assert (distinct p27 p33))
(assert (distinct p33 p54))
(assert (distinct p23 p63))
(assert (distinct p6 p29))
(assert (distinct p4 p37))
(assert (distinct p54 p59))
(assert (distinct p34 p53))
(assert (distinct p8 p32))
(assert (distinct p7 p24))
(assert (distinct p5 p56))
(assert (distinct p29 p43))
(assert (distinct p9 p61))
(assert (distinct p16 p32))
(assert (distinct p6 p55))
(assert (distinct p10 p58))
(assert (distinct p7 p54))
(assert (distinct p31 p53))
(assert (distinct p11 p51))
(assert (distinct p14 p28))
(assert (distinct p12 p52))
(assert (distinct p15 p25))
(assert (distinct p13 p57))
(assert (distinct p49 p57))
(assert (distinct p2 p24))
(assert (distinct p50 p62))
(assert (distinct p24 p53))
(assert (distinct p3 p5))
(assert (distinct p1 p53))
(assert (distinct p51 p63))
(assert (distinct p4 p6))
(assert (distinct p2 p50))
(assert (distinct p26 p55))
(assert (distinct p52 p56))
(assert (distinct p22 p49))
(assert (distinct p5 p7))
(assert (distinct p56 p59))
(assert (distinct p3 p43))
(assert (distinct p53 p61))
(assert (distinct p23 p52))
(assert (distinct p57 p58))
(assert (distinct p28 p33))
(assert (distinct p32 p36))
(assert (distinct p22 p43))
(assert (distinct p5 p33))
(assert (distinct p29 p36))
(assert (distinct p3 p49))
(assert (distinct p55 p59))
(assert (distinct p59 p60))
(assert (distinct p30 p59))
(assert (distinct p10 p37))
(assert (distinct p8 p13))
(assert (distinct p31 p50))
(assert (distinct p37 p43))
(assert (distinct p61 p62))
(assert (distinct p35 p55))
(assert (distinct p16 p61))
(assert (distinct p12 p51))
(assert (distinct p10 p15))
(assert (distinct p13 p50))
(assert (distinct p37 p53))
(assert (distinct p11 p14))
(assert (distinct p49 p50))
(assert (distinct p50 p57))
(assert (distinct p24 p60))
(assert (distinct p14 p51))
(assert (distinct p3 p10))
(assert (distinct p25 p57))
(assert (distinct p4 p13))
(assert (distinct p2 p13))
(assert (distinct p26 p62))
(assert (distinct p24 p34))
(assert (distinct p3 p16))
(assert (distinct p27 p63))
(assert (distinct p1 p32))
(assert (distinct p25 p35))
(assert (distinct p6 p15))
(assert (distinct p4 p43))
(assert (distinct p28 p56))
(assert (distinct p7 p14))
(assert (distinct p32 p59))
(assert (distinct p29 p61))
(assert (distinct p3 p54))
(assert (distinct p33 p58))
(assert (distinct p16 p30))
(assert (distinct p6 p33))
(assert (distinct p30 p34))
(assert (distinct p23 p43))
(assert (distinct p4 p49))
(assert (distinct p8 p52))
(assert (distinct p7 p36))
(assert (distinct p31 p59))
(assert (distinct p5 p52))
(assert (distinct p11 p33))
(assert (distinct p35 p60))
(assert (distinct p9 p49))
(assert (distinct p16 p52))
(assert (distinct p6 p59))
(assert (distinct p36 p63))
(assert (distinct p10 p54))
(assert (distinct p8 p26))
(assert (distinct p13 p43))
(assert (distinct p37 p62))
(assert (distinct p9 p27))
(assert (distinct p24 p29))
(assert (distinct p14 p16))
(assert (distinct p10 p16))
(assert (distinct p11 p29))
(assert (distinct p26 p31))
(assert (distinct p14 p58))
(assert (distinct p12 p30))
(assert (distinct p27 p30))
(assert (distinct p15 p51))
(assert (distinct p13 p31))
(assert (distinct p2 p4))
(assert (distinct p26 p57))
(assert (distinct p5 p9))
(assert (distinct p3 p25))
(assert (distinct p27 p52))
(assert (distinct p1 p57))
(assert (distinct p25 p36))
(assert (distinct p28 p55))
(assert (distinct p2 p62))
(assert (distinct p26 p35))
(assert (distinct p32 p50))
(assert (distinct p29 p54))
(assert (distinct p3 p63))
(assert (distinct p33 p51))
(assert (distinct p23 p32))
(assert (distinct p6 p24))
(assert (distinct p30 p37))
(assert (distinct p4 p56))
(assert (distinct p34 p56))
(assert (distinct p8 p59))
(assert (distinct p7 p29))
(assert (distinct p31 p32))
(assert (distinct p5 p61))
(assert (distinct p35 p37))
(assert (distinct p9 p58))
(assert (distinct p23 p30))
(assert (distinct p16 p43))
(assert (distinct p12 p33))
(assert (distinct p6 p50))
(assert (distinct p10 p49))
(assert (distinct p7 p59))
(assert (distinct p13 p36))
(assert (distinct p11 p60))
(assert (distinct p9 p28))
(assert (distinct p14 p27))
(assert (distinct p12 p63))
(assert (distinct p10 p27))
(assert (distinct p13 p62))
(assert (distinct p14 p61))
(assert (distinct p1 p24))
(assert (distinct p15 p56))
(assert (distinct p13 p24))
(assert (distinct p2 p31))
(assert (distinct p3 p30))
(assert (distinct p1 p50))
(assert (distinct p51 p56))
(assert (distinct p4 p25))
(assert (distinct p2 p57))
(assert (distinct p22 p60))
(assert (distinct p5 p28))
(assert (distinct p3 p36))
(assert (distinct p27 p35))
(assert (distinct p33 p52))
(assert (distinct p23 p57))
(assert (distinct p54 p57))
(assert (distinct p28 p36))
(assert (distinct p34 p51))
(assert (distinct p8 p34))
(assert (distinct p7 p26))
(assert (distinct p55 p60))
(assert (distinct p9 p35))
(assert (distinct p16 p34))
(assert (distinct p6 p53))
(assert (distinct p30 p54))
(assert (distinct p10 p56))
(assert (distinct p31 p55))
(assert (distinct p11 p53))
(assert (distinct p16 p56))
(assert (distinct p12 p54))
(assert (distinct p15 p27))
(assert (distinct p13 p55))
(assert (distinct p49 p63))
(assert (distinct p2 p22))
(assert (distinct p50 p60))
(assert (distinct p24 p55))
(assert (distinct p3 p7))
(assert (distinct p25 p54))
(assert (distinct p52 p58))
(assert (distinct p26 p53))
(assert (distinct p22 p55))
(assert (distinct p56 p61))
(assert (distinct p53 p59))
(assert (distinct p27 p56))
(assert (distinct p23 p54))
(assert (distinct p6 p10))
(assert (distinct p28 p35))
(assert (distinct p58 p63))
(assert (distinct p29 p34))
(assert (distinct p3 p51))
(assert (distinct p9 p36))
(assert (distinct p59 p62))
(assert (distinct p16 p25))
(assert (distinct p30 p57))
(assert (distinct p4 p52))
(assert (distinct p10 p35))
(assert (distinct p8 p15))
(assert (distinct p31 p60))
(assert (distinct p35 p57))
(assert (distinct p9 p14))
(assert (distinct p16 p63))
(assert (distinct p36 p50))
(assert (distinct p10 p13))
(assert (distinct p37 p51))
(assert (distinct p9 p16))
(assert (distinct p14 p15))
(assert (distinct p10 p23))
(assert (distinct p50 p55))
(assert (distinct p24 p62))
(assert (distinct p14 p49))
(assert (distinct p3 p12))
(assert (distinct p25 p63))
(assert (distinct p15 p52))
(assert (distinct p4 p15))
(assert (distinct p2 p11))
(assert (distinct p26 p60))
(assert (distinct p24 p36))
(assert (distinct p5 p14))
(assert (distinct p27 p49))
(assert (distinct p25 p33))
(assert (distinct p6 p13))
(assert (distinct p28 p58))
(assert (distinct p2 p37))
(assert (distinct p7 p8))
(assert (distinct p32 p61))
(assert (distinct p29 p59))
(assert (distinct p3 p56))
(assert (distinct p33 p56))
(assert (distinct p23 p37))
(assert (distinct p30 p32))
(assert (distinct p4 p51))
(assert (distinct p34 p63))
(assert (distinct p8 p54))
(assert (distinct p31 p37))
(assert (distinct p5 p50))
(assert (distinct p11 p35))
(assert (distinct p35 p62))
(assert (distinct p9 p55))
(assert (distinct p16 p54))
(assert (distinct p6 p57))
(assert (distinct p12 p36))
(assert (distinct p36 p57))
(assert (distinct p10 p52))
(assert (distinct p8 p28))
(assert (distinct p7 p60))
(assert (distinct p37 p60))
(assert (distinct p11 p57))
(assert (distinct p9 p25))
(assert (distinct p24 p31))
(assert (distinct p14 p22))
(assert (distinct p10 p30))
(assert (distinct p25 p30))
(assert (distinct p15 p23))
(assert (distinct p11 p31))
(assert (distinct p26 p29))
(assert (distinct p14 p56))
(assert (distinct p12 p24))
(assert (distinct p15 p61))
(assert (distinct p13 p29))
(assert (distinct p24 p43))
(assert (distinct p14 p34))
(assert (distinct p3 p27))
(assert (distinct p27 p54))
(assert (distinct p51 p53))
(assert (distinct p1 p63))
(assert (distinct p4 p28))
(assert (distinct p28 p49))
(assert (distinct p52 p54))
(assert (distinct p26 p33))
(assert (distinct p32 p52))
(assert (distinct p22 p59))
(assert (distinct p2 p60))
(assert (distinct p29 p52))
(assert (distinct p3 p33))
(assert (distinct p53 p55))
(assert (distinct p33 p49))
(assert (distinct p16 p23))
(assert (distinct p6 p30))
(assert (distinct p23 p34))
(assert (distinct p30 p43))
(assert (distinct p4 p58))
(assert (distinct p34 p54))
(assert (distinct p8 p61))
(assert (distinct p7 p31))
(assert (distinct p31 p34))
(assert (distinct p5 p59))
(assert (distinct p9 p56))
(assert (distinct p33 p43))
(assert (distinct p23 p24))
(assert (distinct p12 p35))
(assert (distinct p10 p63))
(assert (distinct p7 p53))
(assert (distinct p13 p34))
(assert (distinct p11 p62))
(assert (distinct p14 p25))
(assert (distinct p12 p57))
(assert (distinct p10 p25))
(assert (distinct p15 p28))
(assert (distinct p13 p60))
(assert (distinct p12 p23))
(assert (distinct p1 p30))
(assert (distinct p15 p58))
(assert (distinct p13 p22))
(assert (distinct p2 p29))
(assert (distinct p24 p50))
(assert (distinct p14 p37))
(assert (distinct p51 p58))
(assert (distinct p25 p51))
(assert (distinct p15 p32))
(assert (distinct p4 p27))
(assert (distinct p2 p55))
(assert (distinct p52 p61))
(assert (distinct p22 p50))
(assert (distinct p5 p26))
(assert (distinct p27 p37))
(assert (distinct p23 p59))
(assert (distinct p4 p33))
(assert (distinct p54 p63))
(assert (distinct p34 p49))
(assert (distinct p8 p36))
(assert (distinct p32 p33))
(assert (distinct p31 p43))
(assert (distinct p5 p36))
(assert (distinct p55 p62))
(assert (distinct p9 p33))
(assert (distinct p16 p36))
(assert (distinct p6 p43))
(assert (distinct p30 p52))
(assert (distinct p34 p43))
(assert (distinct p7 p50))
(assert (distinct p31 p49))
(assert (distinct p11 p55))
(assert (distinct p35 p50))
(assert (distinct p9 p11))
(assert (distinct p16 p58))
(assert (distinct p36 p53))
(assert (distinct p8 p16))
(assert (distinct p13 p53))
(assert (distinct p11 p13))
(assert (distinct p12 p14))
(assert (distinct p1 p23))
(assert (distinct p49 p61))
(assert (distinct p50 p58))
(assert (distinct p24 p57))
(assert (distinct p3 p9))
(assert (distinct p25 p52))
(assert (distinct p2 p14))
(assert (distinct p26 p51))
(assert (distinct p22 p53))
(assert (distinct p56 p63))
(assert (distinct p53 p57))
(assert (distinct p27 p58))
(assert (distinct p1 p35))
(assert (distinct p57 p62))
(assert (distinct p6 p8))
(assert (distinct p28 p61))
(assert (distinct p8 p43))
(assert (distinct p7 p13))
(assert (distinct p32 p56))
(assert (distinct p58 p61))
(assert (distinct p3 p53))
(assert (distinct p33 p37))
(assert (distinct p16 p27))
(assert (distinct p6 p34))
(assert (distinct p30 p63))
(assert (distinct p4 p54))
(assert (distinct p10 p33))
(assert (distinct p8 p49))
(assert (distinct p7 p43))
(assert (distinct p31 p62))
(assert (distinct p5 p55))
(assert (distinct p35 p59))
(assert (distinct p9 p12))
(assert (distinct p16 p49))
(assert (distinct p36 p60))
(assert (distinct p10 p11))
(assert (distinct p8 p23))
(assert (distinct p37 p49))
(assert (distinct p9 p22))
(assert (distinct p24 p26))
(assert (distinct p25 p27))
(assert (distinct p49 p54))
(assert (distinct p11 p24))
(assert (distinct p50 p53))
(assert (distinct p14 p55))
(assert (distinct p3 p14))
(assert (distinct p27 p29))
(assert (distinct p25 p61))
(assert (distinct p15 p54))
(assert (distinct p4 p9))
(assert (distinct p28 p30))
(assert (distinct p2 p9))
(assert (distinct p26 p58))
(assert (distinct p5 p12))
(assert (distinct p27 p51))
(assert (distinct p1 p36))
(assert (distinct p4 p23))
(assert (distinct p28 p52))
(assert (distinct p2 p35))
(assert (distinct p26 p36))
(assert (distinct p7 p10))
(assert (distinct p32 p63))
(assert (distinct p5 p22))
(assert (distinct p29 p57))
(assert (distinct p3 p58))
(assert (distinct p33 p62))
(assert (distinct p6 p37))
(assert (distinct p4 p61))
(assert (distinct p34 p61))
(assert (distinct p8 p56))
(assert (distinct p7 p32))
(assert (distinct p11 p37))
(assert (distinct p9 p53))
(assert (distinct p23 p29))
(assert (distinct p6 p63))
(assert (distinct p36 p59))
(assert (distinct p10 p50))
(assert (distinct p8 p30))
(assert (distinct p7 p62))
(assert (distinct p37 p58))
(assert (distinct p11 p59))
(assert (distinct p9 p31))
(assert (distinct p12 p60))
(assert (distinct p10 p28))
(assert (distinct p25 p28))
(assert (distinct p26 p27))
(assert (distinct p14 p62))
(assert (distinct p12 p26))
(assert (distinct p1 p27))
(assert (distinct p15 p63))
(assert (distinct p13 p27))
(assert (distinct p14 p32))
(assert (distinct p3 p29))
(assert (distinct p51 p55))
(assert (distinct p15 p37))
(assert (distinct p4 p30))
(assert (distinct p28 p51))
(assert (distinct p2 p58))
(check-sat)
(exit)
