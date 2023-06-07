
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
(assert (and (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l3 l3) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (= l0 l2) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 Nil) (is-Nil l3) (= l1 l0)) )
(assert (or (= l1 Nil) (= l1 Nil)) )
(check-sat)
