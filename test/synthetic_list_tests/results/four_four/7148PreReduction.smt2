
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
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l0 l3)) )
(assert (and (= l1 Nil) (= l0 Nil)) )
(assert (and (is-Nil l3) (= l3 l0) (is-Cons Nil)) )
(check-sat)
