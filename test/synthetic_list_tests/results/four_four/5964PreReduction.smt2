
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
(assert (or (= l1 l0) (= l0 l1) (= l1 Nil) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l3 l3) (is-Cons l3)) )
(check-sat)
