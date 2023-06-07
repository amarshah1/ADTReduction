
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
(assert (and (is-Cons Nil) (= l1 l1) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l1 l1) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Nil l1) )
(assert (= l0 Nil) )
(assert (not (= l0 Nil)) )
(assert (not (= l0 l2)) )
(assert (or (= l1 Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
