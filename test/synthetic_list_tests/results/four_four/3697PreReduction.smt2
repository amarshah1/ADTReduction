
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
(assert (and (= l0 Nil) (= l2 l1)) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Nil l3)) )
(assert (or (is-Cons l3) (is-Nil l0) (= l3 Nil) (= l3 l2)) )
(assert (or (is-Cons Nil) (= l1 l1) (is-Cons Nil)) )
(check-sat)
