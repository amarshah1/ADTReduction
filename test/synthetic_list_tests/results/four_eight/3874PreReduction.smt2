
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
(assert (not (= l2 l2)) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons l3)) )
(assert (= l0 l1) )
(assert (is-Cons Nil) )
(assert (not (= l2 l2)) )
(assert (and (= l0 l2) (is-Cons Nil) (= l2 l1) (= l3 Nil)) )
(assert (or (is-Nil Nil) (is-Cons l1) (is-Nil l0)) )
(assert (is-Nil Nil) )
(check-sat)
