
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
(assert (not (is-Nil l0)) )
(assert (and (is-Cons l0) (is-Cons l2) (is-Cons l2)) )
(assert (not (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (not (is-Nil l0)) )
(assert (or (is-Nil l1) (is-Cons Nil) (= l1 l0) (= l2 Nil)) )
(check-sat)
