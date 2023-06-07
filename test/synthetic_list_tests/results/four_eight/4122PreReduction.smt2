
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
(assert (or (is-Cons l0) (= l1 Nil) (= l1 l3) (= l0 l1)) )
(assert (not (is-Nil Nil)) )
(assert (= l0 l2) )
(assert (is-Cons Nil) )
(assert (and (= l0 l1) (is-Cons Nil) (= l2 l2)) )
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
