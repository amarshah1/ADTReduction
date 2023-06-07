
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
(assert (is-Cons l0) )
(assert (and (= l1 Nil) (= l0 l2) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Cons l1) (= l3 Nil) (is-Nil Nil)) )
(assert (or (= l1 l1) (= l3 Nil) (= l0 Nil) (is-Nil l2)) )
(assert (is-Cons l0) )
(assert (is-Cons l3) )
(assert (or (= l1 Nil) (= l1 Nil) (= l0 l1)) )
(assert (and (= l0 l2) (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
