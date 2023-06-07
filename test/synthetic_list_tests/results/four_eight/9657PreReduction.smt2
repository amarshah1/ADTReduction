
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
(assert (not (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l3 l1) (= l0 Nil) (= l1 Nil)) )
(assert (or (is-Cons l3) (= l3 l2) (= l0 l2) (= l2 Nil)) )
(assert (= l0 l2) )
(assert (= l0 l2) )
(check-sat)
