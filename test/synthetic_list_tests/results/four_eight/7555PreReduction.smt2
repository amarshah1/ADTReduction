
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
(assert (and (= l3 l2) (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l1) (is-Cons Nil)) )
(assert (is-Nil l0) )
(assert (or (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Cons l0)) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)