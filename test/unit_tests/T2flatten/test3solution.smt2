(declare-fun contrived_variable1 () Real)
(declare-fun contrived_variable0 () Real)
(declare-fun x () Real)
(declare-fun y () Real)
(declare-fun z () Real)
(declare-fun f (Real Real) Real)
(declare-fun g (Real) Real)
(assert (> x contrived_variable0))
(assert (= contrived_variable1 (f y y)))
(assert
 (or (and (< z contrived_variable1) (= contrived_variable0 y))
  (and (not (< z contrived_variable1)) (= contrived_variable0 z))))
(check-sat)