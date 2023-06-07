
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
(assert (= l1 l2) )
(assert (= l0 Nil) )
(assert (or (= l2 Nil) (is-Cons l1) (is-Nil Nil) (is-Cons l3)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons l1) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l2 l3) (is-Cons Nil)) )
(assert (not (= l0 l0)) )
(check-sat)
