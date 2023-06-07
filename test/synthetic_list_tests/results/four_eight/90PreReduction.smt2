
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
(assert (or (= l1 l3) (= l0 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons l2) (= l2 l1) (= l0 Nil)) )
(assert (not (= l3 l0)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (not (= l2 l3)) )
(check-sat)
