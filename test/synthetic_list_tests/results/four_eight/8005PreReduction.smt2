
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
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (or (= l1 l1) (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(assert (= l0 l0) )
(assert (= l3 l2) )
(check-sat)