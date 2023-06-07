
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
(assert (not (is-Cons Nil)) )
(assert (or (is-Cons l3) (= l1 l0) (= l1 Nil) (is-Cons l1)) )
(assert (is-Nil l2) )
(assert (not (= l1 l2)) )
(assert (= l0 Nil) )
(assert (or (is-Nil l0) (= l2 Nil) (= l0 l2)) )
(assert (not (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
