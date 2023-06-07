
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
(assert (or (= l2 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l1 l1)) )
(assert (or (= l1 Nil) (= l3 l0) (is-Nil Nil) (= l3 l1)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (not (is-Cons l3)) )
(assert (= l0 l2) )
(assert (and (= l0 Nil) (= l1 l3) (= l3 Nil)) )
(assert (not (= l3 l0)) )
(check-sat)