
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
(assert (not (= l1 l2)) )
(assert (not (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l3 Nil) (= l2 l0)) )
(assert (and (= l1 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l2 l2) (is-Cons l0) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(check-sat)
