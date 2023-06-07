
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
(assert (not (= l0 Nil)) )
(assert (= l3 l1) )
(assert (or (is-Nil l0) (is-Cons l0) (= l3 l0) (= l3 l3)) )
(assert (or (is-Cons l1) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
