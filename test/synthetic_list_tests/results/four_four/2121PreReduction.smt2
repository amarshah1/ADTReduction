
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
(assert (not (= l1 l3)) )
(assert (= l1 Nil) )
(assert (not (= l1 Nil)) )
(assert (or (= l0 l0) (is-Cons Nil) (is-Cons l2)) )
(check-sat)
