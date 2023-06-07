
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
(assert (or (= l3 Nil) (is-Cons l1) (= l1 l2) (= l3 Nil)) )
(assert (and (= l1 l3) (= l1 l2) (= l1 Nil) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l3 l2) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons Nil) (is-Nil l2)) )
(assert (is-Cons l0) )
(assert (= l3 Nil) )
(check-sat)
