
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
(assert (= l2 Nil) )
(assert (is-Cons l2) )
(assert (or (= l3 l3) (= l2 Nil) (= l3 Nil)) )
(assert (= l0 l1) )
(assert (or (is-Cons Nil) (= l0 l2) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l3 l2) )
(assert (and (= l1 l0) (is-Cons Nil)) )
(check-sat)
