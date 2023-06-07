
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
(assert (is-Cons Nil) )
(assert (and (= l3 l2) (is-Nil Nil) (= l0 l2) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l0 l1)) )
(assert (not (= l1 l2)) )
(assert (is-Nil l0) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(check-sat)
