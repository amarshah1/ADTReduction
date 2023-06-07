
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
(assert (or (is-Cons Nil) (= l3 l1)) )
(assert (is-Cons l3) )
(assert (and (= l0 l3) (= l0 Nil)) )
(assert (= l2 l2) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
