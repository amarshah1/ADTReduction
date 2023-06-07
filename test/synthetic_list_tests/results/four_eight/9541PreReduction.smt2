
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
(assert (is-Cons l3) )
(assert (and (is-Nil l0) (is-Cons Nil)) )
(assert (is-Cons l2) )
(assert (or (is-Nil Nil) (= l3 l1) (= l3 Nil) (= l3 l2)) )
(assert (= l2 Nil) )
(assert (and (= l0 Nil) (= l0 l1) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)