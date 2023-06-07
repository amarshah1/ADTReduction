
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
(assert (= l2 l3) )
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l0 l3) (= l2 Nil)) )
(check-sat)
