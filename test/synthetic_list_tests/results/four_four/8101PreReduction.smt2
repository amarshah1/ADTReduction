
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
(assert (and (is-Cons Nil) (= l3 l3) (= l0 l3) (is-Cons l0)) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(assert (or (= l0 l2) (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
