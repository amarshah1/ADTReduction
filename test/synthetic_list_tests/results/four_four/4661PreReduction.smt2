
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
(assert (= l0 l3) )
(assert (= l0 l3) )
(assert (or (= l2 Nil) (= l2 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
