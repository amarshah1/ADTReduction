
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
(assert (or (= l3 Nil) (is-Cons Nil) (= l0 Nil) (is-Nil l3)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil l3) (= l1 Nil)) )
(assert (and (= l3 l2) (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l1 l0)) )
(assert (= l3 Nil) )
(check-sat)
