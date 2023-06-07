
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
(assert (is-Cons l1) )
(assert (and (= l0 l0) (= l1 Nil) (= l0 Nil) (= l0 l0)) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l3 l1)) )
(assert (and (is-Nil l3) (is-Cons Nil) (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l2) (= l1 Nil) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
