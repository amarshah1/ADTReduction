
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
(assert (and (= l3 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Nil l1) (= l2 l1) (= l1 Nil)) )
(assert (not (is-Cons l0)) )
(assert (not (= l3 l3)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l0) (is-Nil l3)) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
