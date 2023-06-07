
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
(assert (and (= l2 Nil) (= l2 Nil)) )
(assert (= l2 l3) )
(assert (is-Nil Nil) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (is-Nil l3)) )
(assert (or (= l0 Nil) (= l2 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l2 l3)) )
(check-sat)
