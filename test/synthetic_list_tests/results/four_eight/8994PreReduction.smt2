
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
(assert (is-Cons l1) )
(assert (or (= l2 Nil) (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l1 Nil) (= l1 l2)) )
(assert (is-Nil Nil) )
(assert (= l3 l0) )
(assert (and (= l0 Nil) (is-Cons l3) (= l1 l1) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(check-sat)
