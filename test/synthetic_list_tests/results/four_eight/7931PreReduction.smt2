
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
(assert (= l3 Nil) )
(assert (or (= l1 Nil) (is-Nil l2) (= l3 Nil) (is-Nil l1)) )
(assert (= l3 l2) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (and (= l3 l0) (= l3 l1) (is-Nil Nil) (= l2 l1)) )
(assert (or (= l0 l2) (is-Nil l2) (is-Cons Nil) (= l0 l3)) )
(assert (not (= l3 l2)) )
(check-sat)