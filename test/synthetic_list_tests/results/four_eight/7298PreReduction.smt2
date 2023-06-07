
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
(assert (or (= l0 l1) (= l0 Nil) (= l2 Nil)) )
(assert (and (= l0 l3) (= l2 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 l3) (is-Cons Nil) (= l0 Nil) (= l3 Nil)) )
(assert (= l1 l3) )
(assert (and (= l3 Nil) (= l2 l2) (= l0 l3) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (= l0 l0)) )
(check-sat)
