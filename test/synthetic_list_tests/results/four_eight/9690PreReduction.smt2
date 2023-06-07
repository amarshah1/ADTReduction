
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
(assert (or (= l1 l3) (= l1 l1)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l2 l3)) )
(assert (or (= l0 Nil) (= l0 l2)) )
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l1 l2) (= l0 l2)) )
(assert (= l3 l0) )
(check-sat)
