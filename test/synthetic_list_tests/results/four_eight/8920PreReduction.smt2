
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
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l3 l1) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (= l1 l0)) )
(assert (and (= l0 Nil) (= l2 l3)) )
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil l2) )
(check-sat)
