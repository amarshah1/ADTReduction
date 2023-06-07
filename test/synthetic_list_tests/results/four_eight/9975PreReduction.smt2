
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
(assert (or (= l0 l0) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l1 l3) (= l3 Nil) (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l3) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (= l2 l3)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l1) (= l1 Nil) (is-Cons Nil)) )
(check-sat)