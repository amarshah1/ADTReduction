
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
(assert (or (is-Cons l3) (is-Nil Nil) (= l2 Nil) (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l1 Nil)) )
(assert (or (is-Nil l2) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(check-sat)
