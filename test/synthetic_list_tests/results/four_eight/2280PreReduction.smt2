
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
(assert (or (= l3 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (not (= l3 l0)) )
(assert (not (= l2 Nil)) )
(assert (= l2 l3) )
(assert (= l3 Nil) )
(check-sat)
