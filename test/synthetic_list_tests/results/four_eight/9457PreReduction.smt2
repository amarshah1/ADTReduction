
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
(assert (is-Nil l0) )
(assert (and (is-Cons l3) (is-Cons Nil) (is-Cons l0)) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (not (= l1 l3)) )
(assert (not (= l0 l3)) )
(assert (= l1 l0) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l1 l3) (= l2 Nil)) )
(check-sat)