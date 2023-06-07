
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
(assert (= l1 l1) )
(assert (not (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l1 Nil) (= l1 l2)) )
(assert (is-Cons l1) )
(assert (not (is-Nil l3)) )
(assert (and (= l2 l3) (= l3 Nil) (= l3 l0) (= l2 Nil)) )
(check-sat)