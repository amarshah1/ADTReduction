
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
(assert (or (= l1 l2) (= l2 Nil) (= l3 Nil)) )
(assert (or (is-Cons Nil) (is-Nil l1) (= l3 Nil) (= l0 l2)) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l3 l1) (is-Nil l3) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (= l3 l2)) )
(assert (not (= l0 l2)) )
(assert (= l2 Nil) )
(assert (or (is-Nil Nil) (= l3 l1)) )
(check-sat)