
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
(assert (not (= l0 Nil)) )
(assert (= l0 l3) )
(assert (and (is-Cons l1) (= l2 l1)) )
(assert (is-Cons l1) )
(assert (not (= l3 l2)) )
(assert (and (= l1 Nil) (= l1 l3) (= l3 Nil)) )
(assert (not (= l3 l3)) )
(assert (= l2 Nil) )
(check-sat)
