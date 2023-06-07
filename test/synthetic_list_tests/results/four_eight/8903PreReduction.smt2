
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
(assert (= l3 Nil) )
(assert (and (is-Cons l0) (is-Cons l1) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l3 Nil) (is-Cons l3) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil Nil) (= l1 l2)) )
(assert (and (= l1 Nil) (= l2 l0)) )
(check-sat)
