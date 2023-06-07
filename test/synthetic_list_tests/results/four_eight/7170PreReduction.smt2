
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
(assert (not (= l0 Nil)) )
(assert (and (= l0 l0) (= l2 l0) (= l3 Nil)) )
(assert (= l3 l2) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l3 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l0 Nil) (is-Cons l2)) )
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(check-sat)
