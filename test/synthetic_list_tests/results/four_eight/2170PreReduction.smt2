
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
(assert (or (= l0 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil l2)) )
(assert (is-Nil l0) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil) (= l2 l1)) )
(assert (not (is-Cons l3)) )
(assert (is-Cons Nil) )
(check-sat)
