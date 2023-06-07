
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
(assert (not (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (is-Cons l1) (= l2 Nil)) )
(assert (= l0 l0) )
(check-sat)