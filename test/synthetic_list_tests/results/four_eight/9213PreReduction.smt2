
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
(assert (and (= l1 Nil) (= l3 Nil) (is-Nil Nil) (= l3 l3)) )
(assert (and (= l0 Nil) (= l0 l1)) )
(assert (= l2 Nil) )
(assert (not (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (or (= l2 Nil) (= l1 Nil) (is-Nil l2)) )
(assert (and (is-Nil Nil) (= l3 l3) (is-Cons Nil) (= l0 Nil)) )
(check-sat)
