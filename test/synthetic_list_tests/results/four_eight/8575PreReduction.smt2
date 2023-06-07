
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
(assert (or (= l1 Nil) (= l0 l0)) )
(assert (not (is-Cons l0)) )
(assert (or (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (= l1 l0) )
(assert (and (= l3 l0) (= l0 Nil) (= l1 l2) (= l0 Nil)) )
(check-sat)