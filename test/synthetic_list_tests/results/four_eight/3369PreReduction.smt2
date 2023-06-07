
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
(assert (is-Cons Nil) )
(assert (is-Cons l2) )
(assert (= l3 Nil) )
(assert (is-Nil l1) )
(assert (or (= l1 l3) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)