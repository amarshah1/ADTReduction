
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
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l0 l2) (= l0 l0)) )
(assert (= l3 Nil) )
(assert (and (= l0 Nil) (= l2 Nil) (= l0 l1)) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l3 Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l3 Nil) (= l0 Nil) (= l1 Nil)) )
(check-sat)
