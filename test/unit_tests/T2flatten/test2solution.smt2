(declare-fun contrived_variable1 () Real)
(declare-fun contrived_variable0 () Real)
(declare-fun contrived_variable2 () Real)
(declare-fun x () Real)
(declare-fun z () Real)
(declare-fun f (Real Real) Real)
(define-fun y () Real 5)
(assert (> x contrived_variable0))
(assert (= contrived_variable1 (f contrived_variable2 y)))
(assert (= contrived_variable0 (+ contrived_variable1 z)))
(assert (= contrived_variable2 (f y x)))
(check-sat)