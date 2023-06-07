
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
(assert (or (= l0 l2) (= l0 Nil) (is-Cons l3) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l1 Nil)) )
(assert (and (= l1 l0) (= l3 Nil) (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Cons l1)) )
(check-sat)
