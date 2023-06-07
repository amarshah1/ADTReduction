
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
(assert (or (is-Cons l0) (is-Cons l2) (is-Cons Nil)) )
(assert (and (= l1 l2) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (= l3 l0)) )
(assert (or (= l1 l3) (is-Nil l3) (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (not (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(check-sat)
