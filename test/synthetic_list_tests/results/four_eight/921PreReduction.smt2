
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
(assert (is-Cons l3) )
(assert (and (= l3 l1) (= l2 Nil) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Cons Nil) (is-Cons l1) (is-Cons l2)) )
(assert (is-Nil l0) )
(check-sat)
