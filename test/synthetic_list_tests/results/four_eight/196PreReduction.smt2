
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
(assert (or (is-Cons Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (not (is-Cons l0)) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(check-sat)
