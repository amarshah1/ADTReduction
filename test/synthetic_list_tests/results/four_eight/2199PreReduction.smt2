
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
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (= l2 l3)) )
(assert (is-Cons l0) )
(assert (= l3 l3) )
(assert (or (= l1 Nil) (= l1 Nil) (= l0 l2)) )
(assert (or (is-Cons Nil) (= l0 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (and (= l3 l1) (= l2 l3) (= l2 l0)) )
(check-sat)