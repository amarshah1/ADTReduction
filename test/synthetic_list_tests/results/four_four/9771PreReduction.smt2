
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
(assert (or (is-Cons Nil) (= l1 l1) (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l2 l0)) )
(assert (and (= l2 l2) (is-Nil l2) (is-Cons Nil) (is-Cons l1)) )
(assert (is-Nil Nil) )
(check-sat)
