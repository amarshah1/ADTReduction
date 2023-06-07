
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
(assert (and (= l0 Nil) (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Cons l1) (= l0 Nil) (is-Cons l2)) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (= l2 Nil) )
(assert (and (= l1 Nil) (= l3 l2) (is-Cons Nil)) )
(check-sat)
