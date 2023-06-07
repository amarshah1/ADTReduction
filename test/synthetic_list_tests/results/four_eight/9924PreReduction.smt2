
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
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l0 l3) )
(assert (or (= l3 l3) (= l1 Nil) (is-Nil Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l3) (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (= l0 Nil) )
(check-sat)
