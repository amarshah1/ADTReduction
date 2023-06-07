
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
(assert (or (= l3 Nil) (= l3 l3) (is-Nil Nil) (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (not (is-Cons l3)) )
(assert (is-Nil l3) )
(assert (= l1 l1) )
(assert (or (is-Cons Nil) (= l1 l1) (= l0 l3)) )
(assert (is-Nil l2) )
(check-sat)
