
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
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l1 Nil) (= l3 l0)) )
(check-sat)
