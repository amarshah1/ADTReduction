
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
(assert (= l1 Nil) )
(assert (and (= l3 l1) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l1 l2)) )
(assert (= l2 Nil) )
(assert (not (= l3 l2)) )
(assert (= l0 Nil) )
(assert (not (= l0 l1)) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l0 Nil) (= l2 l2)) )
(check-sat)
