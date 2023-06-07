
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
(assert (= l0 l1) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 l3) (= l1 Nil) (is-Nil l0)) )
(check-sat)
