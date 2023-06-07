
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
(assert (is-Nil Nil) )
(assert (or (= l1 l2) (is-Cons Nil) (= l1 l3)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l0 Nil) (= l3 l0)) )
(assert (and (= l1 l2) (= l0 l0)) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l2 l1)) )
(assert (not (= l3 l0)) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons l2) )
(check-sat)
