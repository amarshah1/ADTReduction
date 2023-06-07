
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
(assert (not (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l2 Nil) (= l3 l1)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l2) (is-Nil l3) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil l1) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l0 l2) (= l1 l2)) )
(check-sat)
