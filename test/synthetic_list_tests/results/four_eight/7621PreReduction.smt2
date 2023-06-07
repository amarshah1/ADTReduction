
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
(assert (and (= l2 Nil) (is-Nil l3)) )
(assert (and (is-Cons Nil) (= l3 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l3 l3) (= l0 Nil) (is-Nil Nil)) )
(check-sat)
