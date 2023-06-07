
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
(assert (or (= l0 Nil) (is-Nil Nil) (= l0 l3) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (or (= l1 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (= l3 l2)) )
(assert (and (is-Nil l3) (is-Cons Nil) (= l1 l3) (is-Nil l0)) )
(check-sat)
