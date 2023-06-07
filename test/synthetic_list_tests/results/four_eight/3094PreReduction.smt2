
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
(assert (and (is-Cons Nil) (= l2 Nil)) )
(assert (= l0 l0) )
(assert (or (= l1 Nil) (= l3 Nil) (= l3 l2) (= l2 l2)) )
(assert (= l1 l1) )
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(assert (= l3 l2) )
(assert (and (= l3 l3) (= l1 l2) (= l0 l0)) )
(check-sat)
