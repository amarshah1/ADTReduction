
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
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Cons l0) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l3 Nil)) )
(check-sat)