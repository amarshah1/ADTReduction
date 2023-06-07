
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
(assert (and (= l2 Nil) (= l2 l0) (is-Nil l2) (= l3 Nil)) )
(assert (is-Cons l0) )
(assert (not (= l2 Nil)) )
(assert (not (= l3 l2)) )
(check-sat)
