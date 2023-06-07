
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
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 l0) (= l1 l2) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (= l1 l2) )
(assert (= l0 Nil) )
(assert (is-Nil l2) )
(check-sat)
