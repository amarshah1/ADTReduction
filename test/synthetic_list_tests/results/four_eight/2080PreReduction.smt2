
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
(assert (or (= l0 Nil) (= l1 Nil) (= l2 l2) (= l1 l3)) )
(assert (or (= l0 l2) (= l3 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (= l2 l1) (= l3 l2)) )
(assert (not (is-Cons l3)) )
(assert (= l3 l2) )
(assert (or (= l1 Nil) (= l1 l0) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(check-sat)
