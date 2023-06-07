
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
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l1 l3) (= l0 l0) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l2) (= l3 Nil) (is-Nil l2)) )
(assert (= l0 Nil) )
(assert (is-Nil l2) )
(check-sat)
