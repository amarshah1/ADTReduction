
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
(assert (not (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l0 Nil) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (not (= l1 l0)) )
(assert (not (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
