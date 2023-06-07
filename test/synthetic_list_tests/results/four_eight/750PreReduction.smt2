
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
(assert (= l1 l2) )
(assert (= l3 Nil) )
(assert (is-Cons l1) )
(assert (or (= l1 l3) (= l1 l1) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (not (= l1 Nil)) )
(check-sat)
