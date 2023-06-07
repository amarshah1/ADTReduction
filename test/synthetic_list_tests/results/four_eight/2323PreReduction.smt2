
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
(assert (or (= l3 Nil) (= l1 l0) (= l3 Nil) (is-Nil l2)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 Nil) (= l2 Nil)) )
(assert (not (= l2 l0)) )
(assert (= l1 l1) )
(assert (or (= l1 Nil) (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
