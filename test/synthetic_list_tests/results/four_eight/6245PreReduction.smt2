
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
(assert (and (= l3 l1) (is-Cons l0) (= l3 Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l2 l2) (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l2 l1) (= l1 l0) (is-Nil Nil)) )
(assert (is-Cons l0) )
(assert (is-Cons l2) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Nil l3) (= l1 Nil)) )
(assert (= l1 Nil) )
(check-sat)