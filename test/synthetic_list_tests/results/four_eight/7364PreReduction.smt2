
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
(assert (and (= l0 l2) (= l2 l2) (= l0 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l1) (= l0 Nil) (= l1 Nil)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l2 l1)) )
(assert (not (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l1 l1) (= l2 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (= l2 l1) )
(check-sat)
