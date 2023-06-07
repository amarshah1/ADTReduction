
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
(assert (is-Nil l1) )
(assert (not (is-Nil Nil)) )
(assert (or (= l0 l3) (= l2 Nil) (is-Nil l3) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l2 l1) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Nil l0) (is-Cons Nil) (is-Cons Nil) (is-Nil l2)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l3 l1) (= l1 l1)) )
(assert (= l2 l1) )
(check-sat)
