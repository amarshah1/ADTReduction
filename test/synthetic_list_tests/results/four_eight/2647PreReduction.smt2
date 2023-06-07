
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
(assert (not (is-Cons l3)) )
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (= l1 l1)) )
(assert (is-Nil l1) )
(assert (and (= l3 l2) (= l0 Nil) (= l1 l0) (= l0 l2)) )
(assert (or (= l3 Nil) (is-Cons l3)) )
(assert (is-Cons Nil) )
(check-sat)