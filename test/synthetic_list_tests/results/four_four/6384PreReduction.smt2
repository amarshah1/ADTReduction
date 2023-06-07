
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
(assert (or (= l2 Nil) (is-Nil l0) (= l2 Nil)) )
(assert (and (is-Nil l0) (is-Cons l0) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (is-Nil l0) (= l1 l0) (= l1 Nil)) )
(check-sat)
