
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
(assert (and (is-Nil Nil) (= l3 l3) (is-Nil Nil) (is-Cons Nil)) )
(assert (= l3 l3) )
(assert (or (= l1 l2) (is-Nil l2) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l0 l0) (= l0 Nil) (is-Nil Nil)) )
(check-sat)
