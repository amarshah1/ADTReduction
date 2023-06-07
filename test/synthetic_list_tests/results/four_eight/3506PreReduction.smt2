
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
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (= l3 Nil) (is-Nil l3)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Cons l2) (is-Cons Nil)) )
(assert (is-Cons l0) )
(assert (= l3 Nil) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l1 l3) (= l0 Nil)) )
(check-sat)
