
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
(assert (or (is-Nil l3) (= l2 l3) (is-Cons Nil) (is-Cons l2)) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (is-Nil l3) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (or (is-Nil l1) (= l2 Nil) (= l3 Nil) (is-Cons l2)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
