
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
(assert (and (is-Cons Nil) (= l2 l0) (= l1 l1) (is-Cons Nil)) )
(assert (and (= l0 Nil) (is-Cons l3) (= l0 Nil)) )
(assert (= l0 l3) )
(assert (= l0 l3) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 l0) (= l2 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
