
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
(assert (and (= l0 l3) (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l1 l0) (is-Nil l1)) )
(assert (is-Nil Nil) )
(assert (or (= l2 l2) (= l2 Nil) (is-Nil l2)) )
(assert (= l1 Nil) )
(assert (and (= l1 l0) (= l3 l2) (is-Nil l3) (= l1 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l3 l3) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
