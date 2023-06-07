
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
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l3) (= l2 Nil) (= l0 l2)) )
(assert (or (= l1 l1) (= l1 Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l1 Nil) (= l2 l1)) )
(assert (or (is-Cons l1) (is-Cons l0) (= l2 l2) (= l3 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (or (is-Cons l3) (is-Nil Nil)) )
(check-sat)
