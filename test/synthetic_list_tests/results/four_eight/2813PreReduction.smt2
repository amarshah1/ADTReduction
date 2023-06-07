
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
(assert (or (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l1 l2) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l0 Nil) (= l0 l3) (= l3 l0)) )
(assert (not (= l2 l0)) )
(assert (= l0 Nil) )
(check-sat)
