
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
(assert (not (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (not (= l1 l2)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l2 Nil) (is-Cons l1) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l1 l0) (is-Nil l0)) )
(assert (or (is-Cons l1) (is-Cons l0) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (= l3 l3) (is-Cons Nil)) )
(check-sat)