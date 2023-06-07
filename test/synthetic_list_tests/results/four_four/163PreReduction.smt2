
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
(assert (or (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (= l1 l3) (= l2 Nil)) )
(check-sat)
