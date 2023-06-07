
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
(assert (or (= l3 l0) (is-Cons Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (= l1 Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
