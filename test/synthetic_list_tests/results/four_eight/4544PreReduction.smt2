
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
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l3 l2) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l0 Nil) (is-Cons l1) (is-Cons l3) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l3 Nil) (= l3 l1)) )
(assert (= l3 l3) )
(assert (not (= l0 l3)) )
(check-sat)
