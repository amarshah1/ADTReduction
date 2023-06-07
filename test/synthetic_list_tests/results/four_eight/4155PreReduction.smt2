
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
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l0 Nil) (= l1 l2) (= l1 Nil)) )
(assert (and (= l3 l2) (is-Cons l2) (is-Nil l1) (= l0 l1)) )
(check-sat)
