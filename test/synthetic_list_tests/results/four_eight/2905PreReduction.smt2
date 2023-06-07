
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
(assert (and (= l3 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (and (= l3 l1) (= l3 Nil) (= l1 l0) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l3 l0)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (is-Nil l2)) )
(assert (and (is-Nil l2) (is-Nil Nil) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
