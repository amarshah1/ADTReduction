
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
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l3 l2)) )
(assert (is-Cons l0) )
(assert (and (= l0 l0) (= l2 l1)) )
(assert (= l3 l1) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)