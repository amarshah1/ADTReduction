
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
(assert (or (= l3 l3) (is-Nil Nil) (= l0 l3) (= l3 l0)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 l1) (is-Cons l0)) )
(check-sat)
