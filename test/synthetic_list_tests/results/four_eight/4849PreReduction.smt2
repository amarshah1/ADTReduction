
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
(assert (is-Nil l3) )
(assert (not (is-Nil l2)) )
(assert (or (= l1 Nil) (= l1 Nil) (= l2 Nil) (= l0 l0)) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Nil Nil) (is-Nil l3)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l0 l2) (= l0 l1)) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l1 Nil) (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l3 l2) (= l1 l2) (= l1 l0)) )
(check-sat)
