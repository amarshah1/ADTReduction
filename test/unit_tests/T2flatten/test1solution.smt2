(declare-fun contrived_variable0 () Real)
(declare-fun x () Int)
(declare-fun z () Int)
(define-fun y () Int 5)
(assert (> x contrived_variable0))
(assert (= contrived_variable0 (+ y z)))
(check-sat)