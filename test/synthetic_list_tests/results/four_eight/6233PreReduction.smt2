
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
(assert (and (= l1 Nil) (= l1 Nil) (= l1 Nil) (= l3 l2)) )
(assert (is-Nil l1) )
(assert (or (= l1 Nil) (= l0 l0)) )
(assert (and (= l2 Nil) (= l2 l0) (= l3 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l2) )
(assert (not (= l2 Nil)) )
(assert (= l2 l1) )
(check-sat)
