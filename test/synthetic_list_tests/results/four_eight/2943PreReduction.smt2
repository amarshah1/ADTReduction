
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
(assert (and (= l2 l2) (= l2 Nil)) )
(assert (or (= l0 l0) (is-Cons Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l0 l0) (= l3 Nil)) )
(assert (or (= l0 Nil) (= l3 l3)) )
(assert (= l0 Nil) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil l2)) )
(assert (or (is-Cons l1) (= l3 Nil)) )
(check-sat)
