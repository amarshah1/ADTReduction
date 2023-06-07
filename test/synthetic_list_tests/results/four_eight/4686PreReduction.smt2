
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
(assert (and (is-Cons l0) (= l1 Nil) (is-Nil l0)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l3 Nil) (= l1 l1)) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Cons l1) (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (= l3 l2) )
(check-sat)
