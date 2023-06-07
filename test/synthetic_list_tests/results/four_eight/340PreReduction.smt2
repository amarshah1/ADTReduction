
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
(assert (and (is-Nil Nil) (= l1 Nil) (= l3 Nil) (is-Nil l2)) )
(assert (is-Cons l1) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Nil Nil) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (and (= l2 l3) (= l3 Nil) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (= l2 l1) )
(check-sat)
