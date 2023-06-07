
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
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l2 l0) (= l3 Nil)) )
(assert (and (= l2 Nil) (is-Cons l3) (= l1 Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (and (= l1 Nil) (= l1 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 l2) )
(check-sat)
