
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
(assert (is-Cons l3) )
(assert (or (is-Nil Nil) (= l2 l2)) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 l1) (= l3 l3) (= l0 Nil) (is-Cons Nil)) )
(check-sat)
