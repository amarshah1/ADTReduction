
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
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l2 l0) (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l2 Nil) (= l1 Nil)) )
(assert (not (is-Nil l1)) )
(assert (is-Nil l3) )
(check-sat)
