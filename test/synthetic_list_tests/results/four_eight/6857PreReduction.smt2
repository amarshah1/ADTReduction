
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
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l3 l3) (= l3 Nil)) )
(assert (or (= l3 l1) (= l2 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(check-sat)
