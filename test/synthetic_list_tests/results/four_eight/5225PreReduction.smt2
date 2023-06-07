
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
(assert (and (= l1 Nil) (is-Cons l2) (= l0 l0) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (not (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (or (is-Cons Nil) (= l1 l1)) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
