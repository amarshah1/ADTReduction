
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
(assert (or (= l1 Nil) (= l1 Nil) (is-Cons Nil) (is-Nil l0)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (is-Cons l3) (is-Nil l1)) )
(assert (not (= l1 Nil)) )
(assert (or (= l3 Nil) (= l3 l1) (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(check-sat)
