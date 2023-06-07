
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
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (= l3 Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (and (= l2 l1) (= l1 Nil)) )
(assert (or (= l2 Nil) (= l1 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(check-sat)
