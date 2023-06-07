
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
(assert (is-Nil l0) )
(assert (not (is-Nil l0)) )
(assert (or (is-Nil Nil) (= l2 l2) (= l1 Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (and (= l2 l2) (is-Cons Nil) (= l1 Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(check-sat)
