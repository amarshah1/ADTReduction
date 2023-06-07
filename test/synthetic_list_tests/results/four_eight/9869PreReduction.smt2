
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
(assert (not (is-Cons Nil)) )
(assert (and (= l2 l2) (= l3 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l3 l1) (is-Nil l2) (= l3 Nil) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(check-sat)
