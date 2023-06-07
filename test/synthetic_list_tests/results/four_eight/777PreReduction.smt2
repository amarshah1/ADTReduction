
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
(assert (and (= l1 Nil) (= l0 l0) (= l2 Nil) (= l1 l3)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 l1) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l2 l3)) )
(assert (or (= l3 Nil) (= l2 l3)) )
(check-sat)
