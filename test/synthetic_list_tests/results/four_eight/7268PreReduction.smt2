
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
(assert (or (= l0 Nil) (= l2 l2) (= l2 l2) (= l1 l2)) )
(assert (= l3 l3) )
(assert (not (is-Cons l0)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l1) (= l3 l2) (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(check-sat)
