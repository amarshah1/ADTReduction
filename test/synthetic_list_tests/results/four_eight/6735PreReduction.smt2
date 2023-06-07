
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
(assert (is-Cons l0) )
(assert (and (= l3 Nil) (is-Cons l1) (= l3 l1) (is-Cons l0)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (or (= l3 l0) (is-Nil Nil)) )
(assert (or (= l3 Nil) (= l0 l1) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
