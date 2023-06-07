
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
(assert (and (= l2 Nil) (= l2 Nil) (is-Cons l2) (= l2 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (or (is-Nil Nil) (is-Nil l1)) )
(assert (= l0 Nil) )
(assert (or (= l2 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil l1) )
(assert (or (is-Cons l0) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)