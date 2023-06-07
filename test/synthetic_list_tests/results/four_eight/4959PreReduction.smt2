
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
(assert (or (= l3 l2) (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l3 l0) (= l1 Nil) (is-Cons l2)) )
(assert (is-Nil Nil) )
(assert (not (= l0 l0)) )
(assert (not (is-Cons l1)) )
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l1 l1) (= l1 Nil) (= l3 Nil) (= l3 l1)) )
(assert (is-Nil l0) )
(check-sat)
