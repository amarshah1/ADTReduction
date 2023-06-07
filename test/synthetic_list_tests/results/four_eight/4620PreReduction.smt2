
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
(assert (= l2 Nil) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l3 l0) (= l1 Nil)) )
(assert (or (= l3 l0) (is-Cons l3) (= l1 Nil)) )
(assert (or (= l1 Nil) (= l1 Nil) (= l3 l3)) )
(assert (= l2 l0) )
(assert (not (= l2 Nil)) )
(check-sat)
