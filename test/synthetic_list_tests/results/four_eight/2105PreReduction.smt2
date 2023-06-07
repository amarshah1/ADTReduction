
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
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Nil l3) (= l0 Nil) (is-Nil Nil)) )
(assert (not (is-Cons l0)) )
(assert (and (= l1 Nil) (= l2 Nil) (= l1 l1) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l3 Nil) (= l1 Nil) (is-Nil l1)) )
(assert (or (= l2 Nil) (= l3 l3) (= l3 Nil) (= l2 l3)) )
(assert (is-Nil Nil) )
(check-sat)