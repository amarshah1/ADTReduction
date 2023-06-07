
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
(assert (not (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l2 l2) )
(assert (is-Nil l3) )
(assert (and (= l0 Nil) (is-Cons l0) (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (= l3 Nil) )
(check-sat)
