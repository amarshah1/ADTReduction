
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
(assert (= l1 l2) )
(assert (is-Nil l2) )
(assert (or (= l1 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l0 l0) (= l1 l1) (= l3 l3)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l2 Nil)) )
(check-sat)
