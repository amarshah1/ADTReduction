
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
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons l1) )
(assert (and (= l2 l0) (is-Cons l3) (= l0 Nil) (= l0 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l2 Nil) (= l3 l1)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(check-sat)
