
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
(assert (not (= l2 l3)) )
(assert (or (is-Nil l0) (= l0 l0)) )
(assert (not (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l2 l0) (= l3 l2)) )
(assert (and (= l0 Nil) (= l2 l3) (= l1 Nil) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (= l2 l1) )
(assert (or (= l1 Nil) (is-Cons l0) (= l1 Nil)) )
(check-sat)
