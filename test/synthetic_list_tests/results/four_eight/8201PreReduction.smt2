
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
(assert (and (is-Cons l3) (= l0 Nil) (= l2 l2) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (and (is-Nil l0) (is-Cons Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l1 l3) (= l3 Nil)) )
(assert (and (is-Nil l1) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Nil l2) )
(check-sat)
