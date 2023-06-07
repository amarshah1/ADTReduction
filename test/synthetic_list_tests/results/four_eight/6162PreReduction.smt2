
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
(assert (and (= l2 l0) (is-Cons Nil)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l2 l2) (= l2 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 l3) (= l3 l1) (= l3 l3)) )
(assert (= l3 Nil) )
(check-sat)
