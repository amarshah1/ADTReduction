
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
(assert (or (is-Nil l2) (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (not (= l3 l2)) )
(assert (= l1 l0) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l1 l3) (is-Cons l0)) )
(assert (is-Nil Nil) )
(check-sat)
