
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
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (or (= l2 Nil) (= l2 l0)) )
(assert (is-Cons l1) )
(assert (or (= l3 l3) (is-Nil Nil) (= l3 Nil)) )
(assert (or (= l3 l3) (= l3 Nil) (is-Cons Nil) (= l1 l3)) )
(assert (and (= l0 Nil) (= l3 l1)) )
(check-sat)
