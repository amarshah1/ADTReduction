
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
(assert (and (is-Cons Nil) (= l0 Nil) (= l2 l2)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l1 Nil) (= l2 Nil)) )
(assert (or (is-Nil l0) (= l2 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons l3) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
