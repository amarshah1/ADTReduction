
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
(assert (is-Cons l0) )
(assert (not (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l2 Nil)) )
(assert (= l2 l1) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (not (= l1 Nil)) )
(check-sat)
