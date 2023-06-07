
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
(assert (or (= l2 Nil) (= l3 l1) (= l2 Nil)) )
(assert (not (is-Cons l0)) )
(assert (and (= l1 Nil) (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (and (= l3 l1) (= l0 Nil) (= l0 l2)) )
(assert (= l3 Nil) )
(assert (or (is-Cons l2) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
