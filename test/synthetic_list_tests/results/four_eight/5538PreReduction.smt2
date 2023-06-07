
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
(assert (= l0 Nil) )
(assert (and (= l3 l1) (= l0 l0)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l2) )
(assert (or (= l1 Nil) (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (or (is-Cons l3) (= l2 l3) (= l0 Nil) (= l0 l3)) )
(assert (not (is-Cons Nil)) )
(check-sat)
