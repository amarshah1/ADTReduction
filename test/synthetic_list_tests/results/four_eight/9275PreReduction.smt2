
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
(assert (or (= l2 Nil) (is-Cons l1) (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l0 l2)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(check-sat)
