
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
(assert (or (= l2 l0) (= l2 Nil) (= l2 l2)) )
(assert (and (is-Cons l1) (= l3 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l3 l3) (= l2 Nil) (is-Nil l0)) )
(assert (not (is-Cons l2)) )
(assert (or (= l1 l2) (is-Cons Nil) (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l3 l2)) )
(check-sat)
