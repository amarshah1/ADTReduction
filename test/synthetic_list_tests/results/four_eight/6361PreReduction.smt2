
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
(assert (= l3 Nil) )
(assert (not (= l3 l3)) )
(assert (and (is-Cons l2) (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil l0) (= l1 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (= l3 l0) (= l2 l2)) )
(assert (= l2 l0) )
(assert (is-Nil Nil) )
(check-sat)
