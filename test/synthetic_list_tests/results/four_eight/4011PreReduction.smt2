
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
(assert (and (= l1 l1) (= l3 l3) (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (or (= l0 Nil) (is-Cons l0) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l1 l3) (= l2 l2)) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Cons l3) (= l2 Nil)) )
(check-sat)
