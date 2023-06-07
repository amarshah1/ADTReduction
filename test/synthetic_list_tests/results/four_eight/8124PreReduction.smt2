
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
(assert (and (is-Nil l2) (= l2 Nil) (= l1 Nil) (= l3 l0)) )
(assert (is-Cons l3) )
(assert (and (= l0 Nil) (is-Cons l0) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)