
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
(assert (and (= l3 Nil) (= l3 Nil) (is-Nil l1) (is-Cons l3)) )
(assert (or (= l2 Nil) (is-Nil l3) (= l0 Nil)) )
(assert (or (= l2 Nil) (= l1 l2) (= l1 Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons l0) )
(check-sat)
