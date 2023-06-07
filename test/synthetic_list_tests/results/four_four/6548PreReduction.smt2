
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
(assert (and (= l3 Nil) (= l1 l3) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l2 l3) (= l0 l2) (= l2 l3) (= l3 l0)) )
(assert (or (= l3 Nil) (is-Cons l2) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
