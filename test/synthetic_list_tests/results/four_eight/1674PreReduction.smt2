
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
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (is-Nil l1) )
(assert (and (= l0 Nil) (= l2 l2) (is-Cons Nil) (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (= l1 l2) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(check-sat)
