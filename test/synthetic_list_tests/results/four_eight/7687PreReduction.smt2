
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
(assert (or (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Nil l2)) )
(assert (and (= l0 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (is-Cons l3)) )
(assert (or (= l0 l0) (is-Nil l2) (= l3 l3) (= l1 Nil)) )
(assert (= l2 l1) )
(check-sat)