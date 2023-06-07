
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
(assert (= l3 Nil) )
(assert (not (= l3 Nil)) )
(assert (= l3 l0) )
(assert (is-Cons l2) )
(assert (and (= l3 l2) (is-Nil Nil) (= l1 l1) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil l0)) )
(assert (or (= l0 Nil) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
