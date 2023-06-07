
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
(assert (not (= l0 Nil)) )
(assert (= l1 l1) )
(assert (is-Cons l2) )
(assert (= l3 l1) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (not (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l3 l1)) )
(check-sat)
