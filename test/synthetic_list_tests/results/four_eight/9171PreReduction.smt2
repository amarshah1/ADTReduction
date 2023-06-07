
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
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l3 l2) (= l3 Nil) (= l3 l0)) )
(assert (not (= l1 l3)) )
(assert (= l2 Nil) )
(assert (not (= l3 l3)) )
(assert (not (= l3 Nil)) )
(assert (not (= l2 l0)) )
(assert (not (= l1 l0)) )
(check-sat)