
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
(assert (not (= l3 l0)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l1 l2) (= l2 Nil) (is-Nil Nil)) )
(assert (= l1 l3) )
(assert (or (is-Cons l0) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(check-sat)
