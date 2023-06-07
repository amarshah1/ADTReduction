
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
(assert (or (is-Cons l3) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (= l3 l1) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l1 l3) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l3) (is-Cons l3) (= l0 l0) (is-Nil Nil)) )
(assert (= l2 Nil) )
(check-sat)
