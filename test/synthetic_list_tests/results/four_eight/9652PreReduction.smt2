
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
(assert (not (= l1 l2)) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil l0) )
(assert (and (= l2 Nil) (is-Nil l1) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
