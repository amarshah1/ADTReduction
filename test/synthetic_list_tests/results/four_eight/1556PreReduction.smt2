
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
(assert (and (is-Cons Nil) (is-Cons l0) (is-Cons l1) (= l1 Nil)) )
(assert (and (= l2 Nil) (= l2 l2) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l0 l2)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(check-sat)
