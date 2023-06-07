
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
(assert (is-Cons l0) )
(assert (and (is-Nil l0) (= l1 Nil) (= l0 l1) (= l0 Nil)) )
(assert (= l3 l3) )
(assert (or (= l3 Nil) (= l1 l3) (= l0 Nil)) )
(check-sat)
