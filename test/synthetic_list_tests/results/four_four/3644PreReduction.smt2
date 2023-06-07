
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
(assert (and (is-Cons Nil) (= l2 l1) (= l2 Nil)) )
(assert (is-Nil l3) )
(assert (or (= l0 l0) (= l1 Nil) (is-Cons l3)) )
(assert (not (= l3 Nil)) )
(check-sat)