
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
(assert (or (= l2 Nil) (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (= l2 l2) )
(assert (= l2 Nil) )
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (or (= l0 l1) (is-Cons l1)) )
(assert (and (= l1 l3) (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l0 l1) (= l3 Nil) (= l1 l3) (= l0 l3)) )
(assert (not (= l0 Nil)) )
(check-sat)
