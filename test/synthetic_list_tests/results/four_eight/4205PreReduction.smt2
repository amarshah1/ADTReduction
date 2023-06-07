
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
(assert (and (= l1 Nil) (= l1 Nil) (= l3 l1)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons l2) )
(assert (is-Nil l0) )
(assert (not (is-Cons l3)) )
(assert (or (= l0 Nil) (= l0 l3) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)
