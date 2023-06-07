
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
(assert (not (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 l1) (is-Nil Nil) (= l2 l0)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 l3) (is-Cons Nil) (= l2 l3) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (or (is-Cons l2) (= l1 Nil) (= l1 Nil) (= l2 l0)) )
(check-sat)
