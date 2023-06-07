
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
(assert (not (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (is-Nil l3) (= l1 Nil) (is-Nil Nil) (= l3 l2)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons l2) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 l2) (= l1 Nil) (= l1 Nil) (is-Cons l3)) )
(check-sat)
