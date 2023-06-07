
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
(assert (not (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l3 l1) (is-Cons l2)) )
(assert (and (= l3 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (not (= l3 l2)) )
(assert (is-Cons l3) )
(assert (= l1 Nil) )
(assert (not (is-Cons l1)) )
(check-sat)
