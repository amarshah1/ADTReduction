
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
(assert (or (= l0 l2) (= l2 Nil) (= l2 l1) (= l3 Nil)) )
(assert (and (is-Cons Nil) (is-Nil l0)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (not (= l2 l1)) )
(assert (= l1 l3) )
(assert (not (is-Cons Nil)) )
(check-sat)
