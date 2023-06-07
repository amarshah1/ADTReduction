
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
(assert (is-Cons Nil) )
(assert (and (is-Nil l2) (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil l2) )
(assert (or (= l1 Nil) (= l0 Nil) (= l3 Nil) (is-Nil l3)) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l1 Nil) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)