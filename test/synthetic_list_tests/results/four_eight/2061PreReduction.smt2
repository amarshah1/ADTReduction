
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
(assert (and (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(assert (and (= l0 l3) (= l1 l1) (= l3 l3)) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (= l3 Nil) (= l0 l3) (= l2 Nil)) )
(assert (and (= l2 Nil) (= l0 Nil) (= l3 Nil)) )
(assert (is-Cons l2) )
(check-sat)