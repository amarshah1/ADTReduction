
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
(assert (is-Nil Nil) )
(assert (or (= l2 l3) (= l1 l0)) )
(assert (and (= l0 Nil) (is-Nil l2)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l3 l3) (is-Cons l0)) )
(check-sat)
