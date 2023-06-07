
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
(assert (and (= l3 l0) (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l2 l3) (= l3 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l3 l0) (= l0 Nil)) )
(assert (not (is-Cons l2)) )
(assert (not (= l3 Nil)) )
(check-sat)
