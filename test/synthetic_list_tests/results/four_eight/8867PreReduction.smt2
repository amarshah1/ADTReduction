
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
(assert (= l3 l2) )
(assert (or (is-Nil Nil) (is-Cons l1) (= l1 l2) (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (and (= l3 l1) (= l0 l0)) )
(assert (or (is-Cons l3) (= l3 Nil) (= l2 l1)) )
(assert (not (= l3 Nil)) )
(check-sat)
