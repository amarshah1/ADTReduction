
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
(assert (or (= l1 Nil) (= l3 Nil) (= l3 l2) (= l1 Nil)) )
(assert (is-Cons l0) )
(assert (and (= l1 l1) (= l1 Nil)) )
(assert (or (= l1 Nil) (is-Nil l1) (= l2 l1) (= l3 l1)) )
(check-sat)
