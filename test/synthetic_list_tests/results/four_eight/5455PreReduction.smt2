
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
(assert (or (= l2 l2) (= l1 Nil) (is-Cons Nil) (is-Nil l3)) )
(assert (= l3 l0) )
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(assert (and (is-Nil l1) (= l1 Nil) (= l3 Nil) (= l3 l1)) )
(assert (is-Nil l2) )
(assert (not (= l0 Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
