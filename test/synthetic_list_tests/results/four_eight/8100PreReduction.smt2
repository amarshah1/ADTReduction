
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
(assert (is-Cons l1) )
(assert (is-Cons l1) )
(assert (is-Nil l3) )
(assert (and (is-Nil Nil) (= l3 l0) (= l3 l2) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l2 l2) (= l0 l2)) )
(assert (and (= l3 l3) (is-Nil Nil) (= l1 Nil) (is-Cons l1)) )
(check-sat)