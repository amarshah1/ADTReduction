
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
(assert (and (= l3 Nil) (= l3 l1) (= l2 Nil)) )
(assert (not (is-Cons l1)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (not (= l0 l0)) )
(assert (or (is-Cons Nil) (= l3 l2) (= l3 Nil) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
