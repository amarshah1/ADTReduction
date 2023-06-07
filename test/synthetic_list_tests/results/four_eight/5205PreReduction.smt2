
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
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l0 Nil) (is-Nil Nil) (= l1 l0)) )
(assert (and (= l3 l1) (is-Cons Nil) (= l3 Nil)) )
(assert (not (is-Nil l2)) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(check-sat)
