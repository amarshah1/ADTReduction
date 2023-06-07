
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
(assert (and (= l3 l3) (is-Cons Nil) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (= l3 l2) )
(check-sat)
