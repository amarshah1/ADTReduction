
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
(assert (not (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 Nil) (= l0 Nil)) )
(assert (not (= l1 l3)) )
(assert (not (= l0 Nil)) )
(assert (= l1 l3) )
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Cons l2)) )
(assert (or (= l1 l3) (is-Cons l2) (= l1 Nil)) )
(check-sat)
