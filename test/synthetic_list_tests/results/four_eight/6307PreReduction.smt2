
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
(assert (not (= l3 l0)) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (and (= l3 l0) (is-Cons l2) (= l0 Nil) (is-Cons l1)) )
(assert (or (= l3 Nil) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (= l0 l0) )
(assert (is-Nil Nil) )
(check-sat)