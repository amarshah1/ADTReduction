
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
(assert (= l1 l3) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (and (= l2 Nil) (= l2 Nil) (= l0 Nil) (= l2 l2)) )
(assert (is-Nil l2) )
(assert (or (is-Cons l0) (= l3 l3)) )
(assert (is-Cons l0) )
(assert (= l1 l1) )
(check-sat)
