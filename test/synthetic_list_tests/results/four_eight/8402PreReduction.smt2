
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
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (= l0 Nil) (is-Nil Nil) (is-Cons l1)) )
(assert (and (= l1 l0) (= l0 Nil) (= l1 l2)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Nil l3) (= l1 Nil)) )
(assert (= l0 l2) )
(check-sat)
