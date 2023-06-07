
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
(assert (or (is-Cons Nil) (= l1 Nil) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons l1) )
(assert (= l3 l1) )
(assert (is-Nil l0) )
(assert (or (= l0 l0) (is-Cons Nil) (= l1 l3) (= l2 Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l1 Nil)) )
(check-sat)
