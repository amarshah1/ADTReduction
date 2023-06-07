
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
(assert (not (= l1 l2)) )
(assert (is-Cons l2) )
(assert (not (= l0 Nil)) )
(assert (or (= l2 Nil) (= l3 l0) (= l1 l0)) )
(assert (or (is-Cons l2) (is-Nil l2) (= l1 l0) (is-Cons Nil)) )
(assert (and (= l2 l3) (= l3 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
