
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
(assert (and (= l1 Nil) (is-Nil l2)) )
(assert (and (= l3 l0) (= l3 l2) (is-Nil Nil) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l1 l3)) )
(assert (or (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)