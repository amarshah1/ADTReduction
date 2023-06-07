
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
(assert (or (is-Nil l0) (= l2 l1) (is-Nil Nil) (is-Cons l3)) )
(assert (and (= l3 l1) (is-Nil l1) (= l2 l2) (= l2 Nil)) )
(assert (or (= l1 l3) (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(check-sat)
