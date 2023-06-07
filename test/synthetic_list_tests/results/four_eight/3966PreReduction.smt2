
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
(assert (not (is-Nil Nil)) )
(assert (not (= l1 l2)) )
(assert (is-Nil l2) )
(assert (or (= l0 l1) (is-Nil Nil) (= l3 l2) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (or (is-Cons Nil) (is-Cons l2) (is-Cons l1) (= l0 l2)) )
(assert (is-Nil l3) )
(check-sat)
