
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
(assert (and (= l1 Nil) (= l3 l0) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Cons l3) (is-Nil Nil) (= l0 Nil) (= l3 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(check-sat)
