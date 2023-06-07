
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
(assert (and (= l1 l3) (= l2 Nil) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil l2) )
(assert (or (= l0 l1) (is-Cons Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (= l3 l0) )
(assert (or (= l1 l2) (is-Cons Nil)) )
(check-sat)
