
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
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l1 l2) (is-Nil l2)) )
(assert (not (is-Nil l0)) )
(assert (= l2 l0) )
(assert (not (is-Nil l1)) )
(assert (is-Cons l2) )
(assert (and (= l0 Nil) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
