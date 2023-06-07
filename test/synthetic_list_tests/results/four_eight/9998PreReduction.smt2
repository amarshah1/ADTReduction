
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
(assert (is-Nil l2) )
(assert (or (= l0 l1) (= l0 Nil) (= l1 Nil) (= l3 l3)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l3 Nil) (= l2 l3)) )
(assert (and (is-Nil l2) (is-Cons Nil) (= l1 l0) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
