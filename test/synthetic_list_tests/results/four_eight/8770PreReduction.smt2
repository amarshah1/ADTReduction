
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
(assert (and (= l2 Nil) (is-Cons l0) (= l3 Nil) (is-Cons Nil)) )
(assert (is-Cons l2) )
(assert (or (= l0 Nil) (is-Nil l3) (= l2 Nil) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l3 Nil) (= l1 Nil) (is-Cons Nil) (= l2 Nil)) )
(check-sat)
