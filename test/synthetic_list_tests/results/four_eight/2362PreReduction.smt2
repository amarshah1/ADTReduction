
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
(assert (or (is-Nil Nil) (= l1 l2) (= l1 Nil)) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (not (= l3 l1)) )
(assert (is-Nil Nil) )
(assert (not (= l1 l1)) )
(assert (not (is-Nil l1)) )
(assert (or (is-Nil Nil) (= l3 Nil) (is-Nil l1) (is-Nil Nil)) )
(check-sat)
