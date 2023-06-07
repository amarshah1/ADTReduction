
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
(assert (= l1 l2) )
(assert (or (= l3 Nil) (= l1 l3)) )
(assert (or (is-Nil l3) (= l3 Nil) (= l2 Nil)) )
(assert (or (= l2 Nil) (= l2 l0) (is-Cons l3)) )
(check-sat)
