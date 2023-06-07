
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
(assert (or (is-Nil Nil) (= l1 Nil) (= l1 Nil) (is-Cons l0)) )
(assert (or (= l1 Nil) (is-Nil Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l3 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l0 l2)) )
(check-sat)
