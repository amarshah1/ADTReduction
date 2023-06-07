
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
(assert (and (= l0 l2) (= l2 Nil) (= l1 Nil)) )
(assert (or (= l2 Nil) (= l3 l1) (is-Nil l0) (= l3 l0)) )
(assert (and (= l3 l0) (is-Nil l0) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(check-sat)
