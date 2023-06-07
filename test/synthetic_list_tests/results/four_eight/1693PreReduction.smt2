
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
(assert (or (= l2 Nil) (= l3 l2) (= l0 Nil) (= l0 l0)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (and (= l3 l2) (= l0 l2) (= l1 l2)) )
(assert (= l3 Nil) )
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (= l0 l2)) )
(assert (and (= l0 l2) (= l3 Nil) (= l2 Nil) (= l0 Nil)) )
(check-sat)
