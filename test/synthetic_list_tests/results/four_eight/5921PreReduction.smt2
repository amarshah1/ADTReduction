
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
(assert (= l2 l1) )
(assert (or (= l1 l0) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l1 l3) (is-Nil l3)) )
(assert (or (is-Cons Nil) (is-Cons Nil)) )
(assert (not (= l0 l0)) )
(assert (= l0 Nil) )
(check-sat)
