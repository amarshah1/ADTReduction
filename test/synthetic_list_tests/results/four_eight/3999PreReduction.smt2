
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
(assert (or (= l3 Nil) (is-Cons Nil) (= l3 Nil) (= l1 Nil)) )
(assert (not (is-Cons l0)) )
(assert (not (= l0 Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l3 l0) (= l0 Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l3 l3) (is-Nil Nil) (is-Nil l0) (= l0 Nil)) )
(assert (not (is-Nil l1)) )
(check-sat)