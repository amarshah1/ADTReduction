
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
(assert (or (= l0 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (or (is-Nil l2) (= l2 Nil) (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (not (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(check-sat)
