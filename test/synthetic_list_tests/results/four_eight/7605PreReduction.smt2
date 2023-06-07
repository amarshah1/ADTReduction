
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
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (or (= l0 Nil) (= l3 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l2) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l2) )
(check-sat)
