
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
(assert (and (is-Cons Nil) (= l0 Nil) (is-Cons l0) (is-Nil Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l2 Nil) (is-Nil l2)) )
(assert (= l1 Nil) )
(assert (or (is-Cons l3) (= l0 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l1 l0)) )
(check-sat)
