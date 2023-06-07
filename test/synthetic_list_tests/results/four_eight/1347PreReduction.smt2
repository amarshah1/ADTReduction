
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
(assert (= l0 l3) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l2 l3) (is-Cons Nil)) )
(assert (and (= l2 l3) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil l2) )
(assert (is-Cons l1) )
(assert (and (= l3 l0) (is-Nil Nil) (= l1 Nil) (is-Cons l3)) )
(assert (and (= l2 l2) (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
