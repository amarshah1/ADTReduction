
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
(assert (or (is-Cons Nil) (= l0 l1) (= l2 Nil) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (and (= l3 l0) (= l2 Nil) (is-Nil l1)) )
(assert (or (= l1 Nil) (= l0 Nil) (= l3 Nil)) )
(check-sat)
