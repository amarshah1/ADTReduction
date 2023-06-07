
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
(assert (and (is-Cons Nil) (= l1 l0)) )
(assert (or (is-Nil Nil) (= l2 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l2 l0)) )
(assert (and (= l3 l1) (= l1 l0) (= l2 l3) (is-Cons Nil)) )
(check-sat)
