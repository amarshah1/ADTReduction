
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
(assert (or (= l2 l3) (= l1 Nil) (= l0 l0) (= l2 Nil)) )
(assert (or (is-Nil l2) (= l3 Nil) (is-Nil l1) (= l0 l0)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (and (= l0 l1) (= l2 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (or (= l3 Nil) (is-Cons l1)) )
(assert (or (is-Cons Nil) (= l3 l0)) )
(check-sat)
