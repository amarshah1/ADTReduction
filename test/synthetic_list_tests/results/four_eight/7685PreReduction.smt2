
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
(assert (not (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (and (= l1 Nil) (= l2 l2) (= l0 Nil)) )
(assert (or (= l2 l2) (= l1 l3) (is-Nil Nil) (= l3 Nil)) )
(check-sat)
