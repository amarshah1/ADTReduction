
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
(assert (= l2 Nil) )
(assert (or (= l2 Nil) (= l3 Nil) (= l0 l3)) )
(assert (not (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Nil l2)) )
(assert (not (is-Nil l0)) )
(check-sat)
