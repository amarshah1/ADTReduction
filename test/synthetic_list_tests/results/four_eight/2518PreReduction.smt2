
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
(assert (or (= l0 Nil) (is-Cons Nil) (= l2 l1) (= l2 Nil)) )
(assert (or (= l2 l0) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l2 l0)) )
(assert (not (= l0 l2)) )
(assert (or (is-Cons l3) (= l3 l3) (= l1 Nil) (= l2 l1)) )
(assert (not (= l2 l1)) )
(assert (is-Nil Nil) )
(check-sat)
