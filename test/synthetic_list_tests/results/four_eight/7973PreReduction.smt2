
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
(assert (or (is-Cons Nil) (= l0 l0)) )
(assert (not (is-Cons l0)) )
(assert (= l0 Nil) )
(assert (not (= l1 Nil)) )
(assert (or (= l2 l0) (= l1 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l1 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
