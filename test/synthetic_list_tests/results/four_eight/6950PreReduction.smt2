
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
(assert (and (is-Nil Nil) (= l0 l3) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil l2) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (and (= l1 l2) (= l3 Nil) (= l3 l3) (= l0 l2)) )
(assert (or (= l1 Nil) (is-Cons l1) (= l2 l2)) )
(assert (= l1 Nil) )
(check-sat)