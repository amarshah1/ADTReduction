
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
(assert (not (= l3 l2)) )
(assert (= l3 Nil) )
(assert (and (is-Nil l2) (= l1 Nil) (is-Nil l0)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 l1) (is-Nil Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
