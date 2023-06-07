
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
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (not (= l2 Nil)) )
(assert (or (= l3 l3) (= l0 Nil)) )
(assert (= l1 l1) )
(assert (not (= l0 l3)) )
(assert (or (= l0 l1) (= l3 l3) (= l1 Nil)) )
(check-sat)
