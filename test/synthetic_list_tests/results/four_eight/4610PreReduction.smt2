
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
(assert (or (is-Nil Nil) (= l2 Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons l2) )
(assert (and (= l1 l2) (= l3 Nil) (is-Nil Nil) (= l3 l0)) )
(assert (not (is-Cons l2)) )
(assert (or (is-Nil Nil) (= l2 Nil) (= l3 Nil) (is-Nil l2)) )
(assert (is-Nil Nil) )
(check-sat)
