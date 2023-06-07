
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
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l3 l1) (is-Nil Nil) (is-Cons l2)) )
(assert (not (= l1 l2)) )
(assert (= l0 Nil) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(check-sat)
