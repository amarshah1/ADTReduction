
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
(assert (and (= l0 Nil) (= l0 l3) (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (or (= l2 l3) (is-Cons l1) (= l0 Nil) (is-Cons Nil)) )
(assert (= l3 Nil) )
(check-sat)