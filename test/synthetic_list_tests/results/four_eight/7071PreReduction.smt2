
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
(assert (not (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil) (= l1 l0) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 l1) (= l1 l3) (= l0 Nil) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Cons l3)) )
(assert (and (is-Cons l3) (is-Nil l2) (= l0 Nil) (is-Cons l3)) )
(assert (= l0 Nil) )
(assert (is-Nil l1) )
(check-sat)
