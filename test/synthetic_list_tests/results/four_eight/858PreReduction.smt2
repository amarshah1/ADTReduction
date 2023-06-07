
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
(assert (or (= l0 Nil) (is-Nil l3) (= l3 Nil) (= l1 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (= l2 Nil) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Cons Nil) (= l0 Nil)) )
(check-sat)
