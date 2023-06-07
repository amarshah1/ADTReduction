
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
(assert (not (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (is-Cons l3)) )
(assert (or (= l2 l0) (= l0 Nil) (= l0 Nil) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Nil l0) (is-Nil l0)) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Cons l2) (= l3 l1)) )
(assert (= l1 Nil) )
(check-sat)
