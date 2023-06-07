
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
(assert (or (is-Cons l0) (= l2 l1) (is-Nil l3)) )
(assert (and (= l0 l3) (is-Cons Nil) (= l3 l1)) )
(assert (or (= l0 l3) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l2 l3) (is-Cons Nil)) )
(check-sat)
