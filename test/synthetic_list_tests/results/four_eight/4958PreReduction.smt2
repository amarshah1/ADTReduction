
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
(assert (and (= l0 Nil) (= l1 l1) (= l3 l2) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (or (is-Nil Nil) (is-Nil l3) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l0 Nil) (= l0 l2) (is-Cons l0)) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (= l1 l1) )
(assert (is-Nil l0) )
(check-sat)
