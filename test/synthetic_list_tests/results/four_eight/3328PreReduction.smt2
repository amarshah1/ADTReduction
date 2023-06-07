
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
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (is-Nil l2) (= l3 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (= l1 Nil) (= l3 Nil) (= l1 Nil)) )
(check-sat)
