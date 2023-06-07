
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
(assert (= l1 Nil) )
(assert (= l2 Nil) )
(assert (or (= l1 l2) (= l0 l2) (= l0 Nil) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l1) (= l2 Nil) (is-Nil Nil) (= l2 l1)) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l0 l3) (is-Nil l0)) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(check-sat)
