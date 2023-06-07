
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
(assert (or (is-Cons Nil) (is-Nil Nil) (= l0 l2) (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil l0) (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (or (= l2 Nil) (= l1 Nil) (= l2 l0) (= l1 l1)) )
(assert (is-Cons l2) )
(assert (or (= l0 Nil) (= l0 Nil) (= l3 l1)) )
(check-sat)
