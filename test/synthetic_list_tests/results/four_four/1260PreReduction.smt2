
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
(assert (= l0 Nil) )
(assert (and (= l1 l1) (= l2 l3) (is-Nil Nil) (= l2 Nil)) )
(assert (or (is-Cons l2) (= l3 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l1 Nil) (= l3 l3)) )
(check-sat)
