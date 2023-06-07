
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
(assert (= l0 l0) )
(assert (or (= l3 l2) (= l3 Nil)) )
(assert (is-Nil l2) )
(assert (and (is-Nil l1) (is-Cons l3) (= l3 Nil) (is-Cons l1)) )
(check-sat)
