
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
(assert (not (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (or (= l3 l2) (= l2 Nil) (= l3 l0) (is-Cons Nil)) )
(assert (= l3 l3) )
(assert (= l3 Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(check-sat)