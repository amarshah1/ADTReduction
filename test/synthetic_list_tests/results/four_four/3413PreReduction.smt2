
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (= l0 Nil) (is-Cons l0)) )
(assert (or (= l1 l3) (= l2 Nil) (= l0 Nil)) )
(check-sat)
