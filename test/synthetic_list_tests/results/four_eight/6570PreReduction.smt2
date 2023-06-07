
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
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Nil l0) (= l1 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (= l0 Nil) )
(check-sat)
