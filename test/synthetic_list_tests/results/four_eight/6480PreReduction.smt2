
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
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (and (is-Cons l2) (is-Cons Nil) (= l3 l1) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (= l0 l2) )
(assert (and (= l3 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (= l3 Nil) )
(check-sat)
