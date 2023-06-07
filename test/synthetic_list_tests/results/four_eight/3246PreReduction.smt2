
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
(assert (and (is-Cons l2) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l2 l3) (= l1 Nil)) )
(assert (not (is-Cons l3)) )
(assert (is-Cons l2) )
(assert (is-Nil l2) )
(assert (and (is-Nil Nil) (is-Cons l1)) )
(assert (and (= l2 Nil) (= l2 l1) (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)