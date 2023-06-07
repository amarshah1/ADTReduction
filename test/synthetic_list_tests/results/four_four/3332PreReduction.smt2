
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
(assert (and (= l3 l0) (= l0 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 l1) (= l0 l1) (= l2 l1) (is-Cons Nil)) )
(check-sat)
