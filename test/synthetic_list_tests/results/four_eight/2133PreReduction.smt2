
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
(assert (is-Cons l3) )
(assert (not (= l3 l0)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 l3) (= l1 Nil)) )
(assert (and (= l2 l0) (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Nil l2) (= l0 Nil) (is-Nil Nil)) )
(check-sat)
