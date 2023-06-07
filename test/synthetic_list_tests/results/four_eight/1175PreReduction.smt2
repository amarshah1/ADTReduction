
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
(assert (or (= l0 l1) (= l0 Nil) (= l1 l2)) )
(assert (= l3 Nil) )
(assert (not (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons l0) )
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil l3) )
(assert (is-Cons l2) )
(check-sat)
