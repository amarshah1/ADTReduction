
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
(assert (not (= l3 l3)) )
(assert (and (= l2 Nil) (= l0 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (= l2 l0) )
(assert (or (= l1 Nil) (= l3 Nil)) )
(assert (or (= l3 l3) (= l3 l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (= l3 Nil) )
(check-sat)
