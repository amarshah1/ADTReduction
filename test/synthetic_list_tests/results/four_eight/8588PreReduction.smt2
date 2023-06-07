
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
(assert (and (= l2 l2) (is-Cons Nil) (is-Nil l2)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 l1) (= l3 l1)) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
