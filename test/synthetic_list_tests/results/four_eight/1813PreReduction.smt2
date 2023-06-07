
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
(assert (and (= l1 Nil) (= l0 l1) (= l1 Nil) (is-Nil Nil)) )
(assert (= l1 l0) )
(assert (and (is-Cons Nil) (is-Cons l0) (= l2 Nil) (is-Cons l0)) )
(assert (= l0 l3) )
(assert (or (= l1 l0) (is-Nil l0)) )
(assert (or (= l0 Nil) (= l1 Nil) (= l3 l1) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l2 l2) (= l2 Nil) (= l1 Nil)) )
(assert (= l2 Nil) )
(check-sat)
