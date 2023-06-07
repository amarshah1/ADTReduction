
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
(assert (= l0 Nil) )
(assert (or (= l0 Nil) (= l0 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l1 l1) (is-Cons Nil) (is-Cons l3)) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l0)) )
(assert (and (= l0 l3) (= l1 Nil) (is-Cons Nil) (is-Nil l0)) )
(assert (is-Nil Nil) )
(check-sat)
