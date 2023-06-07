
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
(assert (not (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (or (= l1 Nil) (= l2 l1) (= l3 l2)) )
(assert (is-Cons l1) )
(assert (or (is-Cons Nil) (= l2 l2) (is-Nil Nil) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l1 l1) )
(check-sat)
