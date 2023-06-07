
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
(assert (not (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Nil l0) (= l3 l3) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (= l1 l0) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (= l1 Nil) )
(check-sat)