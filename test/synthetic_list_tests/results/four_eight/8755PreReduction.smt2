
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
(assert (not (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l2) (is-Cons l0)) )
(assert (or (is-Cons l1) (is-Nil Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (or (= l0 Nil) (is-Cons l1) (= l1 l3) (= l2 Nil)) )
(check-sat)
