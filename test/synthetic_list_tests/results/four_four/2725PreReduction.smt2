
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
(assert (or (= l0 l0) (= l0 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l0 l2) (= l0 Nil)) )
(assert (or (= l2 Nil) (= l2 l2) (= l3 Nil)) )
(check-sat)
