
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
(assert (= l1 l2) )
(assert (is-Cons Nil) )
(assert (not (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil l0) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l2 Nil)) )
(check-sat)
