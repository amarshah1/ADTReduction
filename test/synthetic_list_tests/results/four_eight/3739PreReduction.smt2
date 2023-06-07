
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
(assert (is-Nil l3) )
(assert (or (is-Nil l0) (= l2 l3)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil l2) )
(assert (not (= l3 Nil)) )
(assert (= l1 l3) )
(assert (= l1 Nil) )
(check-sat)
