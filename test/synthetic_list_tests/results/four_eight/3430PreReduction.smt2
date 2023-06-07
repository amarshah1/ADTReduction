
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
(assert (and (is-Cons l1) (= l2 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l1 l2) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (= l0 Nil) (= l0 l1)) )
(check-sat)