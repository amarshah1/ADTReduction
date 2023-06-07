
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
(assert (or (= l2 Nil) (= l0 l1)) )
(assert (is-Cons l1) )
(assert (and (is-Nil l2) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l1 Nil)) )
(check-sat)