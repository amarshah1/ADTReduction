
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
(assert (and (= l3 l0) (= l0 l3) (= l0 l1)) )
(assert (is-Cons l1) )
(assert (or (is-Cons l1) (is-Nil l1) (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l0) (= l3 l0)) )
(assert (and (= l2 l0) (= l1 Nil) (= l0 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l0 Nil) (= l2 l2)) )
(check-sat)
