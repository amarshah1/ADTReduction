
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
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Nil l1) (is-Cons Nil)) )
(assert (and (= l0 l1) (= l2 Nil) (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l0 l3) (= l2 Nil) (= l2 Nil) (is-Cons l2)) )
(check-sat)
