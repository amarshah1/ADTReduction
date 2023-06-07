
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
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Cons l1) (is-Nil l2)) )
(assert (and (= l1 Nil) (is-Cons l2) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (not (is-Cons l1)) )
(assert (not (= l2 l0)) )
(assert (= l2 Nil) )
(check-sat)