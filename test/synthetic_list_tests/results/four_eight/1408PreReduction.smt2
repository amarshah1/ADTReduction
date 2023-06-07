
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
(assert (and (= l0 Nil) (is-Cons l3) (= l2 Nil) (= l1 Nil)) )
(assert (= l2 l0) )
(assert (and (is-Nil l3) (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons l1) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l3 Nil) (= l1 l3) (= l3 l3)) )
(check-sat)
