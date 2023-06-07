
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
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(assert (not (= l2 l3)) )
(assert (= l3 Nil) )
(assert (not (= l0 l0)) )
(assert (= l1 l2) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(check-sat)
