
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
(assert (is-Cons l1) )
(assert (= l3 l2) )
(assert (is-Nil l0) )
(assert (or (= l3 Nil) (is-Cons l1) (= l3 Nil) (is-Nil Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil l0) (is-Cons Nil) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l3 l3) (= l1 Nil)) )
(assert (or (= l3 l0) (= l2 Nil) (is-Cons l0) (= l1 Nil)) )
(check-sat)
