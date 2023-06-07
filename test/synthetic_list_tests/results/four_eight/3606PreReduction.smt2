
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
(assert (is-Nil l2) )
(assert (not (= l1 l1)) )
(assert (or (= l0 Nil) (is-Nil Nil) (is-Nil l1) (is-Nil l1)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l1 l2)) )
(assert (and (= l2 l2) (= l3 l1) (= l1 Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (not (is-Cons Nil)) )
(assert (= l2 Nil) )
(check-sat)
