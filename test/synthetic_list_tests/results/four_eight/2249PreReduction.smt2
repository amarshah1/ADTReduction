
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
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l1 Nil) (is-Nil l1)) )
(assert (is-Cons l3) )
(assert (= l3 Nil) )
(assert (and (= l2 Nil) (= l2 l0)) )
(assert (and (= l3 Nil) (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil) (is-Nil Nil)) )
(check-sat)
