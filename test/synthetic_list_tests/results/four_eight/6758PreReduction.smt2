
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
(assert (and (is-Cons l3) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (and (= l3 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Cons l0) )
(assert (not (= l3 l3)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
