
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
(assert (not (= l0 Nil)) )
(assert (or (= l2 l2) (is-Nil l1) (is-Cons l0) (= l1 Nil)) )
(assert (and (= l3 Nil) (is-Nil l3) (is-Cons Nil) (= l1 l1)) )
(check-sat)
