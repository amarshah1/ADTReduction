
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
(assert (= l3 Nil) )
(assert (or (= l0 l3) (is-Cons l0) (= l2 Nil) (= l0 Nil)) )
(assert (and (is-Nil l0) (= l1 Nil) (= l1 l3)) )
(assert (= l1 l3) )
(check-sat)