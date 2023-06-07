
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
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l0 l3) (= l0 l2)) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(check-sat)
