
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
(assert (not (= l0 l3)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l1 l2)) )
(assert (= l0 l2) )
(assert (is-Nil l0) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l0 l2) (is-Cons Nil) (= l2 Nil) (is-Cons l2)) )
(assert (or (is-Nil l2) (is-Nil Nil) (= l0 l0)) )
(check-sat)
