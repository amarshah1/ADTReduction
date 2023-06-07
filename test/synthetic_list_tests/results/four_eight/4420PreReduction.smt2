
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
(assert (is-Cons l2) )
(assert (and (= l3 Nil) (= l0 Nil) (is-Nil Nil) (= l1 l1)) )
(assert (not (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (or (= l3 l0) (= l2 l0)) )
(check-sat)
