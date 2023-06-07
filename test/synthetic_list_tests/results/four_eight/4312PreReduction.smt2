
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
(assert (and (= l1 Nil) (= l2 Nil) (= l1 l1) (= l0 l3)) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons l0) (is-Cons Nil)) )
(assert (or (= l1 l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l1)) )
(check-sat)