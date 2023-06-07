
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
(assert (or (= l3 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l2 l0) (is-Cons l2) (= l2 Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil)) )
(check-sat)
