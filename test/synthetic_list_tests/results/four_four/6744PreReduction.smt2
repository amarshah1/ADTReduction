
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
(assert (not (= l3 Nil)) )
(assert (and (is-Nil l1) (= l2 l1) (is-Cons l0) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 l1) (= l2 Nil) (= l2 Nil)) )
(check-sat)
