
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
(assert (and (is-Nil Nil) (= l3 Nil) (= l3 l0) (= l2 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l3 l2) (= l1 l0)) )
(assert (not (= l2 Nil)) )
(assert (and (is-Cons l1) (= l3 l3) (= l2 Nil)) )
(assert (not (= l1 l1)) )
(assert (and (is-Cons l3) (= l0 l3) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(check-sat)
