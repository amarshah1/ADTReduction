
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
(assert (and (= l3 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (or (= l3 Nil) (= l3 l2) (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
