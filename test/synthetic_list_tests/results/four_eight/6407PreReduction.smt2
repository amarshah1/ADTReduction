
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
(assert (or (= l2 Nil) (= l2 Nil) (= l0 Nil) (= l1 l2)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil l0) )
(assert (and (= l1 l2) (= l1 Nil)) )
(assert (and (= l2 l0) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l3 l1) (= l1 l3)) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l0 l2) (= l2 Nil)) )
(check-sat)
