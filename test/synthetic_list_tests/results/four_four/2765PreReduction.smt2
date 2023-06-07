
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
(assert (and (= l0 Nil) (= l3 l3) (= l2 Nil)) )
(assert (or (= l1 l0) (= l2 l1)) )
(assert (or (= l0 Nil) (= l3 Nil) (is-Cons Nil) (= l1 l1)) )
(check-sat)