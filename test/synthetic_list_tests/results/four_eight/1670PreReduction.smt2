
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
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l1 Nil) (= l2 l3)) )
(assert (or (= l0 l1) (= l3 Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 l2) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons l3) )
(check-sat)