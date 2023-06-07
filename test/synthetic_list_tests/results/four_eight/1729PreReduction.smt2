
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
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (= l0 l0)) )
(assert (is-Cons Nil) )
(assert (or (= l3 l1) (= l2 Nil) (is-Cons l1) (= l0 l0)) )
(assert (or (= l3 l3) (is-Nil l0)) )
(assert (or (= l1 l3) (= l1 Nil) (= l0 l1)) )
(assert (is-Cons Nil) )
(check-sat)
