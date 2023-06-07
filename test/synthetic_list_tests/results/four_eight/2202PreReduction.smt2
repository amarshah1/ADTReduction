
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
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (not (= l1 l3)) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l0 l2)) )
(assert (= l2 Nil) )
(assert (or (is-Nil l1) (= l1 l3) (= l3 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
