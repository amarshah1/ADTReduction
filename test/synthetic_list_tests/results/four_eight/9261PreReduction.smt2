
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
(assert (and (= l0 Nil) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (and (= l3 l1) (= l1 Nil) (is-Nil Nil) (= l0 l0)) )
(assert (and (is-Cons Nil) (= l2 l1) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (is-Nil Nil) (is-Nil l0)) )
(check-sat)
