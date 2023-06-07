
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
(assert (or (= l3 Nil) (= l3 Nil)) )
(assert (and (is-Cons l0) (is-Cons Nil)) )
(assert (is-Nil l1) )
(assert (and (= l0 Nil) (= l0 l1)) )
(check-sat)
