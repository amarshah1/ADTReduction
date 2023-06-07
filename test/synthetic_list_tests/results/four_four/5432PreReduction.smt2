
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
(assert (or (= l0 Nil) (is-Cons l3) (= l2 Nil) (= l3 l1)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(check-sat)
