
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
(assert (is-Nil l0) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l0 l1)) )
(assert (is-Nil l3) )
(assert (and (= l1 Nil) (is-Cons l2) (= l3 l3) (is-Cons Nil)) )
(assert (and (= l1 l3) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil l1) )
(check-sat)
