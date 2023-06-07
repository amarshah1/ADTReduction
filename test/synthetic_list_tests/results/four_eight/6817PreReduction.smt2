
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
(assert (= l1 Nil) )
(assert (or (= l0 Nil) (is-Nil l1) (is-Cons Nil)) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l2 l2) (= l3 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (or (is-Nil Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
