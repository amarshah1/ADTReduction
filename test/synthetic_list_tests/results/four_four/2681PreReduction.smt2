
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
(assert (and (is-Cons Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l3 l1) (= l2 l0) (is-Cons l0)) )
(assert (or (= l2 Nil) (= l0 l3) (= l1 Nil) (is-Nil l3)) )
(assert (or (= l0 l0) (is-Cons Nil)) )
(check-sat)
