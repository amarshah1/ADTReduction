
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
(assert (and (= l2 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons l2) )
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil l0)) )
(assert (and (= l2 l1) (is-Cons l0) (= l0 l3)) )
(assert (not (is-Nil l1)) )
(assert (= l1 Nil) )
(assert (not (is-Cons l1)) )
(check-sat)
