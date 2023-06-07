
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
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (= l2 l2) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l3 l0) (= l2 l1)) )
(assert (not (= l2 Nil)) )
(assert (and (= l1 l1) (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l1 l1) (= l0 Nil)) )
(assert (not (= l1 l0)) )
(check-sat)
