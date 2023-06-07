
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
(assert (or (= l0 Nil) (is-Nil l2) (= l0 Nil) (is-Cons Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l3 l3) (= l1 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l0 l2) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 l2) (is-Cons Nil) (= l3 Nil) (= l3 Nil)) )
(check-sat)
