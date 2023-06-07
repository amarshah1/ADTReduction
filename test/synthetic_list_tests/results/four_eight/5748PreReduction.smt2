
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
(assert (= l1 Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons l3) (= l3 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (and (is-Nil l1) (= l0 Nil)) )
(assert (or (is-Nil l1) (= l0 l0) (is-Cons l2)) )
(check-sat)
