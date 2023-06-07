
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
(assert (and (= l1 l0) (is-Nil l2)) )
(assert (or (= l3 Nil) (= l3 l3) (is-Nil l2) (is-Cons Nil)) )
(assert (not (is-Nil l0)) )
(assert (or (is-Cons l3) (= l0 Nil) (= l1 Nil) (= l3 Nil)) )
(check-sat)
