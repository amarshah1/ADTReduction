
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
(assert (not (is-Cons Nil)) )
(assert (and (is-Cons l2) (= l2 l3) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 l0) )
(assert (or (is-Cons l1) (= l2 Nil) (= l0 l2)) )
(assert (= l0 l0) )
(assert (not (= l2 l2)) )
(check-sat)
