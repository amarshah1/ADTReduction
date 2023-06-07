
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
(assert (or (= l3 Nil) (is-Cons l2) (= l2 l0) (= l2 Nil)) )
(assert (not (is-Nil l0)) )
(assert (not (= l3 l2)) )
(assert (and (= l2 l3) (is-Cons Nil) (is-Cons l2) (is-Nil l3)) )
(check-sat)
