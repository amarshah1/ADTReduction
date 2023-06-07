
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
(assert (= l1 Nil) )
(assert (and (= l1 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (or (= l0 Nil) (is-Cons l2) (= l1 l3)) )
(assert (= l3 Nil) )
(assert (or (= l2 Nil) (= l0 l2) (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (= l3 l1) )
(assert (is-Cons Nil) )
(check-sat)
