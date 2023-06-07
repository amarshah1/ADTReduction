
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
(assert (is-Nil l3) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons l2) )
(assert (or (= l3 l1) (is-Nil Nil) (is-Cons l1)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (and (= l1 l0) (= l3 l2)) )
(check-sat)
