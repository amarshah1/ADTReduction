
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
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons l1) (= l3 l2) (is-Cons l3)) )
(assert (and (is-Nil l3) (= l3 l1) (= l1 l0) (= l3 Nil)) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (not (= l2 l1)) )
(check-sat)