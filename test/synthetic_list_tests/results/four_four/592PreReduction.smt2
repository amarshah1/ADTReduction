
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
(assert (or (= l3 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (is-Cons l3)) )
(assert (and (= l3 Nil) (= l0 l1) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Cons l2) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
