
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
(assert (or (is-Cons Nil) (= l1 l1) (= l0 l3) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (or (is-Nil l1) (= l0 l0)) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (= l1 l0) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(check-sat)
