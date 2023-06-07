
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
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil l1) )
(assert (not (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l0 l3) (is-Nil Nil) (= l0 l1)) )
(check-sat)
