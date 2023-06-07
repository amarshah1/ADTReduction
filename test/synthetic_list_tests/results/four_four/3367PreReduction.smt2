
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
(assert (or (is-Cons l0) (= l2 l0) (is-Nil l0)) )
(assert (not (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (is-Cons l1) (= l2 Nil)) )
(check-sat)
