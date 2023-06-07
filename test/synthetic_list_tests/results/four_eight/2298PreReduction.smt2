
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
(assert (or (= l3 Nil) (= l0 l3)) )
(assert (is-Nil l2) )
(assert (= l1 Nil) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (not (is-Cons l3)) )
(assert (is-Cons Nil) )
(check-sat)
