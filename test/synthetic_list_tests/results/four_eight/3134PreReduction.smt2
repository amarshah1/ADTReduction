
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
(assert (or (= l2 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l0 l3) (= l1 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (= l1 l2) (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
