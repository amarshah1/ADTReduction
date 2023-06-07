
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
(assert (is-Cons l2) )
(assert (= l2 Nil) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l1 l0) (is-Cons Nil)) )
(assert (or (= l1 l1) (= l1 Nil) (= l2 l3) (= l2 Nil)) )
(assert (and (= l2 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l2 Nil) (= l2 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l1 Nil) (= l1 l0)) )
(check-sat)
